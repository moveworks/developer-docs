import os
import re
import yaml
import sys
from urllib.parse import urlparse, unquote
from collections import defaultdict
from enum import Enum


class DifficultyLevel(Enum):
    BEGINNER = "Beginner"
    INTERMEDIATE = "Intermediate"
    ADVANCED = "Advanced"


def find_markdown_files(directory_path):
    markdown_files = []
    for dirpath, _, files in os.walk(directory_path):
        for file_name in files:
            if file_name.endswith(".md"):
                if (
                    dirpath == directory_path and file_name == "README.md"
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
                if file_path.endswith("README.md"):
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
    return os.path.basename(file_path).lower() == "readme.md"


def validate_file_name(file):
    if not is_file_name_readme(file):
        print(f"Incorrect file name for {file}. Expected 'README.md'")
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
        print(f"Missing fields in {file_path}: {missing_or_invalid_fields}")
        sys.exit(1)

    for field, type_ in required_field_type_pairs.items():
        if issubclass(type_, Enum):
            if data[field] not in type_._value2member_map_:
                print(
                    f"Invalid Enum value for {field} in {file_path}: {data[field]}. Expected one of {list(type_._value2member_map_.keys())}"
                )
                sys.exit(1)
        elif not isinstance(data[field], type_):
            print(
                f"Invalid type for {field} in {file_path}: Expected {type_}, but got {type(data[field])}"
            )
            sys.exit(1)

    return True


def find_design_patterns(directory_path):
    design_patterns = []
    pattern_dirs = [
        d
        for d in os.listdir(directory_path)
        if os.path.isdir(os.path.join(directory_path, d))
    ]

    for pattern_dir in pattern_dirs:
        readme_path = os.path.join(directory_path, pattern_dir, "README.md")
        if os.path.exists(readme_path):
            design_patterns.append(readme_path)

    return design_patterns


def validate_system_schema(file_path):
    success, data = load_yaml_data(file_path)
    if not success:
        sys.exit(1)

    required_fields = {
        "name": str,
        "description": str,
        "time_in_minutes": int,
        "difficulty_level": DifficultyLevel,
    }

    validate_yaml_schema_generic(data, required_fields, file_path)


def validate_design_pattern_schema(file_path):
    success, data = load_yaml_data(file_path)
    if not success:
        sys.exit(1)

    required_fields = {
        "id": int,
        "name": str,
        "description": str,
        "time_in_minutes": int,
        "purple_chat_link": str,
        "difficulty_level": DifficultyLevel,
    }
    validate_yaml_schema_generic(data, required_fields, file_path)


def validate_use_case_schema(file_path, design_pattern_ids):
    success, data = load_yaml_data(file_path)
    if not success:
        sys.exit(1)

    required_fields = {
        "design_pattern_id": int,
        "name": str,
        "description": str,
        "systems": list,
        "purple_chat_link": str,
        "time_in_minutes": int,
        "difficulty_level": DifficultyLevel,
    }
    validate_yaml_schema_generic(data, required_fields, file_path)

    if data["design_pattern_id"] not in design_pattern_ids:
        print(
            f"Invalid 'design_pattern_id' in {file_path}. No such design pattern id exists."
        )
        sys.exit(1)

    for system in data["systems"]:
        if not os.path.isdir(os.path.join("./authentication-guides", system)):
            print(
                f"Invalid system '{system}' referenced in {file_path}. Please make sure the '{system}' is registered in ./authentication-guides"
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
        "./authentication-guides", {"readme.md", "logo.png"}
    ):
        sys.exit(1)
    if not validate_directory_structure("./use-case-guides", {"readme.md"}):
        sys.exit(1)
    if not validate_directory_structure("./design-patterns", {"readme.md"}):
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

    guide_files = find_markdown_files("./authentication-guides")
    guide_files += find_markdown_files("./use-case-guides")
    pattern_files = find_design_patterns("./design-patterns")
    guide_files += pattern_files

    check_duplicate_slugs(guide_files)

    print(f"Scanning {len(guide_files)} files...")

    design_pattern_ids = []
    design_pattern_id_map = {}
    for file in pattern_files:
        validate_design_pattern_schema(file)
        _, data = load_yaml_data(file)
        dp_id = data['id']
        if dp_id in design_pattern_id_map:
            print(f"Found duplicate design pattern ID in {file}: {dp_id} already in use by {design_pattern_id_map[dp_id]}")
            sys.exit(1)

        design_pattern_id_map[dp_id] = file

    design_pattern_ids = design_pattern_id_map.keys()

    for file in guide_files:
        print(f"Checking {file}...")
        validate_no_outside_links(file)
        validate_no_broken_images(file)
        validate_file_name(file)
        if "./use-case-guides" in file:
            validate_use_case_schema(file, design_pattern_ids)
        elif "./authentication-guides" in file:
            validate_system_schema(file)

    print("Check passed: All validations are successful.")
    sys.exit(0)


if __name__ == "__main__":
    main()
