# Contributing to the AI Agent Marketplace

## Plugin Template

Copy this frontmatter into `plugins/[your-slug]/README.md`:

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

## Connector Template

Copy this frontmatter into `connectors/[your-slug]/README.md`:

```yaml
---
name: Your Connector Name
availability: BUILT_IN
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/your-connector-integration-logo-primary.svg
---
```

## Validation

**Option 1: Run locally**

```bash
python -m ci.validate_v3
```

**Option 2: Let CI run it**

1. Push your branch: `git push origin your-branch-name`
2. Open a pull request to `main`
3. Check the PR - CI will run validation and post results as comments if there are issues

## Valid Values

See [ci/config.yaml](ci/config.yaml) for all valid enum values:
- `availability`: IDEA, VALIDATED, BUILT_IN, INSTALLABLE, IMPOSSIBLE
- `solution_tags`: Finance - Procurement, HR - Benefits, Engineering, IT, etc.
- `agent_capabilities`: Ambient Agent, Structured Data Analyzer
