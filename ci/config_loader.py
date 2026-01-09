"""
Configuration loader for V3 schema validation.
Loads and caches config.yaml to provide enum value lists.
"""

import yaml
import os
from typing import List, Dict, Any

# Path to config file relative to this module
CONFIG_FILE = os.path.join(os.path.dirname(__file__), "config.yaml")

# Cache the loaded config
_config_cache = None


def load_config() -> Dict[str, Any]:
    """Load and cache config.yaml"""
    global _config_cache
    if _config_cache is None:
        with open(CONFIG_FILE, 'r', encoding='utf-8') as f:
            _config_cache = yaml.safe_load(f)
    return _config_cache


def get_valid_values(field: str) -> List[str]:
    """
    Get valid enum values for a config field.

    Args:
        field: Field name (e.g., 'availability', 'agent_capabilities', 'solution_tags')

    Returns:
        List of valid values, or empty list if field not in config
    """
    config = load_config()
    return config.get(field, [])


def is_valid_value(field: str, value: str) -> bool:
    """
    Check if a value is valid for a given field.

    Args:
        field: Field name
        value: Value to check

    Returns:
        True if value is in the valid list, False otherwise
    """
    valid_values = get_valid_values(field)
    return value in valid_values


def get_config_version() -> int:
    """Get the schema version from config"""
    config = load_config()
    return config.get('version', 3)
