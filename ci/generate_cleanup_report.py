"""
Generate Cleanup Report for V2 to V3 Migration

This script scans all markdown files and identifies deprecated fields
that need to be manually removed during PR #4.

Deprecated fields:
- drop_accreditations
- design_pattern_id
- installation_link
- custom_tags (will be migrated to agent_capabilities)
- fidelity (v2 field being removed)
- difficulty_level (v2 field being removed)
- time_in_minutes (v2 field being removed)
- accreditations (v2 field being removed)
- num_implementations (v2 field being removed)
- domain (v2 field being removed, migrated to solution_tags)
"""

import os
import yaml
from collections import defaultdict
from typing import Dict, List, Set


# Fields that need to be removed in v3
DEPRECATED_FIELDS = {
    'drop_accreditations',
    'design_pattern_id',
    'installation_link',
    'custom_tags',
    'fidelity',
    'difficulty_level',
    'time_in_minutes',
    'accreditations',
    'num_implementations',
    'domain',
}


def find_markdown_files(directory: str) -> List[str]:
    """Find all README.md files in connectors/ and plugins/"""
    markdown_files = []
    for dirpath, _, files in os.walk(directory):
        for filename in files:
            if filename == 'README.md':
                file_path = os.path.join(dirpath, filename)
                # Skip top-level README
                if dirpath != directory:
                    markdown_files.append(file_path)
    return markdown_files


def extract_yaml_frontmatter(file_path: str) -> Dict:
    """Extract YAML frontmatter from markdown file"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()

        # Check for YAML frontmatter
        if not content.startswith('---'):
            return {}

        # Find end of frontmatter
        end_idx = content.find('---', 3)
        if end_idx == -1:
            return {}

        yaml_content = content[3:end_idx].strip()
        data = yaml.safe_load(yaml_content)
        return data if data else {}

    except Exception as e:
        print(f"Error parsing {file_path}: {e}")
        return {}


def analyze_deprecated_fields() -> Dict[str, List[str]]:
    """
    Analyze all files and return which deprecated fields exist where

    Returns:
        Dict mapping field name -> list of file paths
    """
    field_usage = defaultdict(list)

    # Scan connectors
    connectors_dir = './connectors'
    connector_files = find_markdown_files(connectors_dir)

    # Scan plugins
    plugins_dir = './plugins'
    plugin_files = find_markdown_files(plugins_dir)

    all_files = connector_files + plugin_files

    for file_path in all_files:
        data = extract_yaml_frontmatter(file_path)

        # Check for deprecated fields
        for field in DEPRECATED_FIELDS:
            if field in data:
                field_usage[field].append(file_path)

    return field_usage


def analyze_custom_tags_migration() -> Dict[str, List[str]]:
    """
    Analyze custom_tags field to understand migration needs

    Returns:
        Dict with analysis of custom_tags values and their files
    """
    custom_tags_by_value = defaultdict(list)
    files_with_agent_capabilities = []

    # Scan all files
    plugins_dir = './plugins'
    plugin_files = find_markdown_files(plugins_dir)

    for file_path in plugin_files:
        data = extract_yaml_frontmatter(file_path)

        # Track files with custom_tags
        if 'custom_tags' in data:
            custom_tags = data['custom_tags']
            if isinstance(custom_tags, list):
                for tag in custom_tags:
                    custom_tags_by_value[tag].append(file_path)
            else:
                custom_tags_by_value[str(custom_tags)].append(file_path)

        # Track which files already have agent_capabilities
        if 'agent_capabilities' in data and 'custom_tags' in data:
            files_with_agent_capabilities.append(file_path)

    return {
        'by_value': custom_tags_by_value,
        'with_agent_capabilities': files_with_agent_capabilities
    }


def generate_report():
    """Generate comprehensive cleanup report"""

    print("=" * 80)
    print("V2 to V3 Migration - Cleanup Report")
    print("=" * 80)
    print()

    # Analyze deprecated fields
    field_usage = analyze_deprecated_fields()

    print("DEPRECATED FIELDS ANALYSIS")
    print("-" * 80)
    print()

    total_files_affected = set()

    for field in sorted(DEPRECATED_FIELDS):
        files = field_usage.get(field, [])
        if files:
            total_files_affected.update(files)
            print(f"{field}:")
            print(f"  Count: {len(files)} files")
            print(f"  Files:")
            for file_path in sorted(files):
                print(f"    - {file_path}")
            print()

    print("-" * 80)
    print(f"TOTAL UNIQUE FILES AFFECTED: {len(total_files_affected)}")
    print("-" * 80)
    print()

    # Custom tags migration analysis
    print()
    print("=" * 80)
    print("CUSTOM_TAGS MIGRATION ANALYSIS")
    print("=" * 80)
    print()

    custom_tags_analysis = analyze_custom_tags_migration()

    print("Custom Tags by Value:")
    print("-" * 80)
    for tag_value, files in sorted(
        custom_tags_analysis['by_value'].items()
    ):
        print(f"{tag_value}:")
        print(f"  Count: {len(files)} files")
        print(f"  Files:")
        for file_path in sorted(files):
            print(f"    - {file_path}")
        print()

    print()
    print("Files with BOTH custom_tags AND agent_capabilities:")
    print("-" * 80)
    if custom_tags_analysis['with_agent_capabilities']:
        for file_path in sorted(
            custom_tags_analysis['with_agent_capabilities']
        ):
            print(f"  - {file_path}")
        print(f"\nTotal: "
              f"{len(custom_tags_analysis['with_agent_capabilities'])}")
    else:
        print("  None found")

    print()
    print("=" * 80)
    print("MIGRATION INSTRUCTIONS")
    print("=" * 80)
    print()
    print("For each file with custom_tags:")
    print("  1. If custom_tags contains 'Polling Required':")
    print("     - Remove custom_tags field")
    print("     - Add 'Ambient Agent' to agent_capabilities array")
    print("     - If agent_capabilities doesn't exist, create it")
    print()
    print("For all other deprecated fields:")
    print("  - Simply remove the field from YAML frontmatter")
    print()
    print("=" * 80)


if __name__ == '__main__':
    generate_report()
