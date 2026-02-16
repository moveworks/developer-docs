"""
Generate a cleanup report for V3 schema migration.

This script analyzes validation errors and generates a concise,
actionable report for CI comments.
"""

import sys
import re
from collections import defaultdict


def parse_validation_errors(validation_output):
    """Parse validation output and group errors by type and file"""
    errors_by_type = defaultdict(list)
    current_error = None
    current_file = None

    lines = validation_output.strip().split('\n')

    for line in lines:
        # Match ERROR lines
        if line.startswith('ERROR:'):
            # Extract file path
            match = re.search(r'in (\./(?:connectors|plugins)/[^:]+):', line)
            if match:
                current_file = match.group(1)

            # Categorize error type
            if 'Unknown fields' in line:
                current_error = 'unknown_fields'
                # Extract unknown fields
                fields_match = re.search(r"Unknown fields[^:]*: (\{[^}]+\})", line)
                if fields_match:
                    fields_str = fields_match.group(1)
                    fields = eval(fields_str)  # Safe here as it's from our own output
                    errors_by_type[current_error].append({
                        'file': current_file,
                        'fields': sorted(fields)
                    })
            elif 'Missing required fields' in line:
                current_error = 'missing_fields'
                # Extract missing fields from next lines
                errors_by_type[current_error].append({
                    'file': current_file,
                    'fields': []
                })
            elif 'not kebab-case' in line:
                current_error = 'slug_format'
                errors_by_type[current_error].append(current_file)
            elif 'not Title Case' in line:
                current_error = 'title_case'
                errors_by_type[current_error].append(current_file)
            elif 'Invalid' in line and 'value' in line:
                current_error = 'invalid_enum'
                errors_by_type[current_error].append(current_file)
            elif 'must start with' in line or 'must end with' in line:
                current_error = 'description_format'
                errors_by_type[current_error].append(current_file)

    return errors_by_type


def generate_report(errors_by_type):
    """Generate a markdown report of errors"""
    if not errors_by_type:
        return "✅ No validation errors!"

    report_lines = []
    report_lines.append("## 📊 Validation Error Summary")
    report_lines.append("")

    # Count total errors
    total_files = set()
    for error_type, items in errors_by_type.items():
        if error_type == 'unknown_fields':
            total_files.update(item['file'] for item in items)
        else:
            total_files.update(items if isinstance(items, list) else [items])

    report_lines.append(f"**{len(total_files)} files** need attention")
    report_lines.append("")

    # Unknown fields (most common)
    if 'unknown_fields' in errors_by_type:
        items = errors_by_type['unknown_fields']
        report_lines.append(f"### ❌ Unknown Fields ({len(items)} files)")
        report_lines.append("")
        report_lines.append("The following files have fields that are not allowed in V3 schema:")
        report_lines.append("")

        # Group by fields to remove
        fields_to_files = defaultdict(list)
        for item in items:
            fields_key = tuple(item['fields'])
            fields_to_files[fields_key].append(item['file'])

        for fields, files in sorted(fields_to_files.items(), key=lambda x: len(x[1]), reverse=True):
            report_lines.append(f"**Remove fields:** `{', '.join(fields)}`")
            report_lines.append(f"- {len(files)} files affected")
            if len(files) <= 5:
                for f in files:
                    report_lines.append(f"  - {f}")
            else:
                for f in files[:3]:
                    report_lines.append(f"  - {f}")
                report_lines.append(f"  - ... and {len(files) - 3} more")
            report_lines.append("")

    # Missing fields
    if 'missing_fields' in errors_by_type:
        items = errors_by_type['missing_fields']
        report_lines.append(f"### ⚠️ Missing Required Fields ({len(items)} files)")
        report_lines.append("")
        report_lines.append("These files are missing required fields. Check the detailed error output for specifics.")
        report_lines.append("")

    # Other error types
    other_types = {
        'slug_format': '🔤 Slug Format Issues',
        'title_case': '📝 Title Case Issues',
        'invalid_enum': '🏷️ Invalid Enum Values',
        'description_format': '📄 Description Format Issues'
    }

    for error_type, title in other_types.items():
        if error_type in errors_by_type:
            items = errors_by_type[error_type]
            count = len(items) if isinstance(items, list) else 1
            report_lines.append(f"### {title} ({count} files)")
            report_lines.append("")

    report_lines.append("---")
    report_lines.append("")
    report_lines.append("**💡 Tip:** The detailed validation output below contains suggested fixes you can copy/paste!")
    report_lines.append("")

    return '\n'.join(report_lines)


def main():
    """Generate cleanup report from validation output"""
    # Read validation output from stdin
    validation_output = sys.stdin.read()

    # Parse errors
    errors_by_type = parse_validation_errors(validation_output)

    # Generate report
    report = generate_report(errors_by_type)

    # Output report
    print(report)


if __name__ == "__main__":
    main()
