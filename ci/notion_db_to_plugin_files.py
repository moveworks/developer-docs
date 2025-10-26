import os

import pandas as pd
import re
import sys
from typing import Optional
CSV_FILE = 'Plugin Research df47317a8eb449178020d6bf3dec4b23_all.csv'

df = pd.read_csv(CSV_FILE)
from enum import Enum
from ci.data_utils import (
    load_yaml_data,
    deep_equal,
    dump_to_yaml_str,
    render_template_file,
)
from ci.df_utils import replace_nan_with_none
from typing import List
from ci.model import *

import shutil

# CONSTANTS (Can change if we change the Notion DB Structure)
class NotionColumns(Enum):
    TITLE = "Title"
    DESCRIPTION = "Description"
    PURPLE_CHAT_LINK = "Purple Chat"
    FIDELITY = "Current Fidelity"
    CONTENT_TYPE = "Content Type"
    SLUG = "Slug"
    SYSTEM_SLUG = "System Slug"
    SOLUTION_TAGS = "Solutions Tags"
    CUSTOM_TAGS = "Custom Tags"
    SYSTEM_IMAGE = "System Image"
    CUSTOMER_DEPLOYMENTS = "Customers Deployed"
    VIDEO = 'Video Link'
    REDIRECTS = 'Redirect Slugs'
    INSTALLATION_ASSET_UUID = 'installation_asset_uuid'
    AVAILABILITY = "Availability"
    DOMAIN = "Domain"
    AGENT_CAPABILITIES = "Agent Capabilities"


TEMPLATE_MAP = {Fidelity.IDEA: "idea.txt", Fidelity.VALIDATED: 'validated.txt'}
TEMPLATES_DIR = "ci/templates"


class Record:
    def __init__(self, record: object) -> None:
        self._record = replace_nan_with_none(record)

    @property
    def content_type(self) -> ContentTypes:
        return ContentTypes(self._record[NotionColumns.CONTENT_TYPE.value])

    @property
    def fidelity(self) -> Fidelity:
        return Fidelity(self._record[NotionColumns.FIDELITY.value])

    @property
    def slug(self) -> str:
        return self._record[NotionColumns.SLUG.value]

    @property
    def record_directory(self) -> str:
        return os.path.join(DIRECTORY_MAP[self.content_type], self.slug)

    @property
    def record_readme(self) -> str:
        return os.path.join(self.record_directory, README_FILENAME)

    @property
    def front_matter(self) -> dict:
        return load_yaml_data(self.record_readme)

    @property
    def title(self) -> str:
        return self._record[NotionColumns.TITLE.value]

    @property
    def img_url(self) -> str:
        return self._record[NotionColumns.SYSTEM_IMAGE.value]

    @property
    def img_path(self) -> str:
        return os.path.join(self.record_directory, LOGO_FILE)


    def get_csv_prop(self, column: NotionColumns, err_if_empty: bool = False) -> List[str]:
        csv_val: str = self._record[column.value]
        if not csv_val:
            if err_if_empty:
                raise ValueError(f"No {column.name} defined for {self.title}")
            return []
        return list(map(lambda x: x.strip(), csv_val.split(',')))

    @property
    def systems(self) -> List[str]:
        return self.get_csv_prop(NotionColumns.SYSTEM_SLUG)

    @property
    def solution_tags(self) -> List[str]:
        return self.get_csv_prop(NotionColumns.SOLUTION_TAGS)
    
    @property
    def custom_tags(self) -> List[str]:
        return self.get_csv_prop(NotionColumns.CUSTOM_TAGS)
        
    @property
    def redirects(self) -> List[str]:
        return self.get_csv_prop(NotionColumns.REDIRECTS)

    @property
    def description(self) -> str:
        configured_description: str = self._record[NotionColumns.DESCRIPTION.value]
        if configured_description:
            configured_description = configured_description.strip().replace('\u2019', "'")
            if not configured_description.endswith('.'):
                configured_description += '.'
            return configured_description
        return None

    @property
    def purple_chat_link(self) -> str:
        return self._record[NotionColumns.PURPLE_CHAT_LINK.value]

    @property
    def num_implementations(self) -> int:
        deployments: str = self._record[NotionColumns.CUSTOMER_DEPLOYMENTS.value]
        if not deployments:
            return 0
        
        return len(deployments.split(','))
    
    @property
    def video_link(self) -> Optional[str]:
        return self._record[NotionColumns.VIDEO.value]
    
    @property
    def installation_asset_uuid(self) -> Optional[str]:
        return self._record[NotionColumns.INSTALLATION_ASSET_UUID.value]
    
    @property
    def domain(self) -> List[str]:
        return self.get_csv_prop(NotionColumns.DOMAIN)
    
    @property
    def agent_capabilities(self) -> List[str]:
        return self.get_csv_prop(NotionColumns.AGENT_CAPABILITIES)
    
    @property
    def availability(self) -> Availability:
        return Availability(self._record[NotionColumns.AVAILABILITY.value])

    def to_front_matter(self) -> dict:
        if self.content_type == ContentTypes.CONNECTOR:
            return {
                "name": self.title,
                "description": self.description,
                "logo": self.img_url,
                "fidelity": self.fidelity.name,
                "num_implementations": self.num_implementations,
                "video": self.video_link,
                "custom_tags": self.custom_tags,
                "redirects": self.redirects,
                "installation_asset_uuid": self.installation_asset_uuid,
                "availability": self.availability.name,
            }
        elif self.content_type == ContentTypes.PLUGIN:
            return {
                "name": self.title,
                "description": self.description,
                "fidelity": self.fidelity.name,
                "systems": self.systems,
                "purple_chat_link": self.purple_chat_link,
                "solution_tags": self.solution_tags,
                "num_implementations": self.num_implementations,
                "video": self.video_link,
                "custom_tags": self.custom_tags,
                "redirects": self.redirects,
                "installation_asset_uuid": self.installation_asset_uuid,
                "availability": self.availability.name,
                "domain": self.domain,
                "agent_capabilities": self.agent_capabilities,
            }
        else:
            raise NotImplementedError(f"No Front Matter for {self.content_type}")

    def to_front_matter_yaml(self) -> str:
        fm = self.to_front_matter()
        result_dict = {k: v for k, v in fm.items() if bool(v)}
        result_value = dump_to_yaml_str(result_dict)

        return result_value


    @property
    def template_filepath(self) -> str:
        return os.path.join(
            TEMPLATES_DIR, DIRECTORY_MAP[self.content_type], TEMPLATE_MAP[self.fidelity]
        )

    def render_template(self) -> str:
        render_dict = {
            "front_matter": self.to_front_matter_yaml(),
        }
        if self.content_type == ContentTypes.PLUGIN:
            render_dict["purple_chat_link"] = self.purple_chat_link

        result = render_template_file(self.template_filepath, render_dict)
        return result
    
    def replace_existing_file_front_matter(self, new_front_matter: dict):
        with open(self.record_readme, 'r') as file:
            content = file.read()
        # Parse out the front matter
        parts = re.split(r'^---\s*$', content, maxsplit=2, flags=re.MULTILINE)
        if len(parts) == 3:
            body = parts[2]
        else:
            body = content
        # Convert new front matter to a YAML string
        new_front_matter_str = dump_to_yaml_str(new_front_matter).strip()
        # Combine the new front matter and the original body
        new_content = f"---\n{new_front_matter_str}\n---\n{body}"
        with open(self.record_readme, 'w') as file:
            file.write(new_content)
        

def validate_file_consistent_with_notion(record: Record):
    # Ensure the front matter is AT LEAST the same
    stored_front_matter = record.front_matter
    ideal_front_matter = dict(stored_front_matter)
    errors_messages = []
    for k, v in record.to_front_matter().items():
        if not v:
            # No expected value
            continue

        if k not in stored_front_matter:
            ideal_front_matter[k] = v
            errors_messages.append(
                f"Missing {k} in {record.record_readme} front matter. Recommended value: '{v}'"
            )
        elif not deep_equal(stored_front_matter[k], v):
            ideal_front_matter[k] = v
            errors_messages.append(
                f'Stored value for {k} in {record.record_readme} was "{stored_front_matter[k]}". Expected "{v}"'
            )
    
    if errors_messages:
        # Stage the change
        record.replace_existing_file_front_matter(ideal_front_matter)
        raise ValueError(*errors_messages)


def clear_directory(directory):
    if os.path.exists(directory):
        shutil.rmtree(directory)


def validate_record(record: Record):
    if not record.slug:
        return

    if record.fidelity in [
        Fidelity.GUIDE,
        Fidelity.VALIDATED,
        Fidelity.BUILT_IN,
        Fidelity.TEMPLATE
    ]:
        # Create directory if needed
        if not os.path.exists(record.record_directory):
            os.makedirs(record.record_directory)

        # Check if README exists
        if not os.path.exists(record.record_readme):
            open(record.record_readme, "w+").write(record.render_template())
            
            if record.fidelity == Fidelity.BUILT_IN:
                print(f"Created new BUILT_IN record for {record.slug}")
            else:
                print('WARNING: ', f"This record is supposed to be {record.fidelity}, but we could not find a guide or research file for {record.record_directory}. Please add your proof.")
        
        # Detect discrepancies with the guide file
        validate_file_consistent_with_notion(record)

    elif record.fidelity in [Fidelity.IDEA]:
        clear_directory(record.record_directory)
        os.makedirs(record.record_directory)
        open(record.record_readme, "w+").write(record.render_template())

    elif record.fidelity in [Fidelity.IMPOSSIBLE]:
        clear_directory(record.record_directory)
    else:
        raise NotImplementedError(f"No support built for {record.fidelity} yet.")


def main():
    errors = []

    all_stored_slugs = sum(map(lambda t: os.listdir(DIRECTORY_MAP[t]), ContentTypes), [])
    all_stored_slugs = list(filter(lambda x: x not in ['.DS_Store'], all_stored_slugs))
    slugs_not_in_notion = list(filter(lambda slug: df[df[NotionColumns.SLUG.value] == slug].empty, all_stored_slugs))

    if slugs_not_in_notion:
        for s in slugs_not_in_notion:
            for t in ContentTypes:
                p = os.path.join(DIRECTORY_MAP[t], s)
                if os.path.exists(p):
                    clear_directory(p)
        raise ValueError(f'Found directories not stored in Notion. Please add them to notion or remove them. {slugs_not_in_notion}')

    # Complain if there are any duplicate slugs.
    slug_counts = df[NotionColumns.SLUG.value].value_counts()
    if max(slug_counts.values) > 1:
        raise ValueError("Found duplicate slugs in CSV.", slug_counts)


    for _, record in df.iterrows():
        record = Record(record=record)
        try:
            validate_record(record)
        except Exception as e:
            errors.append(Exception(e, record.slug))

    if errors:
        print(f'FOUND {len(errors)} ERRORS')
        for err in errors:
            print(err)
            print('---------------------')
        raise errors[0]


if __name__ == "__main__":
    main()
