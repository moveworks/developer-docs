# Contributing to the AI Agent Marketplace

Welcome to the AI Agent Marketplace documentation repository. This guide will help you understand the V3 schema and how to contribute new plugins and connectors.

## Table of Contents

- [Overview](#overview)
- [V3 Schema Changes](#v3-schema-changes)
- [Plugin Schema](#plugin-schema)
- [Connector Schema](#connector-schema)
- [Validation Rules](#validation-rules)
- [Adding New Content](#adding-new-content)
- [Running Validation Locally](#running-validation-locally)
- [Troubleshooting](#troubleshooting)

## Overview

The AI Agent Marketplace uses a strict V3 schema to ensure consistency and quality across all plugin and connector documentation. The V3 schema enforces strict field validation and requires specific formats for slugs, names, and descriptions.

### Repository Structure

```
developer-docs/
├── connectors/          # Business system connectors
│   └── [slug]/
│       ├── README.md    # Connector metadata (frontmatter) and docs
│       └── logo.png     # Required connector logo
├── plugins/             # Plugin examples
│   └── [slug]/
│       └── README.md    # Plugin metadata (frontmatter) and docs
└── ci/                  # Validation scripts and configuration
    ├── validate_v3.py   # V3 validation script
    ├── config.yaml      # Valid enum values
    └── model.py         # V3 constants and field definitions
```

## V3 Schema Changes

The V3 schema migration removed several legacy fields and introduced stricter validation rules.

### Removed Fields

The following fields have been **completely removed** from the V3 schema and will cause validation failures if present:

- `fidelity` - Replaced by `availability`
- `difficulty_level` - No longer tracked
- `time_in_minutes` - No longer tracked
- `accreditations` - No longer tracked
- `drop_accreditations` - No longer tracked
- `design_pattern_id` - No longer tracked
- `installation_link` - Replaced by `installation_asset_uuid`
- `custom_tags` - Use `solution_tags` instead

### Key Changes

1. **Strict Field Validation**: Any field not in the allowed set will cause validation to fail
2. **Kebab-case Slugs**: Directory names must be lowercase with hyphens (e.g., `sap-concur`)
3. **Description Format**: Descriptions must end with a period (`.`)
4. **Purple Chat Scope**: `purple_chat_link` field is **plugins only** (connectors cannot have this field)
5. **Enum Validation**: All enum fields are validated against [ci/config.yaml](ci/config.yaml)

## Plugin Schema

Plugins represent example use cases that can be added to your AI Assistant.

### Required Fields

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `name` | string | Display name for the plugin | `Look Up Invoice` |
| `description` | string | Brief description ending with period | `A plugin that allows users to retrieve detailed information about an invoice.` |
| `availability` | enum | Current availability status | `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE` |
| `systems` | list | List of connector slugs (must exist as directories) | `[sap-concur]` |
| `purple_chat_link` | string | URL to purple chat conversation | `https://marketplace.moveworks.com/purple-chat?conversation=...` |
| `solution_tags` | list | Business categorization tags | `[Finance - Procurement, Finance - Other]` |

### Optional Fields

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `agent_capabilities` | list | Agent capability tags | `[Ambient Agent, Structured Data Analyzer]` |
| `installation_asset_uuid` | string | UUID for installable plugins | `550e8400-e29b-41d4-a716-446655440000` |
| `video` | string | Video URL | `https://www.youtube.com/watch?v=...` |
| `redirects` | list | Old slugs for URL redirection | `[old-plugin-name, legacy-name]` |

### Valid Values for Enums

All enum values are defined in [ci/config.yaml](ci/config.yaml):

#### Availability
- `IDEA` - Conceptual plugin idea
- `VALIDATED` - Validated use case
- `BUILT_IN` - Built into the platform
- `INSTALLABLE` - Can be installed by users
- `IMPOSSIBLE` - Not technically feasible

#### Agent Capabilities
- `Ambient Agent` - Proactively monitors for conditions
- `Structured Data Analyzer` - Analyzes structured data

#### Solution Tags
Over 50 business categorization tags including:
- Finance: `Finance - Expense Management`, `Finance - Payroll`, `Finance - Procurement`, `Finance - Other`
- HR: `HR - Benefits`, `HR - Recruiting & Talent`, `HR - Onboarding`, `HR - Performance Management`, etc.
- Other: `Engineering`, `IT`, `Legal`, `Marketing`, `Product`, `Sales`, `Support`, etc.

See [ci/config.yaml](ci/config.yaml) for the complete list.

## Connector Schema

Connectors represent business systems that plugins can integrate with.

### Required Fields

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `name` | string | Display name for the connector | `SAP Concur` |
| `availability` | enum | Current availability status | `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE` |
| `logo` | string | Logo URL (must be valid) | `https://www.moveworks.com/content/dam/...` |

### Optional Fields

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `description` | string | Brief description ending with period | `A connector for managing expenses and travel.` |
| `video` | string | Video URL | `https://www.youtube.com/watch?v=...` |
| `redirects` | list | Old slugs for URL redirection | `[old-connector-name]` |

### Important: Connectors vs Plugins

- Connectors **CANNOT** have a `purple_chat_link` field (validation will fail)
- Connectors **MUST** have a `logo.png` file in their directory
- Connectors represent systems, plugins represent use cases

## Validation Rules

The V3 schema enforces strict validation rules. All rules are implemented in [ci/validate_v3.py](ci/validate_v3.py).

### Slug Format (Directory Name)

**Rule**: Directory names must be kebab-case (lowercase with hyphens)

**Valid Examples**:
- `sap-concur`
- `workday-hcm`
- `servicenow`

**Invalid Examples**:
- `SAP-Concur` (uppercase)
- `sap_concur` (underscores)
- `sapConcur` (camelCase)

### Name Format

**Rule**: Display names should use proper capitalization for readability

**Examples**:
- `SAP Concur`
- `Workday HCM`
- `ServiceNow`

Note: The strict Title Case validation has been disabled due to edge cases (e.g., `8x8`, `iNow`, articles, prepositions).

### Description Format

**Rule**: Descriptions must end with a period (`.`)

**Valid Example**:
```yaml
description: A plugin that allows users to retrieve detailed information about an invoice.
```

**Invalid Example**:
```yaml
description: A plugin that retrieves invoice information
```

Note: The description prefix check (`A plugin that...` for plugins, `A connector for...` for connectors) has been removed for flexibility.

### Purple Chat Link Scope

**Rule**: Only plugins can have `purple_chat_link` field

**Plugins (Valid)**:
```yaml
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=...
```

**Connectors (Invalid)**:
```yaml
# This will cause validation to FAIL
purple_chat_link: https://...
```

### Systems Validation

**Rule**: All system slugs in a plugin's `systems` field must reference existing connector directories

**Example**: If a plugin has `systems: [sap-concur]`, then `./connectors/sap-concur/` must exist.

### Enum Validation

**Rule**: All enum field values must be defined in [ci/config.yaml](ci/config.yaml)

This includes:
- `availability`
- `agent_capabilities`
- `solution_tags`

### Redirects Validation

**Rule**: All redirect slugs must be unique across the entire repository

**Example**: If `plugin-a` has `redirects: [old-name]`, then no other plugin or connector can use `old-name` in their redirects.

### Directory Structure

**Connectors** must have:
- `README.md` (case-insensitive)
- `logo.png` (case-insensitive)

**Plugins** must have:
- `README.md` (case-insensitive)

### Link Validation

**Rules**:
- No external links to `notion.so` domains
- No absolute paths (starting with `/`)
- All relative links must point to existing files
- All image links must point to existing files

## Adding New Content

### Adding a New Plugin

1. **Create directory with kebab-case slug**:
   ```bash
   mkdir plugins/my-new-plugin
   ```

2. **Create README.md using the template**:
   ```bash
   cp PLUGIN_TEMPLATE.md plugins/my-new-plugin/README.md
   ```

3. **Fill in all required fields**:
   - Update `name`, `description`, `availability`
   - Add connector slugs to `systems` (must exist in `./connectors/`)
   - Generate a `purple_chat_link` from the marketplace
   - Select appropriate `solution_tags` from [ci/config.yaml](ci/config.yaml)

4. **Add optional fields as needed**:
   - `agent_capabilities` if applicable
   - `video` if you have a demo
   - `redirects` if migrating from old slug

5. **Run validation**:
   ```bash
   python -m ci.validate_v3
   ```

### Adding a New Connector

1. **Create directory with kebab-case slug**:
   ```bash
   mkdir connectors/my-new-system
   ```

2. **Add required files**:
   ```bash
   cp CONNECTOR_TEMPLATE.md connectors/my-new-system/README.md
   # Add logo.png to the directory
   ```

3. **Fill in all required fields**:
   - Update `name`, `availability`, `logo`
   - Add `description` if desired (optional but recommended)

4. **Do NOT add plugin-specific fields**:
   - No `purple_chat_link` (validation will fail)
   - No `systems`, `solution_tags`, or `agent_capabilities`

5. **Run validation**:
   ```bash
   python -m ci.validate_v3
   ```

## Running Validation Locally

Before submitting a PR, always run validation locally to catch errors early.

### Prerequisites

```bash
# Python 3.7+ required
python --version

# Install dependencies (if any)
pip install -r requirements.txt  # If requirements.txt exists
```

### Run V3 Validation

```bash
# From the developer-docs/ directory
python -m ci.validate_v3
```

### Understanding Validation Output

**Success**:
```
============================================================
Running V3 Schema Validation
============================================================

Validating 889 files...
  - 123 connectors
  - 766 plugins

✓ No duplicate slugs found
============================================================
✅ ALL VALIDATIONS PASSED!
============================================================
```

**Failure**:
```
============================================================
Running V3 Schema Validation
============================================================

Validating 889 files...
  - 123 connectors
  - 766 plugins

✓ No duplicate slugs found
ERROR: Unknown fields in ./plugins/my-plugin/README.md: {'custom_tags'}.
V3 schema only allows: {'name', 'description', ...}

============================================================
❌ VALIDATION FAILED with 1 errors:
============================================================
  • ./plugins/my-plugin/README.md: Plugin schema validation failed
```

### Common Validation Errors

| Error | Cause | Solution |
|-------|-------|----------|
| `Unknown fields: {'fidelity'}` | Using removed V2 field | Remove the field entirely |
| `Slug 'My-Plugin' is not kebab-case` | Directory name has uppercase | Rename directory to lowercase with hyphens |
| `Description must end with period` | Missing period at end | Add `.` to end of description |
| `Connector has purple_chat_link field` | Plugin-only field on connector | Remove `purple_chat_link` from connector |
| `Invalid system 'foo'` | System slug doesn't exist | Create connector directory or fix typo |
| `Invalid solution_tags value 'Custom'` | Value not in config.yaml | Use valid value from config.yaml |
| `Missing required fields: {'name'}` | Required field missing | Add all required fields |

## Troubleshooting

### My plugin validation fails with "Unknown fields"

**Problem**: You're using a field that's not in the V3 schema.

**Solution**: Check if the field was removed in V3 (see [Removed Fields](#removed-fields)). If it's a new field, it must be added to the schema in [ci/model.py](ci/model.py) first.

### My connector has a purple_chat_link and validation fails

**Problem**: The `purple_chat_link` field is plugins-only.

**Solution**: Remove the `purple_chat_link` field from connector frontmatter. Only plugins should have this field.

### Validation fails with "Invalid system 'my-system'"

**Problem**: Your plugin references a connector that doesn't exist.

**Solution**: Either create the connector directory first, or fix the typo in the system slug. The slug must match the directory name exactly.

### My description is rejected

**Problem**: Description doesn't end with a period.

**Solution**: Add a period (`.`) at the end of your description.

### Slug validation fails

**Problem**: Directory name is not kebab-case.

**Solution**: Rename the directory to use only lowercase letters, numbers, and hyphens. Examples: `sap-concur`, `my-plugin-123`.

### Duplicate redirects error

**Problem**: Multiple plugins/connectors have the same redirect slug.

**Solution**: Redirects must be unique across the entire repository. Remove or change the duplicate redirect.

## Getting Help

If you need further assistance:

- [Academy](https://academy.moveworks.com)
- [Community](https://community.moveworks.com/developer-hub-6)
- [Support](https://developer.moveworks.com/creator-studio/support/)

## Additional Resources

- [Plugin Template](PLUGIN_TEMPLATE.md) - Minimal plugin frontmatter template
- [Connector Template](CONNECTOR_TEMPLATE.md) - Minimal connector frontmatter template
- [V3 Validation Script](ci/validate_v3.py) - Complete validation logic
- [Config File](ci/config.yaml) - Valid enum values
- [Model Definitions](ci/model.py) - V3 constants and field definitions
