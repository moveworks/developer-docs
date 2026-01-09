# AI Agent Marketplace

Welcome to the source for our [Marketplace](https://marketplace.moveworks.com). It helps you discover and add new AI Agents to your Assistant.

In the AI Agent Marketplace, you will find...

1. **Plugins** (`./plugins`): Example plugins that you can add to your Assistant
3. **Connectors** (`./connectors`): Documentation on business systems and how to authenticate with them.

## Contributing

We welcome contributions to the AI Agent Marketplace. Whether you're adding a new plugin, connector, or improving existing documentation, please follow our guidelines to ensure quality and consistency.

### V3 Schema

This repository uses the V3 schema, which enforces strict validation rules to maintain consistency across all content. Key requirements include:

- **Strict Field Validation**: Only allowed fields are accepted (unknown fields will fail validation)
- **Kebab-case Slugs**: Directory names must be lowercase with hyphens (e.g., `sap-concur`)
- **Required Fields**: All required fields must be present (varies by content type)
- **Enum Validation**: Field values must match those defined in [ci/config.yaml](ci/config.yaml)
- **Format Rules**: Descriptions must end with periods, purple chat links are plugins-only, etc.

### Quick Start

See [CONTRIBUTING.md](CONTRIBUTING.md) for complete step-by-step instructions on adding plugins and connectors, including:
- Copy-paste frontmatter templates
- Field explanations with examples
- Logo requirements and upload instructions
- Validation options (local and CI)
- PR submission workflow

### Running Tests Locally

Before submitting a pull request, run validation locally to catch errors early:

```bash
python -m ci.validate_v3
```

This will validate all plugins and connectors against the V3 schema, checking for:
- Correct frontmatter fields and formats
- Kebab-case directory names
- Valid enum values
- Broken links and images
- Duplicate slugs and redirects

If validation passes, you'll see:
```
✅ ALL VALIDATIONS PASSED!
```

If validation fails, error messages will indicate what needs to be fixed.

## Closing Thoughts

If you need further assistance, please reach out.

- [Academy](https://academy.moveworks.com)
- [Community](https://community.moveworks.com/developer-hub-6)
- [Support](https://developer.moveworks.com/creator-studio/support/)

***Disclaimer:** This code is provided as an example only and is not designed for production use. You should fully understand the code and consider all the security implications before using it in a live environment.
