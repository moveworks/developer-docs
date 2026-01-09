# Contributing to the AI Agent Marketplace

## How to Add a Plugin

1. **Create a directory with a kebab-case slug**
   ```bash
   mkdir plugins/my-new-plugin
   ```

2. **Create `README.md` and copy this frontmatter template**
   ```yaml
   ---
   name: Your Plugin Name
   description: A plugin that does something useful.
   availability: IDEA
   systems:
     - connector-slug
   purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=...
   solution_tags:
     - Finance - Other
   ---
   ```

3. **Fill in the fields**
   - `name` - Display name (e.g., "Look Up Invoice")
   - `description` - Must end with a period
   - `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
   - `systems` - List of connector slugs from [./connectors/](./connectors/) directory (e.g., `[sap-concur, workday-hcm]`)
   - `purple_chat_link` - Generate a conversation at [marketplace.moveworks.com/purple-chat](https://marketplace.moveworks.com/purple-chat) and copy the URL
   - `solution_tags` - Pick from [ci/config.yaml](ci/config.yaml) (e.g., `Finance - Procurement`, `HR - Benefits`, `Engineering`)

4. **Validate**
   - **Option A:** Run locally: `python -m ci.validate_v3`
   - **Option B:** Push your branch, open a PR to `main`, and CI will post validation results as comments

## How to Add a Connector

1. **Create a directory with a kebab-case slug**
   ```bash
   mkdir connectors/my-new-system
   ```

2. **Create `README.md` and copy this frontmatter template**
   ```yaml
   ---
   name: Your Connector Name
   availability: BUILT_IN
   logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/your-connector-integration-logo-primary.svg
   ---
   ```

3. **Add `logo.png` to the directory**
   - Must be a **square image** (same width and height)
   - **SVG format preferred**
   - To upload to Adobe AEM, submit a request in `#marketplace-content-operations`

4. **Fill in the fields**
   - `name` - Display name (e.g., "SAP Concur")
   - `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
   - `logo` - URL to the hosted logo (Adobe AEM URL after upload)
   - **DO NOT add** `purple_chat_link` or `systems` (plugins only)

5. **Validate**
   - **Option A:** Run locally: `python -m ci.validate_v3`
   - **Option B:** Push your branch, open a PR to `main`, and CI will post validation results as comments

## Valid Values Reference

- **availability**: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
- **solution_tags**: See [ci/config.yaml](ci/config.yaml) for full list (Finance, HR, Engineering, IT, etc.)
- **agent_capabilities**: `Ambient Agent`, `Structured Data Analyzer`
- **systems**: Must match directory names in [./connectors/](./connectors/)
