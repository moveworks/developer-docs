from enum import Enum
import re

# V2 Schema Enums (kept for backwards compatibility during migration)
class Fidelity(Enum):
    IDEA = "Idea"
    VALIDATED = "Validated"
    GUIDE = "Guide"
    TEMPLATE = "Template"
    IMPOSSIBLE = "Impossible"
    BUILT_IN = "Built-In"


class ContentTypes(Enum):
    CONNECTOR = "Connector"
    PLUGIN = "Plugin"


class DifficultyLevel(Enum):
    BEGINNER = "Beginner"
    INTERMEDIATE = "Intermediate"
    ADVANCED = "Advanced"


class Availability(Enum):
    IDEA = "Idea"
    VALIDATED = "Validated"
    BUILT_IN = "Built-In"
    INSTALLABLE = "Installable"


# Common constants
DIRECTORY_MAP = {ContentTypes.CONNECTOR: "connectors", ContentTypes.PLUGIN: "plugins"}

MARKDOWN_EXTENSION = '.md'
README_FILENAME = f"README{MARKDOWN_EXTENSION}"
LOGO_FILE = "logo.png"


# ============================================================================
# V3 Schema Constants
# ============================================================================

# V3 Schema Version
V3_SCHEMA_VERSION = 3

# Path to config file
CONFIG_FILE = "ci/config.yaml"

# Regex patterns for V3 validation
KEBAB_CASE_PATTERN = r'^[a-z0-9]+(?:-[a-z0-9]+)*$'
TITLE_CASE_PATTERN = r'^[A-Z][a-z]*(?:\s+[A-Z][a-z]*)*$'  # Simplified, actual validation more complex

# Description validation constants
PLUGIN_DESCRIPTION_PREFIX = "A plugin that"
CONNECTOR_DESCRIPTION_PREFIX = "A connector for"
DESCRIPTION_SUFFIX = "."

# Purple Chat Link validation
PURPLE_CHAT_URL_PREFIX = "https://marketplace.moveworks.com/purple-chat?conversation="

# V3 Required Fields by Content Type
CONNECTOR_REQUIRED_FIELDS = {
    "name",         # Title Case name
    "availability", # Enum from config.yaml
    # Note: logo is required as a file, not a YAML field
}

PLUGIN_REQUIRED_FIELDS = {
    "name",              # Title Case name
    "description",       # Must start with prefix and end with period
    "availability",      # Enum from config.yaml
    "systems",           # List of connector slugs (must exist as directories)
    "purple_chat_link",  # Must be valid URL
    "solution_tags",     # List from config.yaml
}

# V3 Optional Fields by Content Type
CONNECTOR_OPTIONAL_FIELDS = {
    "description",      # Should end with period if present
    "video",           # Video URL
    "redirects",       # List of old slugs
    "num_implementations",  # Integer count
}

PLUGIN_OPTIONAL_FIELDS = {
    "agent_capabilities",       # List from config.yaml
    "installation_asset_uuid",  # UUID for installable plugins
    "video",                    # Video URL
    "redirects",                # List of old slugs
    "domain",                   # Deprecated but still accepted
    "num_implementations",      # Integer count
    "accreditations",           # List of author usernames
}

# V3 Removed Fields (validation will fail if these are present)
REMOVED_FIELDS = {
    "drop_accreditations",  # No longer needed
    "design_pattern_id",    # Internal field deprecated
    "installation_link",    # Rare override no longer supported
    "custom_tags",          # Migrated to agent_capabilities
    "resources",            # Computed field, not stored
    "fidelity",             # Removed in V3
    "difficulty_level",     # Removed in V3
    "time_in_minutes",      # Removed in V3
}

# All valid V3 fields (for strict schema validation)
ALL_CONNECTOR_FIELDS = CONNECTOR_REQUIRED_FIELDS | CONNECTOR_OPTIONAL_FIELDS
ALL_PLUGIN_FIELDS = PLUGIN_REQUIRED_FIELDS | PLUGIN_OPTIONAL_FIELDS