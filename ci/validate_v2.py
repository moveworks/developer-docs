import os
import re
from typing import List
import yaml
import sys
from urllib.parse import urlparse, unquote
from collections import defaultdict
from enum import Enum
from ci.model import *

DEFAULT_AUTHOR_MARKER = 'DEFAULT'
DELETE_NO_PURPLE_CHAT_FLAG = '--delete-no-pc'

import shutil

def clear_directory(directory):
    if os.path.exists(directory):
        shutil.rmtree(directory)

def find_markdown_files(directory_path):
    markdown_files = []
    for dirpath, _, files in os.walk(directory_path):
        for file_name in files:
            if file_name.endswith(MARKDOWN_EXTENSION):
                if (
                    dirpath == directory_path and file_name == README_FILENAME
                ):  # Ignore TLD Readmes.
                    continue

                markdown_files.append(os.path.join(dirpath, file_name))
    return markdown_files


def identify_external_links(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # split content into lines
    lines = content.split("\n")

    invalid_links = []

    # iterate over each line
    for line in lines:
        # Find markdown URL patterns
        link_matches = re.findall(r"\[([^\[\]]*)\]\(([^\(\)]*)\)", line)

        # inspect each match individually
        for text, link in link_matches:
            link = unquote(link)
            link_url = urlparse(link)

            # if the link has a scheme, it's a URL
            if link_url.scheme:
                if "notion.so" in link:
                    invalid_links.append(link)

                continue

            # if the path refers to an absolute path, add it to invalid_links
            if link.startswith("/"):
                invalid_links.append(link)
                continue

            # the path is relative, prepare the path
            link_path = os.path.join(*(file_path.split(os.sep)[:-1] + link.split("/")))

            # validate a local path
            real_path = os.path.realpath(link_path)
            if not (
                os.path.exists(real_path)
                and real_path.startswith(os.path.realpath(os.path.dirname(file_path)))
            ):
                if file_path.endswith(README_FILENAME):
                    continue

                invalid_links.append(link)
                break

    if invalid_links:
        return True, invalid_links

    return False, []


def validate_no_outside_links(file):
    res, links = identify_external_links(file)
    if res:
        print(f"Found links to outside files in {file}: {links}")
        sys.exit(1)


def validate_no_broken_images(file):
    image_link_pattern = r"!\[.*?\]\((.*?)\)"
    base_dir = os.path.dirname(file)

    with open(file, "r") as f:
        file_content = f.read()

    links = re.findall(image_link_pattern, file_content)

    broken_links = []
    for link in links:
        decoded_link = unquote(link)  # Decoding URL-encoded spaces
        if decoded_link.startswith('https'): # Do not check External Image Refs
            continue

        path = os.path.join(base_dir, decoded_link)  # add correct path to the file
        if not os.path.exists(path):  # if file does not exist
            broken_links.append(link)

    if broken_links:
        print(f"Found broken links to images in {file}: {broken_links}")
        sys.exit(1)


def is_file_name_readme(file_path):
    return os.path.basename(file_path).lower() == README_FILENAME.lower()


def validate_file_name(file):
    if not is_file_name_readme(file):
        print(f"Incorrect file name for {file}. Expected '{README_FILENAME}'")
        sys.exit(1)


def load_yaml_data(file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        lines = file.readlines()

    try:
        front_matter = "".join(lines[1 : lines.index("---\n", 1)])
    except ValueError as ve:
        print(f"Missing YAML front matter in {file_path}")
        return False, {}

    try:
        data = yaml.safe_load(front_matter)
    except yaml.YAMLError as e:
        print(f"Error in YAML formatting in {file_path}: {e}")
        return False, {}

    return True, data or {}


def validate_yaml_schema_generic(data, required_field_type_pairs, file_path):
    missing_or_invalid_fields = required_field_type_pairs.keys() - data.keys()

    if missing_or_invalid_fields:
        if (
            DELETE_NO_PURPLE_CHAT_FLAG in sys.argv and 
            len(missing_or_invalid_fields) == 1 and 
            'purple_chat_link' in missing_or_invalid_fields
        ):
            DIRECTORY_TO_CLEAR = os.path.dirname(file_path)
            print(f'Clearing {DIRECTORY_TO_CLEAR} due to missing PC link & flag')
            clear_directory(DIRECTORY_TO_CLEAR)
            return True
            
        else:
            print(f"Missing fields in {file_path}: {missing_or_invalid_fields}")
            sys.exit(1)

    for field, type_ in required_field_type_pairs.items():
        if issubclass(type_, Enum):
            if data[field] not in type_._member_names_:
                print(
                    f"Invalid Enum value for {field} in {file_path}: {data[field]}. Expected one of {list(type_._member_names_)}"
                )
                sys.exit(1)
        elif not isinstance(data[field], type_):
            print(
                f"Invalid type for {field} in {file_path}: Expected {type_}, but got {type(data[field])}"
            )
            sys.exit(1)

    return True

ALL_REDIRECTS = set()

def standard_frontmatter_validations(file_path: str, data: dict):
    description: str = data.get('description')
    if description and not description.strip().endswith('.'):
        print(
                f"Missed a period at the end of your description for {file_path}. ('{description}')"
            )
        sys.exit(1)

    accreditations: List[str] = data.get('accreditations', [])
    drop_accreditations: List[str] = data.get('drop_accreditations', [])
    if all([
        accreditations,
        DEFAULT_AUTHOR_MARKER not in accreditations,
        DEFAULT_AUTHOR_MARKER not in drop_accreditations
    ]):
        print(f'Warning: could not find {DEFAULT_AUTHOR_MARKER} in accreditations for {file_path}. If intentional, please add it to "drop_accreditations".')
        sys.exit(1)

    redirects = data.get('redirects', [])
    unique_redirects = set(redirects)
    if len(unique_redirects) != len(redirects):
        print(f'Duplicate redirects in {file_path}')
        sys.exit(1)

    duplicate_redirects = ALL_REDIRECTS.intersection(unique_redirects)
    if len(duplicate_redirects) != 0:
        print(f'Multiple files have the same redirects: {duplicate_redirects}. Found duplicate in {file_path}')
        sys.exit(1)
    ALL_REDIRECTS.update(unique_redirects)

def validate_connector_schema(file_path):
    success, data = load_yaml_data(file_path)
    if not success:
        sys.exit(1)

    required_fields = {
        "name": str,
        "fidelity": Fidelity
    }
    
    validate_yaml_schema_generic(data, required_fields, file_path)

    standard_frontmatter_validations(file_path=file_path, data=data)


def validate_plugin_schema(file_path):
    success, data = load_yaml_data(file_path)
    if not success:
        sys.exit(1)

    required_fields = {
        "name": str,
        "fidelity": Fidelity,
        "systems": list,
        "purple_chat_link": str,
        "solution_tags": list,
    }
    if data.get("fidelity") == Fidelity.GUIDE.name:
        required_fields.update(
            {
                "time_in_minutes": int,
                "difficulty_level": DifficultyLevel,
            }
        )

    validate_yaml_schema_generic(data, required_fields, file_path)
    standard_frontmatter_validations(file_path=file_path, data=data)

    for system in data["systems"]:
        if not os.path.isdir(os.path.join(f"./{DIRECTORY_MAP[ContentTypes.CONNECTOR]}", system)):
            print(
                f"Invalid system '{system}' referenced in {file_path}. Please make sure the '{system}' is registered in ./connectors"
            )
            sys.exit(1)


def validate_directory_structure(directory_path, required_files):
    for dir_name in os.listdir(directory_path):
        dir_path = os.path.join(directory_path, dir_name)
        if os.path.isdir(dir_path):
            present_files = set(f.lower() for f in os.listdir(dir_path))
            if not required_files.issubset(present_files):
                missing_files = required_files - present_files
                print(f"Missing files in directory: {dir_path} -> {missing_files}")
                return False

    print(f"{directory_path} passed structural validation")
    return True


def directory_schema_validation():
    if not validate_directory_structure(
        f"./{DIRECTORY_MAP[ContentTypes.CONNECTOR]}", {"readme.md", "logo.png"}
    ):
        sys.exit(1)
    if not validate_directory_structure(
        f"./{DIRECTORY_MAP[ContentTypes.PLUGIN]}", {"readme.md"}
    ):
        sys.exit(1)


def check_duplicate_slugs(file_paths):
    file_dict = defaultdict(list)
    for path in file_paths:
        file_dict[path.split("/")[-2]].append(path)

    duplicates = {slug: paths for slug, paths in file_dict.items() if len(paths) > 1}

    if duplicates:
        [
            print(f"Found duplicate slug: '{slug}' in paths: {paths}")
            for slug, paths in duplicates.items()
        ]
        sys.exit(1)


def main():
    directory_schema_validation()

    guide_files = find_markdown_files(f"./{DIRECTORY_MAP[ContentTypes.CONNECTOR]}")
    guide_files += find_markdown_files(f"./{DIRECTORY_MAP[ContentTypes.PLUGIN]}")

    check_duplicate_slugs(guide_files)

    print(f"Scanning {len(guide_files)} files...")

    for file in guide_files:
        print(f"Checking {file}...")
        validate_no_outside_links(file)
        validate_no_broken_images(file)
        validate_file_name(file)
        if "./plugins" in file:
            validate_plugin_schema(file)
        elif "./connectors" in file:
            validate_connector_schema(file)

    print("Check passed: All validations are successful.")
    sys.exit(0)


if __name__ == "__main__":
    main()
