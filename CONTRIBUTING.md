# Contributing to the AI Agent Marketplace

## How to Add a Plugin

1. **Create a directory with a kebab-case slug**
   ```bash
   mkdir plugins/my-new-plugin
   ```

2. **Copy the plugin template**
   ```bash
   cp PLUGIN_TEMPLATE.md plugins/my-new-plugin/README.md
   ```

3. **Fill in the required fields in the frontmatter**
   - `name` - Display name (e.g., "Look Up Invoice")
   - `description` - Must end with a period (e.g., "A plugin that retrieves invoice details.")
   - `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
   - `systems` - List of connector slugs (e.g., `[sap-concur]`) - must exist in [./connectors/](./connectors/)
   - `purple_chat_link` - Purple chat conversation URL
   - `solution_tags` - Business tags from [ci/config.yaml](ci/config.yaml) (e.g., `[Finance - Procurement]`)

4. **Run validation**
   ```bash
   python -m ci.validate_v3
   ```

## How to Add a Connector

1. **Create a directory with a kebab-case slug**
   ```bash
   mkdir connectors/my-new-system
   ```

2. **Copy the connector template and add logo**
   ```bash
   cp CONNECTOR_TEMPLATE.md connectors/my-new-system/README.md
   # Add logo.png to the directory (required)
   ```

3. **Fill in the required fields in the frontmatter**
   - `name` - Display name (e.g., "SAP Concur")
   - `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
   - `logo` - Logo URL (e.g., `https://www.moveworks.com/content/dam/...`)
   - **DO NOT add** `purple_chat_link` (plugins only - will cause validation to fail)

4. **Run validation**
   ```bash
   python -m ci.validate_v3
   ```

## Key Rules

- **Slugs**: Directory names must be kebab-case (lowercase-with-hyphens)
- **Descriptions**: Must end with a period (`.`)
- **purple_chat_link**: Plugins only (connectors cannot have this field)
- **systems**: Must reference existing connector directories
- **Enum values**: All must be from [ci/config.yaml](ci/config.yaml)

## Getting Help

- [Plugin Template](PLUGIN_TEMPLATE.md) - Full plugin frontmatter template
- [Connector Template](CONNECTOR_TEMPLATE.md) - Full connector frontmatter template
- [Valid enum values](ci/config.yaml) - All valid values for availability, solution_tags, agent_capabilities
- [Academy](https://academy.moveworks.com)
- [Community](https://community.moveworks.com/developer-hub-6)
- [Support](https://developer.moveworks.com/creator-studio/support/)
