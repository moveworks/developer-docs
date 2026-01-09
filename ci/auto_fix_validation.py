"""
Auto-fix V3 validation errors

This script automatically fixes common v3 validation errors:
1. Fix purple_chat_link URLs (convert old base URL to new)
2. Fix slug format issues (rename directories)
3. Add missing solution_tags (best effort)
4. Remove purple_chat_link from connectors

Usage:
    python -m ci.auto_fix_validation --dry-run
    python -m ci.auto_fix_validation --apply
"""

import os
import yaml
import argparse
import shutil
from typing import Dict, List, Tuple


# Old and new purple chat URL prefixes
OLD_PURPLE_CHAT_PREFIX = "https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation="
NEW_PURPLE_CHAT_PREFIX = "https://marketplace.moveworks.com/purple-chat?conversation="

# Slug renames needed
SLUG_RENAMES = {
    'Workday-manage-leave-of-absence-coverage': 'workday-manage-leave-of-absence-coverage',
    'gong-updated-CRM-based-on-sales-call': 'gong-updated-crm-based-on-sales-call',
    'wiki.js-search-knowledge-articles': 'wiki-js-search-knowledge-articles'
}

# Solution tags mapping by system/domain
SOLUTION_TAGS_BY_SYSTEM = {
    'servicenow': ['IT', 'Ticketing'],
    'jira': ['Project Management', 'Engineering'],
    'workday': ['HR - Other'],
    'salesforce': ['Sales'],
    'sap-success-factors': ['HR - Other'],
    'sap-concur': ['Finance - Expense Management'],
    'manage-engine': ['IT', 'Ticketing'],
    'zendesk': ['Support', 'Ticketing'],
    'freshdesk': ['Support', 'Ticketing'],
    'freshservice': ['IT', 'Ticketing'],
    'okta': ['Access Management', 'IT'],
    'duo': ['Access Management', 'IT'],
    'microsoft-graph': ['Productivity'],
    'zoom': ['Productivity'],
    'gong': ['Sales'],
    'greenhouse': ['HR - Recruiting & Talent'],
    'coupa': ['Finance - Procurement'],
    'box': ['Productivity'],
    'dropbox': ['Productivity'],
    'slack': ['Productivity'],
    'quip': ['Productivity'],
    'moveworks': ['General'],
    'beyondtrust': ['IT'],
    'vayusphere': ['Support'],
    'glia': ['Support'],
    '8x8': ['Support'],
    'axero': ['General'],
    'brightspot': ['General'],
    'comaround': ['General'],
    'adp': ['HR - Payroll'],
    'staffbase': ['HR - Workplace Culture'],
    'wordpress': ['General'],
    'promapp': ['General'],
    'rightanswers': ['General'],
    'screensteps': ['General'],
    'squiz-intranet': ['General'],
    'sysaid': ['IT', 'Ticketing'],
    'outlook': ['Productivity'],
    'solarwinds': ['IT'],
    'wolken': ['IT', 'Ticketing']
}


def extract_yaml_and_content(file_path: str) -> Tuple[Dict, str, str]:
    """Extract YAML frontmatter and content"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    if not content.startswith('---'):
        return {}, '', content

    end_idx = content.find('---', 3)
    if end_idx == -1:
        return {}, '', content

    yaml_str = content[3:end_idx].strip()
    remaining = content[end_idx + 3:]

    data = yaml.safe_load(yaml_str)
    return data if data else {}, yaml_str, remaining


def fix_purple_chat_url(data: Dict) -> bool:
    """Fix purple_chat_link URL to use new base"""
    if 'purple_chat_link' not in data:
        return False

    link = data['purple_chat_link']
    if link.startswith(OLD_PURPLE_CHAT_PREFIX):
        data['purple_chat_link'] = link.replace(
            OLD_PURPLE_CHAT_PREFIX,
            NEW_PURPLE_CHAT_PREFIX
        )
        return True

    return False


def remove_connector_purple_chat(data: Dict, is_connector: bool) -> bool:
    """Remove purple_chat_link from connectors"""
    if is_connector and 'purple_chat_link' in data:
        del data['purple_chat_link']
        return True
    return False


def add_missing_solution_tags(data: Dict, file_path: str, is_plugin: bool) -> bool:
    """Add solution_tags if missing (best effort) - plugins only"""
    if not is_plugin:
        return False  # Connectors don't have solution_tags

    if 'solution_tags' in data:
        return False

    # Extract system from path or YAML
    system = None
    if 'systems' in data and data['systems']:
        system = data['systems'][0]  # Use first system
    else:
        # Try to extract from path
        parts = file_path.split('/')
        if 'plugins' in parts:
            idx = parts.index('plugins')
            if idx + 1 < len(parts):
                slug = parts[idx + 1]
                # Extract system from slug (usually first part)
                system = slug.split('-')[0]

    if system and system in SOLUTION_TAGS_BY_SYSTEM:
        data['solution_tags'] = SOLUTION_TAGS_BY_SYSTEM[system]
        return True

    # Fallback to General
    data['solution_tags'] = ['General']
    return True


def fix_file(file_path: str, dry_run: bool = True) -> Tuple[bool, List[str]]:
    """Fix validation errors in a single file"""
    changes = []

    is_plugin = '/plugins/' in file_path
    is_connector = '/connectors/' in file_path

    if not (is_plugin or is_connector):
        return False, ["Skipped: Not a plugin or connector"]

    data, original_yaml, remaining = extract_yaml_and_content(file_path)

    if not data:
        return False, ["Skipped: No YAML frontmatter"]

    # Apply fixes
    if fix_purple_chat_url(data):
        changes.append("Fixed purple_chat_link URL")

    if remove_connector_purple_chat(data, is_connector):
        changes.append("Removed purple_chat_link from connector")

    if add_missing_solution_tags(data, file_path, is_plugin):
        changes.append(
            f"Added solution_tags: {data.get('solution_tags', [])}"
        )

    if not changes:
        return True, ["No changes needed"]

    # Write file if not dry run
    if not dry_run:
        try:
            new_yaml = yaml.dump(
                data,
                default_flow_style=False,
                allow_unicode=True,
                sort_keys=False,
                width=80
            )
            new_content = f"---\n{new_yaml}---{remaining}"

            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
        except Exception as e:
            return False, [f"ERROR: {e}"]

    return True, changes


def rename_slugs(dry_run: bool = True) -> List[str]:
    """Rename directories for slug format fixes"""
    changes = []

    for old_slug, new_slug in SLUG_RENAMES.items():
        old_path = f"./plugins/{old_slug}"
        new_path = f"./plugins/{new_slug}"

        if os.path.exists(old_path):
            if not dry_run:
                shutil.move(old_path, new_path)
            changes.append(f"Renamed {old_slug} -> {new_slug}")

    return changes


def fix_all_files(dry_run: bool = True):
    """Fix all files"""
    print("=" * 80)
    print("Auto-Fix V3 Validation Errors")
    print("=" * 80)
    print()

    if dry_run:
        print("🔍 DRY RUN MODE - No changes will be made")
    else:
        print("⚠️  APPLY MODE - Files will be modified!")

    print()

    # Fix slug renames first
    print("Fixing slug format issues:")
    print("-" * 80)
    slug_changes = rename_slugs(dry_run)
    for change in slug_changes:
        mode = "DRY-RUN" if dry_run else "RENAMED"
        print(f"✓ [{mode}] {change}")

    if not slug_changes:
        print("  No slug renames needed")

    print()

    # Fix files
    print("Fixing validation errors in files:")
    print("-" * 80)

    stats = {'fixed': 0, 'skipped': 0, 'errors': 0}

    for root in ['./connectors', './plugins']:
        for dirpath, _, files in os.walk(root):
            if 'README.md' in files:
                file_path = os.path.join(dirpath, 'README.md')
                success, changes = fix_file(file_path, dry_run)

                if not success:
                    stats['errors'] += 1
                    print(f"❌ {file_path}")
                    for change in changes:
                        print(f"   {change}")
                elif changes == ["No changes needed"]:
                    stats['skipped'] += 1
                else:
                    stats['fixed'] += 1
                    mode = "DRY-RUN" if dry_run else "FIXED"
                    print(f"✓ [{mode}] {file_path}")
                    for change in changes:
                        print(f"   - {change}")

    print()
    print("=" * 80)
    print("SUMMARY")
    print("=" * 80)
    print(f"Files fixed: {stats['fixed']}")
    print(f"Files skipped: {stats['skipped']}")
    print(f"Errors: {stats['errors']}")
    print(f"Slug renames: {len(slug_changes)}")
    print()

    if dry_run:
        print("✓ Dry run complete - no changes were made")
        print("  Run with --apply to actually fix files")
    else:
        print("✓ Auto-fix complete!")

    print("=" * 80)


def main():
    parser = argparse.ArgumentParser(
        description='Auto-fix V3 validation errors'
    )
    parser.add_argument(
        '--dry-run',
        action='store_true',
        help='Preview changes without modifying files'
    )
    parser.add_argument(
        '--apply',
        action='store_true',
        help='Apply fixes to files'
    )

    args = parser.parse_args()

    # Default to dry-run
    if not args.apply:
        args.dry_run = True

    fix_all_files(dry_run=args.dry_run)


if __name__ == '__main__':
    main()
