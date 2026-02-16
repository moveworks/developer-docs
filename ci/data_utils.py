import yaml

import json
import chevron

def render_template_file(filepath: str, obj: dict):
    contents = open(filepath).read()
    return chevron.render(contents, obj)

def deep_equal(obj1, obj2):
    conversion = lambda x: json.dumps(x, sort_keys=True)
    return conversion(obj1) == conversion(obj2)


def dump_to_yaml_str(obj: dict) -> str:
    return yaml.dump(obj, default_flow_style=False)



def load_yaml_data(file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        lines = file.readlines()

    try:
        # Find closing --- delimiter (with or without newline)
        closing_index = None
        for i in range(1, len(lines)):
            if lines[i] == "---\n" or lines[i] == "---":
                closing_index = i
                break

        if closing_index is None:
            raise ValueError(f"Missing closing --- delimiter")

        front_matter = "".join(lines[1:closing_index])
    except ValueError as ve:
        raise ValueError(f"Missing YAML front matter in {file_path}")

    try:
        data = yaml.safe_load(front_matter)
    except yaml.YAMLError as e:
        raise ValueError(f"Error in YAML formatting in {file_path}: {e}")

    return data or {}


