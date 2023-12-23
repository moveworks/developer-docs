# Developer Resources

## Overview

Welcome to your comprehensive resource library, specially designed to help you succeed with building your own copilot experiences in Moveworks.

1. **Authentication Guide** (`./authentication-guides`): Connecting to systems should be a straightforward process. Follow these authentication guides to connect to your favorite systems.

2. **Design Patterns** (`./design-patterns`): There's a lot you can build with Creator Studio's capabilities. Read up on these design patterns to master the most common types of use cases and how to approach them in Creator Studio

3. **Use Case Guides** (`./use-case-guides`): Some use cases are just too hot not to have. Follow our use case guides for end-to-end tutorials on the most popular use cases.


## Prerequisites

You'll need a running [Github Desktop](https://desktop.github.com/) setup. If you haven't installed it yet, refer to the official Github Desktop guide.

## Add your own guide

1. **Fork the Repository**: On the main page of the repository, click on **`Fork`** button located in the upper right-hand corner. This will create a copy of the repository in your account.

2. **Clone the Repository**: Open GitHub Desktop and click on **`File -> Clone repository`**, select the forked repository from the list and choose the local folder where you want the repository files.

3. **Create a New Branch**: In GitHub Desktop, click on the branch dropdown and select **`New Branch`** option. Give the branch a name (e.g., **`add-my-use-case-guide`**). Click the **`Create Branch`** button.

4. **Add Your Content**: Navigate to the cloned repository folder using your file explorer. From there, move to the directory where you want to add a guide (i.e., either **`./use-case-guide`**, **`./design-pattern`**, or **`./system-guide`**). In this directory, create a new "guide directory", which must include a `README.md` file, along with any other necessary files.

5. **Ensure Your Guide Adheres to the Format**: Your README.md file and accompanying files must follow [the rules below](#guide-requirements).

6. **Add and Commit the Changes**: Return to GitHub Desktop. You should see the files you added listed under "Changes". Provide a summary and description for changes made, then click on **`Commit to <your-branch-name>`**.

7. **Push the Changes**: Click on the **`Push origin`** button at the top to push your changes to the remote repository on GitHub.

8. **Create a Pull Request**: Navigate back to your forked repository on GitHub, switch to your branch, and click on **`Pull request`**. Fill out the pull request form, then click on **`Create pull request`**.

## Editing Files

If you're making changes to existing files or if you'd like to work via Github directly:

1. Navigate to the file you want to edit.
2. Click on the pencil icon in the top-right corner of the file view to edit.
3. Make your changes, then scroll down to see the `Propose changes` button. Click on it.
4. You will be redirected to the 'Comparing changes' view, where you can create a pull request.


## Closing Thoughts

Thank you for contributing to our resource library. Your effort will go a long way in enhancing the experience of developers just like you. If you need further assistance, please reach out.

- [Academy](https://academy.moveworks.com/page/persona-developer)
- [Community](https://community.moveworks.com/developer-hub-6)
- [Support](https://developer.moveworks.com/creator-studio/support/)


## Guide Requirements

When you create a new guide, you'll create a "content folder" in one of the guide directories:

1. Authentication Guide (`./authentication-guides`)
2. Design Patterns (`./design-patterns`)
3. Use Case Guides (`./use-case-guides`)

You'll need to make sure your content follows these rules:

### URL Rules

URLs are written as `[Text](link)`

1. URLs should only point to publicly accessible URLs.
2. URLs should only point to assets within your content folder. You can reference README files from other guides, but do not access their images in your guides.

### File Structure

1. Your content folder should be unique across the repository (regardless of )
2. Every content folder MUST have a `README.md`
3. If you're building an Authentication Guide, you must have a `logo.png` in your content folder.

### File Metadata

Some metadata needs to be placed at the top of the file. That metadata changes based on the type of guide you're creating.

#### Authentication Guides

Files in this directory require the following content at the top of the file:

```markdown
---
name: <Guide Name>   # The name of the guide
description: <Description>   # Brief description of the guide
time_in_minutes: <Time in Minutes>   # Time in minutes to complete the guide
difficulty_level: <Difficulty Level>  # Difficulty level: "Beginner", "Intermediate", or "Advanced"
---
```

#### Design Patterns

Files in this directory require the following content at the top of the file:

```markdown
---
id: <Design Pattern ID>  # Unique ID number for the design pattern
name: <Design Pattern Name>   # Name of the design pattern
description: <Description>   # Brief description of the design pattern
time_in_minutes: <Time in Minutes>  # Time in minutes to complete the pattern
purple_chat_link: <Purple Chat Link>   # URL of the related chat
difficulty_level: <Difficulty Level>   # Difficulty level: "Beginner", "Intermediate", or "Advanced"
---
```

#### Use Case Guides

Files in this directory require the following content at the top of the file:

```markdown
---
design_pattern_id: <Design Pattern ID>  # The ID of the associated design pattern
name: <Use Case Name>  # Name of the use case
description: <Description>  # Brief description of the use case
systems: [<System1>, <System2>, ...]  # List of systems involved in the use case
purple_chat_link: <Purple Chat Link>  # URL of the linked chat
time_in_minutes: <Time in Minutes>  # Time in minutes to complete the use case
difficulty_level: <Difficulty Level>  # Difficulty level: "Beginner", "Intermediate", or "Advanced"
---
```

Rules:

1. `systems`: This field should be an array of folder names from the `./authentication-guides` directory.
2. `design_pattern_id`: This should match the id of an existing design pattern in the design-patterns directory.
