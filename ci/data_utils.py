import yaml
import pandas as pd
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
        front_matter = "".join(lines[1 : lines.index("---\n", 1)])
    except ValueError as ve:
        raise ValueError(f"Missing YAML front matter in {file_path}")
        return False, {}

    try:
        data = yaml.safe_load(front_matter)
    except yaml.YAMLError as e:
        raise ValueError(f"Error in YAML formatting in {file_path}: {e}")

    return data or {}


def replace_nan_with_none(value):
    """
    Replace NaN values with None, specifically handling pandas structures.

    :param value: The object (e.g., dict, list, pandas Series, or DataFrame) possibly containing NaN values.
    :return: The object with NaN values replaced with None.
    """
    if isinstance(value, pd.DataFrame) or isinstance(value, pd.Series):
        return value.where(pd.notnull(value), None)
    elif isinstance(value, dict):  # Handle dictionaries
        return {k: replace_nan_with_none(v) for k, v in value.items()}
    elif isinstance(value, list):  # Handle lists
        return [replace_nan_with_none(item) for item in value]
    else:
        return value
