# Getting Started

## Fork the Repository

**Important**: Use a personal GitHub account. GitHub EMU accounts cannot be used for forking external repositories.

1. Go to the repository on GitHub
2. Click the "Fork" button in the top right
3. Select your personal GitHub account as the destination

## Clone Your Fork

```bash
git clone https://github.com/YOUR-USERNAME/developer-docs.git
cd developer-docs
```

## Set Up Remote

```bash
# Add upstream remote to stay in sync
git remote add upstream https://github.com/moveworks/developer-docs.git

# Verify remotes
git remote -v
```

## Install Dependencies (Optional for Local Validation)

```bash
pip install -r ci/requirements.txt
```

# Creating Content

## Plugin

### Create a directory with a kebab-case slug

```bash
git checkout -b add-my-plugin
mkdir plugins/my-new-plugin
```

### Create `README.md` and copy this frontmatter template

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

### Fill in the required fields

- `name` - Display name (e.g., "Look Up Invoice")
- `description` - Must end with a period
- `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
- `systems` - List of connector slugs from [./connectors/](./connectors/) directory (e.g., `[sap-concur, workday-hcm]`)
- `purple_chat_link` - Generate a conversation at [marketplace.moveworks.com/purple-chat](https://marketplace.moveworks.com/purple-chat) and copy the URL
- `solution_tags` - Pick from [ci/config.yaml](ci/config.yaml) (e.g., `Finance - Procurement`, `HR - Benefits`, `Engineering`)

### Add documentation below the frontmatter (optional but recommended)

- Research notes about how the plugin works
- API endpoints and authentication requirements
- Example use cases and workflows
- Images, diagrams, or screenshots
- Any additional context for developers

## Connector

### Create a directory with a kebab-case slug

```bash
git checkout -b add-my-connector
mkdir connectors/my-new-system
```

### Create `README.md` and copy this frontmatter template

```yaml
---
name: Your Connector Name
availability: BUILT_IN
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/your-connector-integration-logo-primary.svg
---
```

### Add connector logo (choose one option)

- **Option A:** Add `logo.png` to the directory (logo will be set automatically)
  - Must be a **square image** (same width and height)
  - **SVG format preferred**
- **Option B:** Contact the Marketplace team in `#marketplace-content-operations` to upload to Adobe AEM
  - They will provide you with the hosted logo URL

### Fill in the required fields

- `name` - Display name (e.g., "SAP Concur")
- `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
- `logo` - URL to hosted logo (if using Option B), or leave as-is if using Option A
- **DO NOT add** `purple_chat_link` or `systems` (plugins only)

### Add documentation below the frontmatter (optional but recommended)

- Setup instructions and authentication steps
- API documentation and available endpoints
- Configuration requirements
- Images or diagrams showing the integration
- See [connectors/workday-hcm/](./connectors/workday-hcm/) as an example

# Submitting Changes

## Validate Your Changes

**Option A: Run locally**
```bash
python -m ci.validate_v3
```

**Option B: Let CI validate**
- Push your branch and open a PR
- CI will automatically run validation
- If validation fails, CI will post error details as a comment on your PR

## Commit Your Changes

```bash
git add .
git commit -m "Add [plugin/connector name]"
```

## Push to Your Fork

```bash
git push origin add-my-plugin
```

## Open a Pull Request

1. Go to the original repository on GitHub
2. Click "New Pull Request"
3. Click "compare across forks"
4. Select your fork and branch
5. Fill in the PR description with:
   - What you're adding (plugin or connector name)
   - Brief description of functionality
   - Any special setup or configuration notes
6. Submit the PR
7. CI will automatically run validation and post results

## Address CI Feedback

- If validation passes: ✅ Your PR is ready for review
- If validation fails: CI will post a comment with error details
  - Fix the issues locally
  - Commit and push the fixes
  - CI will automatically re-run

# Reference

## Valid Values

See [ci/config.yaml](ci/config.yaml) for all valid enum values:

- **availability**: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
- **solution_tags**: Finance, HR, Engineering, IT, etc.
- **agent_capabilities**: `Ambient Agent`, `Structured Data Analyzer`
  - To add new capabilities, modify [ci/config.yaml](ci/config.yaml) and include it in your PR
- **systems**: Must match directory names in [./connectors/](./connectors/)

## Validation Rules

- **Slugs**: Directory names must be kebab-case (lowercase-with-hyphens)
- **Descriptions**: Must end with a period (`.`)
- **purple_chat_link**: Plugins only (connectors cannot have this field)
- **systems**: Must reference existing connector directories
- **Enum values**: All must be from [ci/config.yaml](ci/config.yaml)

## Staying in Sync

Keep your fork up to date with the upstream repository:

```bash
# Fetch latest changes from upstream
git fetch upstream

# Merge upstream main into your local main
git checkout main
git merge upstream/main

# Push updates to your fork
git push origin main
```
