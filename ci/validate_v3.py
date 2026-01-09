"""
V3 Schema Validation

This module provides strict validation for the V3 schema. Key differences from V2:
- Strict field validation: Any field NOT in allowed sets will FAIL
- No fidelity, difficulty_level, time_in_minutes fields
- Validates against config.yaml for enum values
- Enforces kebab-case slugs and Title Case names
- Enforces purple_chat_link is plugins-only
"""

import os
import re
import sys
from typing import List, Set
from collections import defaultdict
from urllib.parse import urlparse, unquote

from ci.model import (
    DIRECTORY_MAP,
    ContentTypes,
    MARKDOWN_EXTENSION,
    README_FILENAME,
    LOGO_FILE,
    KEBAB_CASE_PATTERN,
    PLUGIN_DESCRIPTION_PREFIX,
    DESCRIPTION_SUFFIX,
    PURPLE_CHAT_URL_PREFIX,
    CONNECTOR_REQUIRED_FIELDS,
    CONNECTOR_OPTIONAL_FIELDS,
    PLUGIN_REQUIRED_FIELDS,
    PLUGIN_OPTIONAL_FIELDS,
    ALL_CONNECTOR_FIELDS,
    ALL_PLUGIN_FIELDS,
)
from ci.data_utils import load_yaml_data
from ci.config_loader import get_valid_values


# ============================================================================
# Utility Functions (reused from V2)
# ============================================================================

def find_markdown_files(directory_path: str) -> List[str]:
    """Find all markdown files in directory, excluding top-level README"""
    markdown_files = []
    for dirpath, _, files in os.walk(directory_path):
        for file_name in files:
            if file_name.endswith(MARKDOWN_EXTENSION):
                if (
                    dirpath == directory_path and
                    file_name == README_FILENAME
                ):
                    continue
                markdown_files.append(os.path.join(dirpath, file_name))
    return markdown_files


def identify_external_links(file_path: str):
    """Check for external links (notion.so) and absolute paths"""
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    lines = content.split("\n")
    invalid_links = []

    for line in lines:
        link_matches = re.findall(r"\[([^\[\]]*)\]\(([^\(\)]*)\)", line)

        for text, link in link_matches:
            link = unquote(link)
            link_url = urlparse(link)

            if link_url.scheme:
                if "notion.so" in link:
                    invalid_links.append(link)
                continue

            if link.startswith("/"):
                invalid_links.append(link)
                continue

            link_path = os.path.join(
                *(file_path.split(os.sep)[:-1] + link.split("/"))
            )
            real_path = os.path.realpath(link_path)
            if not (
                os.path.exists(real_path) and
                real_path.startswith(
                    os.path.realpath(os.path.dirname(file_path))
                )
            ):
                if file_path.endswith(README_FILENAME):
                    continue
                invalid_links.append(link)
                break

    if invalid_links:
        return True, invalid_links
    return False, []


def validate_no_broken_images(file_path: str) -> bool:
    """Check that all local image references exist"""
    image_link_pattern = r"!\[.*?\]\((.*?)\)"
    base_dir = os.path.dirname(file_path)

    with open(file_path, "r") as f:
        file_content = f.read()

    links = re.findall(image_link_pattern, file_content)
    broken_links = []

    for link in links:
        decoded_link = unquote(link)
        if decoded_link.startswith('https'):
            continue

        path = os.path.join(base_dir, decoded_link)
        if not os.path.exists(path):
            broken_links.append(link)

    if broken_links:
        print(
            f"ERROR: Found broken image links in {file_path}: {broken_links}"
        )
        return False
    return True


def is_file_name_readme(file_path: str) -> bool:
    """Check if filename is README.md"""
    return os.path.basename(file_path).lower() == README_FILENAME.lower()


def check_duplicate_slugs(file_paths: List[str]) -> bool:
    """Check for duplicate directory slugs"""
    file_dict = defaultdict(list)
    for path in file_paths:
        slug = path.split("/")[-2]
        file_dict[slug].append(path)

    duplicates = {
        slug: paths for slug, paths in file_dict.items()
        if len(paths) > 1
    }

    if duplicates:
        for slug, paths in duplicates.items():
            print(f"ERROR: Duplicate slug '{slug}' in paths: {paths}")
        return False
    return True


# ============================================================================
# V3-Specific Validation Functions
# ============================================================================

def validate_slug_format(file_path: str) -> bool:
    """Validate slug (directory name) is kebab-case"""
    slug = os.path.basename(os.path.dirname(file_path))
    if not re.match(KEBAB_CASE_PATTERN, slug):
        print(
            f"ERROR: Slug '{slug}' in {file_path} is not kebab-case. "
            f"Expected format: lowercase-with-hyphens"
        )
        return False
    return True


def validate_name_title_case(name: str, file_path: str) -> bool:
    """Validate name is Title Case (each word starts with capital)"""
    words = name.split()
    # Articles, prepositions, conjunctions can be lowercase (unless first)
    lowercase_allowed = {
        'a', 'an', 'the', 'and', 'or', 'but',
        'for', 'of', 'to', 'in', 'on', 'at'
    }

    for i, word in enumerate(words):
        if i == 0:
            # First word must be capitalized
            if not word[0].isupper():
                print(
                    f"ERROR: Name '{name}' in {file_path} is not Title Case. "
                    f"First word must start with capital letter."
                )
                return False
        elif word.lower() in lowercase_allowed:
            # These words can be lowercase
            continue
        else:
            # Other words should start with capital
            if not word[0].isupper():
                print(
                    f"ERROR: Name '{name}' in {file_path} is not Title Case. "
                    f"Word '{word}' should start with capital letter."
                )
                return False
    return True


def validate_description_format(
    description: str, file_path: str, is_plugin: bool
) -> bool:
    """Validate description format (prefix and suffix)"""
    if not description:
        return True

    # Check prefix for plugins
    if is_plugin:
        if not description.startswith(PLUGIN_DESCRIPTION_PREFIX):
            print(
                f"ERROR: Plugin description in {file_path} must start with "
                f"'{PLUGIN_DESCRIPTION_PREFIX}'. Got: '{description[:50]}...'"
            )
            return False

    # Check suffix (period)
    if not description.strip().endswith(DESCRIPTION_SUFFIX):
        print(
            f"ERROR: Description in {file_path} must end with period. "
            f"Got: '{description[-20:]}'"
        )
        return False

    return True


def validate_purple_chat_link(
    data: dict, file_path: str, is_plugin: bool
) -> bool:
    """Validate purple_chat_link is plugins-only and properly formatted"""
    has_purple_chat = 'purple_chat_link' in data

    if not is_plugin and has_purple_chat:
        print(
            f"ERROR: Connector {file_path} has purple_chat_link field. "
            f"This field is PLUGINS ONLY!"
        )
        return False

    if is_plugin and has_purple_chat:
        link = data['purple_chat_link']
        if not link.startswith(PURPLE_CHAT_URL_PREFIX):
            print(
                f"ERROR: Invalid purple_chat_link in {file_path}. "
                f"Must start with: {PURPLE_CHAT_URL_PREFIX}"
            )
            return False

    return True


def validate_systems_exist(systems: List[str], file_path: str) -> bool:
    """Validate all system slugs reference existing connector directories"""
    connector_dir = f"./{DIRECTORY_MAP[ContentTypes.CONNECTOR]}"
    for system in systems:
        system_path = os.path.join(connector_dir, system)
        if not os.path.isdir(system_path):
            print(
                f"ERROR: Invalid system '{system}' in {file_path}. "
                f"No connector directory exists at {system_path}"
            )
            return False
    return True


def validate_enum_field(
    field_name: str, value, file_path: str
) -> bool:
    """Validate field value is in config.yaml list"""
    valid_values = get_valid_values(field_name)
    if not valid_values:
        return True

    if isinstance(value, list):
        for v in value:
            if v not in valid_values:
                print(
                    f"ERROR: Invalid {field_name} value '{v}' in {file_path}. "
                    f"Valid values: {valid_values}"
                )
                return False
    else:
        if value not in valid_values:
            print(
                f"ERROR: Invalid {field_name} value '{value}' in {file_path}. "
                f"Valid values: {valid_values}"
            )
            return False

    return True


def validate_strict_schema(
    data: dict, file_path: str, allowed_fields: Set[str]
) -> bool:
    """
    Strict schema validation - FAIL if any field not in allowed set.
    This is the key V3 feature that bans unknown fields.
    """
    actual_fields = set(data.keys())
    unknown_fields = actual_fields - allowed_fields

    if unknown_fields:
        print(
            f"ERROR: Unknown fields in {file_path}: {unknown_fields}. "
            f"V3 schema only allows: {allowed_fields}"
        )
        return False

    return True


def validate_redirects(data: dict, file_path: str, all_redirects: set) -> bool:
    """Validate redirects are unique across repo"""
    redirects = data.get('redirects', [])

    # Check for duplicates within file
    unique_redirects = set(redirects)
    if len(unique_redirects) != len(redirects):
        print(f"ERROR: Duplicate redirects within {file_path}")
        return False

    # Check for duplicates across repo
    duplicate_redirects = all_redirects.intersection(unique_redirects)
    if duplicate_redirects:
        print(
            f"ERROR: Duplicate redirects across repo: {duplicate_redirects}. "
            f"Found in {file_path}"
        )
        return False

    all_redirects.update(unique_redirects)
    return True


# ============================================================================
# Main Validation Functions
# ============================================================================

def validate_connector_v3(file_path: str, all_redirects: set) -> bool:
    """V3 validation for connector files"""
    try:
        data = load_yaml_data(file_path)
    except ValueError as err:
        print(f"ERROR: Invalid YAML in {file_path}: {err}")
        return False

    # Strict schema check - MUST be first
    if not validate_strict_schema(data, file_path, ALL_CONNECTOR_FIELDS):
        return False

    # Check required fields exist
    missing_fields = CONNECTOR_REQUIRED_FIELDS - set(data.keys())
    if missing_fields:
        print(
            f"ERROR: Missing required fields in {file_path}: {missing_fields}"
        )
        return False

    # Validate field types
    for field in CONNECTOR_REQUIRED_FIELDS:
        value = data[field]
        if field == "name":
            if not isinstance(value, str):
                print(
                    f"ERROR: Field 'name' must be string in {file_path}"
                )
                return False
        elif field == "logo":
            if not isinstance(value, str):
                print(
                    f"ERROR: Field 'logo' must be string URL in {file_path}"
                )
                return False
        elif field == "availability":
            if not isinstance(value, str):
                print(
                    f"ERROR: Field 'availability' must be string in {file_path}"
                )
                return False

    # V3-specific validations
    if not validate_slug_format(file_path):
        return False

    if not validate_name_title_case(data['name'], file_path):
        return False

    if not validate_purple_chat_link(data, file_path, is_plugin=False):
        return False

    if not validate_enum_field('availability', data['availability'], file_path):
        return False

    # Optional field validations
    if 'description' in data:
        if not validate_description_format(
            data['description'], file_path, is_plugin=False
        ):
            return False

    if not validate_redirects(data, file_path, all_redirects):
        return False

    return True


def validate_plugin_v3(file_path: str, all_redirects: set) -> bool:
    """V3 validation for plugin files"""
    try:
        data = load_yaml_data(file_path)
    except ValueError as err:
        print(f"ERROR: Invalid YAML in {file_path}: {err}")
        return False

    # Strict schema check - MUST be first
    if not validate_strict_schema(data, file_path, ALL_PLUGIN_FIELDS):
        return False

    # Check required fields exist
    missing_fields = PLUGIN_REQUIRED_FIELDS - set(data.keys())
    if missing_fields:
        print(
            f"ERROR: Missing required fields in {file_path}: {missing_fields}"
        )
        return False

    # Validate field types
    for field in PLUGIN_REQUIRED_FIELDS:
        value = data[field]
        if field in ("name", "description", "availability", "purple_chat_link"):
            if not isinstance(value, str):
                print(
                    f"ERROR: Field '{field}' must be string in {file_path}"
                )
                return False
        elif field == "systems":
            if not isinstance(value, list):
                print(
                    f"ERROR: Field 'systems' must be list in {file_path}"
                )
                return False
        elif field == "solution_tags":
            if not isinstance(value, list):
                print(
                    f"ERROR: Field 'solution_tags' must be list in {file_path}"
                )
                return False

    # V3-specific validations
    if not validate_slug_format(file_path):
        return False

    if not validate_name_title_case(data['name'], file_path):
        return False

    if not validate_description_format(
        data['description'], file_path, is_plugin=True
    ):
        return False

    if not validate_purple_chat_link(data, file_path, is_plugin=True):
        return False

    if not validate_systems_exist(data['systems'], file_path):
        return False

    if not validate_enum_field('availability', data['availability'], file_path):
        return False

    if not validate_enum_field('solution_tags', data['solution_tags'], file_path):
        return False

    # Optional field validations
    if 'agent_capabilities' in data:
        if not validate_enum_field(
            'agent_capabilities', data['agent_capabilities'], file_path
        ):
            return False

    if not validate_redirects(data, file_path, all_redirects):
        return False

    return True


def validate_directory_structure() -> bool:
    """Validate required files exist in each directory"""
    connector_dir = f"./{DIRECTORY_MAP[ContentTypes.CONNECTOR]}"
    plugin_dir = f"./{DIRECTORY_MAP[ContentTypes.PLUGIN]}"

    # Connectors must have README.md and logo.png
    for dir_name in os.listdir(connector_dir):
        dir_path = os.path.join(connector_dir, dir_name)
        if os.path.isdir(dir_path):
            required = {"readme.md", "logo.png"}
            present = set(f.lower() for f in os.listdir(dir_path))
            if not required.issubset(present):
                missing = required - present
                print(
                    f"ERROR: Missing files in {dir_path}: {missing}"
                )
                return False

    # Plugins must have README.md
    for dir_name in os.listdir(plugin_dir):
        dir_path = os.path.join(plugin_dir, dir_name)
        if os.path.isdir(dir_path):
            required = {"readme.md"}
            present = set(f.lower() for f in os.listdir(dir_path))
            if not required.issubset(present):
                print(
                    f"ERROR: Missing README.md in {dir_path}"
                )
                return False

    print(f"✓ Directory structure validation passed")
    return True


def main():
    """Main V3 validation entry point"""
    print("=" * 60)
    print("Running V3 Schema Validation")
    print("=" * 60)

    # Directory structure validation
    if not validate_directory_structure():
        sys.exit(1)

    # Find all files
    connector_files = find_markdown_files(
        f"./{DIRECTORY_MAP[ContentTypes.CONNECTOR]}"
    )
    plugin_files = find_markdown_files(
        f"./{DIRECTORY_MAP[ContentTypes.PLUGIN]}"
    )
    all_files = connector_files + plugin_files

    print(f"\nValidating {len(all_files)} files...")
    print(f"  - {len(connector_files)} connectors")
    print(f"  - {len(plugin_files)} plugins")
    print()

    # Check for duplicate slugs
    if not check_duplicate_slugs(all_files):
        sys.exit(1)
    print("✓ No duplicate slugs found")

    # Track redirects across all files
    all_redirects = set()
    errors = []

    # Validate each file
    for file_path in all_files:
        # Basic validations
        if not is_file_name_readme(file_path):
            errors.append(
                f"{file_path}: File must be named {README_FILENAME}"
            )
            continue

        has_errors, invalid_links = identify_external_links(file_path)
        if has_errors:
            errors.append(
                f"{file_path}: Invalid external links: {invalid_links}"
            )
            continue

        if not validate_no_broken_images(file_path):
            errors.append(f"{file_path}: Broken image links")
            continue

        # Schema validations
        if "./plugins" in file_path:
            if not validate_plugin_v3(file_path, all_redirects):
                errors.append(f"{file_path}: Plugin schema validation failed")
        elif "./connectors" in file_path:
            if not validate_connector_v3(file_path, all_redirects):
                errors.append(f"{file_path}: Connector schema validation failed")

    # Report results
    if errors:
        print("\n" + "=" * 60)
        print(f"❌ VALIDATION FAILED with {len(errors)} errors:")
        print("=" * 60)
        for error in errors:
            print(f"  • {error}")
        print()
        sys.exit(1)
    else:
        print("=" * 60)
        print("✅ ALL VALIDATIONS PASSED!")
        print("=" * 60)
        sys.exit(0)


if __name__ == "__main__":
    main()
