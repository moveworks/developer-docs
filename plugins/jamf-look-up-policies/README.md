---
availability: IDEA
description: A plugin that allows IT administrators to instantly retrieve details
  of Jamf policies , such as software deployments, configuration enforcements, or
  maintenance scripts, directly through the Moveworks AI Assistant.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Look Up Policies
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22list+policies%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Validating+user%27s+Jamf+administrator+permissions.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Identifying+missing+parameters.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+provide+a+policy+name+or+keyword+to+search+for.+Alternatively%2C+do+you+want+to+search+by+a+policy+type%3F+%28ex%3A+software+installation%2C+configuration+policies%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22configuration+policy%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Jamf+for+policies+with+%27configuration%27+in+their+name+or+description.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+multiple+policies+related+to+%27configuration%27%3A+%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E1.+%3Cb%3EmacOS+Configuration+Baseline%3C%2Fb%3E+%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E2.+%3Cb%3EWi-Fi+Network+Configuration%3C%2Fb%3E+%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E3.+%3Cb%3EVPN+Configuration+Profile+Update%3C%2Fb%3E+%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhich+one+would+you+like+to+view+details+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22macOS+Configuration+Baseline%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+detailed+information+for+the+%27macOS+Configuration+Baseline%27+policy+from+Jamf.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EmacOS+Configuration+Baseline%3C%2Fb%3E+policy%3A%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EPolicy+Name%3C%2Fb%3E%3A+macOS+Configuration+Baseline%3C%2Fli%3E%3Cli%3E%3Cb%3EPolicy+ID%3C%2Fb%3E%3A+101%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3C%2Fb%3E%3A+Enabled%3C%2Fli%3E%3Cli%3E%3Cb%3ETrigger+Type%3C%2Fb%3E%3A+Recurring+Check-In%3C%2Fli%3E%3Cli%3E%3Cb%3EExecution+Frequency%3C%2Fb%3E%3A+Once+every+24+hours%3C%2Fli%3E%3Cli%3E%3Cb%3EScope%3C%2Fb%3E%3A+All+macOS+Devices+%28Smart+Group%29%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Execution+Time%3C%2Fb%3E%3A+2024-07-29+09%3A30+AM%3C%2Fli%3E%3Cli%3E%3Cb%3EAssociated+Scripts+or+Packages%3C%2Fb%3E%3A+Baseline+Security+Script%2C+User+Profile+Preferences.pkg%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22macOS+Configuration+Baseline%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---

## **Installation Steps**

While you can create a connector during plugin installation, we **recommend setting up the Jamf connector in Agent Studio beforehand** to simplify the process. Follow the [Jamf Connector Guide](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) for detailed instructions.

**Note:** 

To enable access to Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the user via:

- **Settings → API Roles and Clients → API Roles → Tokens**.

**Required Privileges**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use this plugin:

- **Read Policies**
- **Read Policy Details**
- **Read Categories**

**Note:**

These privileges allow the plugin to:

- Retrieve policy details, including execution frequency, enabled status, and associated categories.
- Access the full configuration of a specific policy by ID.
- List available categories and fetch all policies under a given category.

Make sure the API user has **only these privileges** to maintain the principle of least privilege and reduce security exposure.

**Your Instance Configuration:**

All Jamf API endpoints in this plugin use **`{{YOUR_INSTANCE}}`** as a placeholder. After installation, replace **`{{YOUR_INSTANCE}}`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Check the URL in your browser — the instance name appears before `.jamfcloud.com`
    - e.g., `https://your_instance.jamfcloud.com` → instance name = **`{{YOUR_INSTANCE}}`**

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on installing and activating the plugin in Agent Studio.

### **API #1: Search Policies by Criteria**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/api/v1/policies?filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters:**

- `filter_query` : A dynamic **RSQL filter** used to retrieve policies based on user-defined criteria such as name, execution frequency, or enabled status.
- `policy_name` : Partial or full policy name to match.
- `frequency` : Execution frequency of the policy (e.g., `EXECUTION_FREQUENCY_ONCE_PER_USER`, `EXECUTION_FREQUENCY_OFTEN`, etc.).
- `status` : Policy status — `true` for enabled or `false` for disabled.

**RSQL Filtering Notes:**

- Use **RSQL syntax** in the `filter_query` parameter to filter on different policy attributes.
- Common examples:
    - **Policy Name (Partial Search):** `name=='*{{policy_name}}*'`
    - **Execution Frequency:** `executionFrequency=="{{frequency}}"`
    - **Enabled Status:** `enabled=={{status}}`

**Example of a Compound RSQL Filter:**

```
name=='*{{policy_name}}*'
```

**Example Response:**

```json
{
  "totalCount": 1,
  "results": [
    {
      "id": "XX",
      "name": "XX",
      "enabled": false,
      "triggerCheckin": true,
      "triggerManual": "XX",
      "updateInventory": false,
      "executionFrequency": "XX",
      "categoryId": "XX",
      "networkRequirements": "XX"
    }
  ]
}

```

**Notes:**

- This endpoint supports **flexible filtering**, allowing administrators to retrieve policies by name, status, or execution frequency.
- **Partial matches** can be performed using wildcards () in the policy name.

### **API #2: Retrieve All Categories**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/api/v1/categories' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

### **API #3: Retrieve Policies by Category Name**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/JSSResource/policies/category/{{category_name}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Path Parameters:**

- `category_name` : The name of the category (e.g., `"IT Software"`, `"Security"`).

### **API #4: Retrieve Policy Details by ID**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/JSSResource/policies/id/{{id}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Path Parameters:**

- `id` : Unique numeric ID of the policy.