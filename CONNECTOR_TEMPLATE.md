# Connector Template

Use this template when creating a new connector. Copy this file to your connector directory as `README.md` and fill in all required fields.

**Important**: Connectors represent business systems. They are simpler than plugins and have fewer fields.

```yaml
---
# REQUIRED FIELDS

# Display name for the connector (use proper capitalization)
# Example: "SAP Concur", "Workday HCM", "ServiceNow"
name: Your Connector Name

# Current availability status - must be one of:
# - IDEA: Conceptual connector idea
# - VALIDATED: Validated integration
# - BUILT_IN: Built into the platform
# - INSTALLABLE: Can be installed by users
# - IMPOSSIBLE: Not technically feasible
availability: BUILT_IN

# Logo URL (must be a valid URL)
# For Moveworks-hosted logos, use the format:
# https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/[slug]-integration-logo-primary.svg
# You can also use external URLs from the vendor's CDN
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/your-connector-integration-logo-primary.svg

# OPTIONAL FIELDS

# Brief description of the connector (must end with a period if present)
# Example: "A connector for managing expenses and travel."
# description: A connector for [describe the business system].

# Video URL demonstrating the connector
# video: https://www.youtube.com/watch?v=...

# Old slugs for URL redirection (must be unique across repository)
# Use this when renaming a connector to preserve old URLs
# redirects:
#   - old-connector-slug
#   - legacy-name
---

# Your Connector Name

Add your connector documentation here. This content appears below the frontmatter.

## Overview

Describe the business system this connector represents and what capabilities it provides.

## Authentication

Describe how to authenticate with this system (OAuth, API keys, etc.).

## Supported Operations

List the operations/APIs that are commonly used with this connector:

- Operation 1
- Operation 2
- Operation 3

## Prerequisites

List any requirements for integrating with this system:

- System version requirements
- Required permissions or roles
- API access requirements
- Configuration steps

## Setup Guide

Provide step-by-step instructions for setting up the connector:

1. Step 1
2. Step 2
3. Step 3

## Common Use Cases

Describe common use cases that plugins built on this connector can support:

- Use case 1
- Use case 2
- Use case 3

## API Documentation

Link to the vendor's API documentation:

- [Official API Docs](https://...)
- [Developer Portal](https://...)

## Notes

Add any additional notes, limitations, or considerations for this connector.
```

## Required Files

Connectors must include both files in their directory:

- [ ] `README.md` - This file with frontmatter and documentation
- [ ] `logo.png` - Connector logo image file

## Connector vs Plugin Differences

**Connectors CANNOT have these plugin-specific fields**:
- `purple_chat_link` - This will cause validation to FAIL
- `systems` - Connectors don't reference other connectors
- `solution_tags` - Business categorization is for plugins only
- `agent_capabilities` - Capabilities are for plugins only

**What Connectors Represent**:
- Business systems (SAP Concur, Workday, ServiceNow, etc.)
- Authentication and API integration details
- System capabilities and endpoints

**What Plugins Represent**:
- Specific use cases built on top of connectors
- User-facing functionality
- Business workflows and automations

## Field Validation Checklist

Before submitting, verify:

- [ ] `name` - Uses proper capitalization
- [ ] `availability` - Is one of: IDEA, VALIDATED, BUILT_IN, INSTALLABLE, IMPOSSIBLE
- [ ] `logo` - Is a valid URL (starts with `http://` or `https://`)
- [ ] `description` (if present) - Ends with a period (`.`)
- [ ] **NO** `purple_chat_link` field (this is plugins-only)
- [ ] **NO** plugin-specific fields (systems, solution_tags, agent_capabilities)
- [ ] Directory name is kebab-case (lowercase with hyphens)
- [ ] File is named `README.md` (case-insensitive)
- [ ] `logo.png` file exists in the same directory
- [ ] All image links point to existing files
- [ ] No external links to notion.so domains
- [ ] No absolute paths (starting with `/`)

## Validation

Run validation locally before submitting:

```bash
python -m ci.validate_v3
```

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed documentation on the V3 schema and validation rules.
