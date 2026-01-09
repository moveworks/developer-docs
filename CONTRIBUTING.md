# Getting Started

## Fork the Repository

**Important**: Use a personal GitHub account. GitHub EMU accounts cannot be used for forking external repositories.

1. Go to the repository on GitHub
2. Click the "Fork" button in the top right
3. Select your personal GitHub account as the destination

## Clone Your Fork

**Option A: GitHub Desktop (Recommended)**

1. Download and install [GitHub Desktop](https://desktop.github.com/)
2. Sign in with your personal GitHub account
3. Go to your forked repository on GitHub
4. Click the green "Code" button
5. Click "Open with GitHub Desktop"
6. Choose where to save the repository on your computer
7. Click "Clone"

GitHub Desktop automatically sets up the upstream remote for you, making it easy to stay in sync with the original repository.

**Option B: Command Line**

```bash
git clone https://github.com/YOUR-USERNAME/developer-docs.git
cd developer-docs

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

### Create a new branch

**Using GitHub Desktop:**
1. Click "Current Branch" at the top
2. Click "New Branch"
3. Name it `add-my-plugin` (or similar)
4. Click "Create Branch"

**Using Command Line:**
```bash
git checkout -b add-my-plugin
```

### Create a directory with a kebab-case slug

Create a new folder `plugins/my-new-plugin` in your file explorer or use the terminal:
```bash
mkdir plugins/my-new-plugin # Replace my-new-plugin with the name of your plugin
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

### Create a new branch

**Using GitHub Desktop:**
1. Click "Current Branch" at the top
2. Click "New Branch"
3. Name it `add-my-connector` (or similar)
4. Click "Create Branch"

**Using Command Line:**
```bash
git checkout -b add-my-connector
```

### Create a directory with a kebab-case slug

Create a new folder `connectors/my-new-system` in your file explorer or use the terminal:
```bash
mkdir connectors/my-new-system # Replace my-new-system with the name of your plugin
```

### Create `README.md` and copy this frontmatter template

```yaml
---
name: Your Connector Name
availability: IDEA
logo: <insert_url_here>
---
```

### Add connector logo (choose one option)

- **Option A:** Add `logo.png` to the directory (logo will be set automatically)
  - Must be a **square image** (same width and height)
  - Must be a PNG
  - Delete the `logo` field.

- **Option B:** Contact the Marketplace team in `#marketplace-content-operations` to upload to Adobe AEM
  - They will provide you with the hosted logo URL

### Fill in the required fields

- `name` - Display name (e.g., "SAP Concur")
- `availability` - One of: `IDEA`, `VALIDATED`, `BUILT_IN`, `INSTALLABLE`, `IMPOSSIBLE`
- `logo` - URL to hosted logo (if using Option B), or remove if Option A
- **DO NOT add** `purple_chat_link` or `systems` (plugins only)

### Add documentation below the frontmatter (optional but recommended)

- Setup instructions and authentication steps
- API documentation and available endpoints
- Configuration requirements
- Images or diagrams showing the integration
- See [connectors/workday-hcm/](./connectors/workday-hcm/) as an example

# Submitting Changes

## Validate Your Changes (Optional)

**Option A: Run locally**
```bash
python -m ci.validate_v3
```

**Option B: Let CI validate**
- Push your branch and open a PR
- CI will automatically run validation
- If validation fails, CI will post error details as a comment on your PR

## Commit and Push Your Changes

**Using GitHub Desktop:**

1. Open GitHub Desktop - you'll see your changed files in the left sidebar
2. Review your changes in the main panel
3. Check the boxes next to the files you want to commit (or leave all checked)
4. In the bottom left, add a commit message:
   - Summary: `Add [plugin/connector name]`
   - Description (optional): Additional details about your changes
5. Click "Commit to [your-branch-name]"
6. Click "Push origin" at the top to push your changes to GitHub

**Using Command Line:**
```bash
git add .
git commit -m "Add [plugin/connector name]"
git push origin add-my-plugin
```

## Open a Pull Request

**Using GitHub Desktop:**
1. After pushing, GitHub Desktop will show a "Create Pull Request" button
2. Click it to open GitHub in your browser
3. Fill in the PR description with:
   - What you're adding (plugin or connector name)
   - Brief description of functionality
   - Any special setup or configuration notes
4. Click "Create Pull Request"
5. CI will automatically run validation and post results

**Using GitHub Website:**
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

- **availability**:
  - `IDEA` - Not yet confirmed that Moveworks can support this integration
  - `VALIDATED` - Confirmed that Moveworks can support this, but not yet built
  - `BUILT_IN` - Built into the Moveworks platform and available to customers
  - `INSTALLABLE` - A template has been created with a full installation guide available on the marketplace
  - `IMPOSSIBLE` - Cannot be supported by Moveworks
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

**Using GitHub Desktop:**

1. Switch to the `main` branch:
   - Click "Current Branch" at the top
   - Select `main` from the list
2. Click "Fetch origin" to check for updates
3. If there are updates from upstream, GitHub Desktop will show "Pull origin"
4. Click "Pull origin" to get the latest changes
5. GitHub Desktop automatically syncs with the upstream repository (the original repo you forked from)

**Using Command Line:**

```bash
# Fetch latest changes from upstream
git fetch upstream

# Merge upstream main into your local main
git checkout main
git merge upstream/main

# Push updates to your fork
git push origin main
```
