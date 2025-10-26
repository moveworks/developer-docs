import csv
from typing import List, Dict, Any
from collections import Counter


def read_csv(filepath: str) -> List[Dict[str, Any]]:
    """
    Read a CSV file and return a list of dictionaries.

    :param filepath: Path to the CSV file
    :return: List of dictionaries, where each dict represents a row
    """
    with open(filepath, 'r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        return list(reader)


def find_records(records: List[Dict[str, Any]], column: str, value: Any) -> List[Dict[str, Any]]:
    """
    Find all records where the specified column matches the given value.

    :param records: List of record dictionaries
    :param column: Column name to search
    :param value: Value to match
    :return: List of matching records
    """
    return [record for record in records if record.get(column) == value]


def count_values(records: List[Dict[str, Any]], column: str) -> Dict[Any, int]:
    """
    Count occurrences of each value in the specified column.

    :param records: List of record dictionaries
    :param column: Column name to count
    :return: Dictionary mapping values to their counts
    """
    values = [record.get(column) for record in records if record.get(column)]
    return dict(Counter(values))
