from enum import Enum

class Fidelity(Enum):
    IDEA = "Idea"
    VALIDATED = "Validated"
    GUIDE = "Guide"
    TEMPLATE = "Template"
    IMPOSSIBLE = "Impossible"


class ContentTypes(Enum):
    CONNECTOR = "Connector"
    PLUGIN = "Plugin"


class DifficultyLevel(Enum):
    BEGINNER = "Beginner"
    INTERMEDIATE = "Intermediate"
    ADVANCED = "Advanced"


DIRECTORY_MAP = {ContentTypes.CONNECTOR: "connectors", ContentTypes.PLUGIN: "plugins"}

MARKDOWN_EXTENSION = '.md'
README_FILENAME = f"README{MARKDOWN_EXTENSION}"
LOGO_FILE = "logo.png"
