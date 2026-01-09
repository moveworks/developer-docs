---
availability: INSTALLABLE
description: A plugin that dynamically queries snowflake based on a user's request.
installation_asset_uuid: b6aeead1-84c8-411b-b8cd-3279cd9b1c95
name: Snowflake Cortex Analyst
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+the+top+5+clusters+with+the+most+used+space%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+run+this+query+on+Snowflake+for+you.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+top+5+clusters+with+the+most+used+space.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+12345%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E500GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+67890%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E450GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+54321%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E420GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+98765%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E400GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+78901%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E380GB%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- snowflake
---

# Dynamic Queries with Snowflake Cortex Analyst

This plugin allows users to query Snowflake databases using natural language directly through the Moveworks AI Assistant. It leverages **Snowflake Cortex Analyst** to convert questions into SQL, providing instant insights from your semantic model.

With this plugin, users can:

- Ask plain English questions like “What were total Q4 sales?”
- Automatically generate and execute SQL queries using Snowflake Cortex
- View results from your Snowflake warehouse in real-time

This guide will walk you through the installation process in Agent Studio. Let’s get started!

---

## Prerequisites

- Access to **Agent Studio**
- A **semantic model** created in Snowflake (required for natural language interpretation)
    
    → [Follow this tutorial to create your model](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/tutorials/tutorial-1#introduction)
    
- A **Snowflake account** and **user role** with privileges to:
    - Create database, schema, and table objects
    - Manage a virtual warehouse
    - Access Cortex Analyst APIs

---

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+the+top+5+clusters+with+the+most+used+space%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+run+this+query+on+Snowflake+for+you.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+top+5+clusters+with+the+most+used+space.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+12345%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E500GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+67890%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E450GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+54321%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E420GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+98765%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E400GB%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECluster+78901%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUsed+Space%3A+%3C%2Fb%3E380GB%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

---

## Installation Steps

We recommend creating the **Snowflake connector** first before installing this plugin.

Please follow the [Snowflake Connector Guide](https://developer.moveworks.com/marketplace/package?id=snowflake&hist=home%2Cbrws) to create the connector.

For the **Query Snowflake with Snowflake Cortex Analyst** plugin, ensure the connector includes the following permissions:

- Access to `/api/v2/cortex/analyst/message` and `/api/v2/statements`

Once the connector is configured, continue with the standard plugin installation process in Agent Studio.

Visit our plugin installation documentation →

---

## Appendix

### API #1: Analyze User Query (Natural Language to SQL)

**Endpoint:**

`POST /api/v2/cortex/analyst/message`

→ Converts user intent to SQL based on the semantic model.

**Docs:**

[Snowflake Cortex Analyst API Docs](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/rest-api#send-message)

---

### API #2: Execute SQL

**Endpoint:**

`POST /api/v2/statements`

→ Executes the generated SQL and returns results from Snowflake.

**Docs:**

[Snowflake SQL Execution API](https://docs.snowflake.com/en/developer-guide/sql-api/submitting-requests)