import math


def replace_nan_with_none(value):
    """
    Replace NaN values with None.

    :param value: The object (e.g., dict, list, or primitive) possibly containing NaN values.
    :return: The object with NaN values replaced with None.
    """
    if isinstance(value, dict):  # Handle dictionaries
        return {k: replace_nan_with_none(v) for k, v in value.items()}
    elif isinstance(value, list):  # Handle lists
        return [replace_nan_with_none(item) for item in value]
    elif isinstance(value, float) and math.isnan(value):  # Handle NaN floats
        return None
    elif isinstance(value, str) and value.strip() == '':  # Handle empty strings
        return None
    else:
        return value
