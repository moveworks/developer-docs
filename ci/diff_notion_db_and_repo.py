# Determines which files in this repo are not in the Plugin Research File
import os

import requests
import re
import sys
from ci.notion_db_to_plugin_files import NotionColumns, Record
from ci.model import DIRECTORY_MAP, ContentTypes
from ci.csv_utils import read_csv, find_records

CSV_FILE = 'Plugin Research df47317a8eb449178020d6bf3dec4b23_all.csv'



def main():
    records = read_csv(CSV_FILE)

    all_stored_slugs = sum(map(lambda t: os.listdir(DIRECTORY_MAP[t]), ContentTypes), [])
    all_stored_slugs = list(filter(lambda x: x not in ['.DS_Store'], all_stored_slugs))
    slugs_not_in_notion = list(filter(lambda slug: not find_records(records, NotionColumns.SLUG.value, slug), all_stored_slugs))

    if slugs_not_in_notion:
        raise ValueError(f'Found directories not stored in Notion. Please add them to notion or remove them. {slugs_not_in_notion}')


if __name__ == "__main__":
    main()
