import pandas as pd

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
