# Plugin Template

Use this template when creating a new plugin. Copy this file to your plugin directory as `README.md` and fill in all required fields.

```yaml
---
# REQUIRED FIELDS

# Display name for the plugin (use proper capitalization)
# Example: "Look Up Invoice", "Create PTO Request", "SAP Concur Integration"
name: Your Plugin Name

# Brief description of what the plugin does (must end with a period)
# Example: "A plugin that allows users to retrieve detailed information about an invoice."
description: A plugin that [describe what your plugin does].

# Current availability status - must be one of:
# - IDEA: Conceptual plugin idea
# - VALIDATED: Validated use case
# - BUILT_IN: Built into the platform
# - INSTALLABLE: Can be installed by users
# - IMPOSSIBLE: Not technically feasible
availability: IDEA

# List of connector slugs (directory names from ./connectors/)
# These connectors must exist as directories in the repository
# Example: [sap-concur, workday-hcm]
systems:
  - connector-slug-1
  - connector-slug-2

# URL to purple chat conversation demonstrating the plugin
# Generate this from: https://marketplace.moveworks.com/purple-chat
# Must start with: https://marketplace.moveworks.com/purple-chat?conversation=
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=...

# Business categorization tags (multi-select, see ci/config.yaml for full list)
# Common tags include:
# - Finance: Finance - Expense Management, Finance - Payroll, Finance - Procurement, Finance - Other
# - HR: HR - Benefits, HR - Recruiting & Talent, HR - Onboarding, HR - Performance Management, etc.
# - Other: Engineering, IT, Legal, Marketing, Product, Sales, Support, Ticketing, etc.
solution_tags:
  - Solution Tag 1
  - Solution Tag 2

# OPTIONAL FIELDS

# Agent capabilities (multi-select, see ci/config.yaml for full list)
# Options:
# - Ambient Agent: Proactively monitors for conditions
# - Structured Data Analyzer: Analyzes structured data
# agent_capabilities:
#   - Ambient Agent

# UUID for installable plugins (required if availability is INSTALLABLE)
# installation_asset_uuid: 550e8400-e29b-41d4-a716-446655440000

# Video URL demonstrating the plugin
# video: https://www.youtube.com/watch?v=...

# Old slugs for URL redirection (must be unique across repository)
# Use this when renaming a plugin to preserve old URLs
# redirects:
#   - old-plugin-slug
#   - legacy-name
---

# Your Plugin Name

Add your plugin documentation here. This content appears below the frontmatter.

## Overview

Describe what your plugin does and why it's useful.

## Use Cases

- Use case 1
- Use case 2
- Use case 3

## Prerequisites

List any requirements or setup needed to use this plugin.

## Example Conversations

Show example conversations demonstrating how users interact with this plugin.

**User**: "Can you help me with [task]?"

**Assistant**: "[Response demonstrating the plugin]"

## Configuration

Describe any configuration steps required to set up this plugin.

## Notes

Add any additional notes, limitations, or considerations for users.
```

## Field Validation Checklist

Before submitting, verify:

- [ ] `name` - Uses proper capitalization
- [ ] `description` - Ends with a period (`.`)
- [ ] `availability` - Is one of: IDEA, VALIDATED, BUILT_IN, INSTALLABLE, IMPOSSIBLE
- [ ] `systems` - All connector slugs exist as directories in `./connectors/`
- [ ] `purple_chat_link` - Starts with `https://marketplace.moveworks.com/purple-chat?conversation=`
- [ ] `solution_tags` - All tags exist in [ci/config.yaml](ci/config.yaml)
- [ ] `agent_capabilities` (if present) - All values exist in [ci/config.yaml](ci/config.yaml)
- [ ] Directory name is kebab-case (lowercase with hyphens)
- [ ] File is named `README.md` (case-insensitive)
- [ ] All image links point to existing files
- [ ] No external links to notion.so domains
- [ ] No absolute paths (starting with `/`)

## Validation

Run validation locally before submitting:

```bash
python -m ci.validate_v3
```

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed documentation on the V3 schema and validation rules.
