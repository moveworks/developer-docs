"""
V2 to V3 Schema Migration Script

This script automatically migrates markdown files from V2 to V3 schema by:
1. Removing deprecated fields
2. Migrating custom_tags to agent_capabilities
3. Fixing description formatting
4. Normalizing YAML formatting

Usage:
    python -m ci.migrate_to_v3 --dry-run  # Preview changes without writing
    python -m ci.migrate_to_v3 --apply    # Apply changes to files
    python -m ci.migrate_to_v3 --file path/to/README.md  # Migrate single file
"""

import os
import yaml
import argparse
import sys
from typing import Dict, List, Tuple, Optional


# Deprecated fields to remove
DEPRECATED_FIELDS = {
    'fidelity',
    'difficulty_level',
    'time_in_minutes',
    'accreditations',
    'domain',  # Migrated to solution_tags
    'custom_tags',  # Migrated to agent_capabilities
    'design_pattern_id',
    'drop_accreditations',
    'installation_link',
    'num_implementations',
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


def extract_frontmatter_and_content(
    file_path: str
) -> Tuple[Optional[str], Optional[Dict], Optional[str]]:
    """
    Extract YAML frontmatter and remaining content from markdown file.

    Returns:
        Tuple of (original_yaml_str, parsed_data, remaining_content)
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()

        # Check for YAML frontmatter
        if not content.startswith('---'):
            return None, {}, content

        # Find end of frontmatter
        end_idx = content.find('---', 3)
        if end_idx == -1:
            return None, {}, content

        yaml_str = content[3:end_idx].strip()
        remaining_content = content[end_idx + 3:]

        data = yaml.safe_load(yaml_str)
        return yaml_str, data if data else {}, remaining_content

    except Exception as e:
        print(f"  ERROR: Failed to parse {file_path}: {e}")
        return None, None, None


def migrate_custom_tags_to_agent_capabilities(data: Dict) -> bool:
    """
    Migrate custom_tags to agent_capabilities.

    If custom_tags contains "Polling Required", add "Ambient Agent"
    to agent_capabilities and remove custom_tags.

    Returns:
        True if changes were made
    """
    if 'custom_tags' not in data:
        return False

    custom_tags = data['custom_tags']
    if not isinstance(custom_tags, list):
        custom_tags = [custom_tags]

    # Check if "Polling Required" is in custom_tags
    if "Polling Required" not in custom_tags:
        # Still remove custom_tags even if it's not "Polling Required"
        del data['custom_tags']
        return True

    # Add "Ambient Agent" to agent_capabilities
    if 'agent_capabilities' not in data:
        data['agent_capabilities'] = []
    elif not isinstance(data['agent_capabilities'], list):
        data['agent_capabilities'] = [data['agent_capabilities']]

    # Add "Ambient Agent" if not already present
    if "Ambient Agent" not in data['agent_capabilities']:
        data['agent_capabilities'].append("Ambient Agent")

    # Remove custom_tags
    del data['custom_tags']

    return True


def remove_deprecated_fields(data: Dict) -> bool:
    """
    Remove all deprecated fields from data dict.

    Returns:
        True if any fields were removed
    """
    fields_removed = False

    for field in DEPRECATED_FIELDS:
        if field in data:
            del data[field]
            fields_removed = True

    return fields_removed


def fix_description_format(data: Dict, is_plugin: bool) -> bool:
    """
    Fix description formatting:
    - Plugins: Ensure starts with "A plugin that"
    - All: Ensure ends with period

    Returns:
        True if changes were made
    """
    if 'description' not in data:
        return False

    description = data['description'].strip()
    original = description
    changed = False

    # Add prefix for plugins
    if is_plugin and not description.startswith("A plugin that"):
        # Try to intelligently add prefix
        if description[0].islower():
            description = "A plugin that " + description
        else:
            # If starts with capital, needs different handling
            # Let's not auto-fix this - needs manual review
            pass

    # Ensure ends with period
    if not description.endswith('.'):
        description = description + '.'
        changed = True

    if description != original:
        data['description'] = description
        return True

    return changed


def migrate_file(
    file_path: str,
    dry_run: bool = True
) -> Tuple[bool, List[str]]:
    """
    Migrate a single file to V3 schema.

    Returns:
        Tuple of (success, list of changes made)
    """
    changes = []

    # Determine if plugin or connector
    is_plugin = '/plugins/' in file_path or 'plugin' in file_path.lower()
    is_connector = '/connectors/' in file_path or 'connector' in file_path.lower()

    # Default to plugin if can't determine
    if not (is_plugin or is_connector):
        is_plugin = True

    # Extract frontmatter
    original_yaml, data, remaining_content = extract_frontmatter_and_content(
        file_path
    )

    if data is None:
        return False, ["ERROR: Failed to parse file"]

    if not data:
        return False, ["Skipped: No YAML frontmatter"]

    # Track changes
    original_data = data.copy()

    # 1. Migrate custom_tags to agent_capabilities
    if migrate_custom_tags_to_agent_capabilities(data):
        if 'custom_tags' in original_data:
            changes.append(
                f"Migrated custom_tags {original_data['custom_tags']} "
                f"to agent_capabilities"
            )

    # 2. Remove deprecated fields
    removed_fields = []
    for field in DEPRECATED_FIELDS:
        if field in data:
            removed_fields.append(field)
            del data[field]

    if removed_fields:
        changes.append(f"Removed deprecated fields: {', '.join(removed_fields)}")

    # 3. Fix description format
    if fix_description_format(data, is_plugin):
        changes.append("Fixed description format")

    # If no changes, skip
    if not changes:
        return True, ["No changes needed"]

    # Generate new YAML
    try:
        new_yaml = yaml.dump(
            data,
            default_flow_style=False,
            allow_unicode=True,
            sort_keys=False,
            width=80
        )

        # Construct new file content
        new_content = f"---\n{new_yaml}---{remaining_content}"

        # Write file if not dry run
        if not dry_run:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(new_content)

        return True, changes

    except Exception as e:
        return False, [f"ERROR: Failed to write file: {e}"]


def migrate_directory(directory: str, dry_run: bool = True) -> Dict:
    """
    Migrate all files in a directory.

    Returns:
        Dict with migration statistics
    """
    files = find_markdown_files(directory)

    stats = {
        'total': len(files),
        'migrated': 0,
        'skipped': 0,
        'errors': 0,
        'changes': []
    }

    for file_path in files:
        success, changes = migrate_file(file_path, dry_run)

        if not success:
            stats['errors'] += 1
            print(f"❌ {file_path}")
            for change in changes:
                print(f"   {change}")
        elif changes == ["No changes needed"]:
            stats['skipped'] += 1
        else:
            stats['migrated'] += 1
            stats['changes'].append((file_path, changes))

            mode = "DRY-RUN" if dry_run else "MIGRATED"
            print(f"✓ [{mode}] {file_path}")
            for change in changes:
                print(f"   - {change}")

    return stats


def main():
    parser = argparse.ArgumentParser(
        description='Migrate markdown files from V2 to V3 schema'
    )
    parser.add_argument(
        '--dry-run',
        action='store_true',
        help='Preview changes without modifying files'
    )
    parser.add_argument(
        '--apply',
        action='store_true',
        help='Apply changes to files'
    )
    parser.add_argument(
        '--file',
        type=str,
        help='Migrate a single file'
    )

    args = parser.parse_args()

    # Default to dry-run if neither flag specified
    if not args.apply:
        args.dry_run = True

    print("=" * 80)
    print("V2 to V3 Schema Migration")
    print("=" * 80)
    print()

    if args.dry_run:
        print("🔍 DRY RUN MODE - No files will be modified")
    else:
        print("⚠️  APPLY MODE - Files will be modified!")

    print()

    # Migrate single file or all files
    if args.file:
        print(f"Migrating single file: {args.file}")
        print()
        success, changes = migrate_file(args.file, dry_run=args.dry_run)

        if success:
            print()
            print("Changes:")
            for change in changes:
                print(f"  - {change}")
        else:
            print(f"❌ Failed to migrate {args.file}")
            sys.exit(1)

    else:
        print("Migrating all connectors and plugins...")
        print()

        # Migrate connectors
        print("Connectors:")
        print("-" * 80)
        connector_stats = migrate_directory('./connectors', dry_run=args.dry_run)

        print()
        print("Plugins:")
        print("-" * 80)
        plugin_stats = migrate_directory('./plugins', dry_run=args.dry_run)

        # Print summary
        print()
        print("=" * 80)
        print("MIGRATION SUMMARY")
        print("=" * 80)
        print()
        print("Connectors:")
        print("  Total: {}".format(connector_stats['total']))
        print("  Migrated: {}".format(connector_stats['migrated']))
        print("  Skipped: {}".format(connector_stats['skipped']))
        print("  Errors: {}".format(connector_stats['errors']))
        print()
        print("Plugins:")
        print("  Total: {}".format(plugin_stats['total']))
        print("  Migrated: {}".format(plugin_stats['migrated']))
        print("  Skipped: {}".format(plugin_stats['skipped']))
        print("  Errors: {}".format(plugin_stats['errors']))
        print()
        total_migrated = (
            connector_stats['migrated'] + plugin_stats['migrated']
        )
        total_files = connector_stats['total'] + plugin_stats['total']
        print("TOTAL: {}/{} files migrated".format(
            total_migrated, total_files
        ))
        print()

        if args.dry_run:
            print("✓ Dry run complete - no files were modified")
            print("  Run with --apply to actually migrate files")
        else:
            print("✓ Migration complete!")

        print("=" * 80)


if __name__ == '__main__':
    main()
