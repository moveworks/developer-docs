---
availability: IDEA
description: A plugin that allows employees to quickly retrieve their invoice details
  from Coupa using the Moveworks AI Assistant.
domain:
- Finance - Other
- Finance - Expense Management
fidelity: GUIDE
name: Look Up My Invoices
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+an+invoice.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+How+would+you+like+to+search+for+the+invoice%3F+You+can+provide+an+invoice+number%2C+supplier+name%2C+date%2C+or+status.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+looking+for+an+invoice+from+%27Evergreen+Organics%27.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECoupa%3C%2Fb%3E+for+invoices+from+%27Evergreen+Organics%27+that+are+available+to+the+current+user...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+invoices+from+%3Cstrong%3EEvergreen+Organics%3C%2Fstrong%3E.+Which+one+would+you+like+to+see%3F%3Cbr+%2F%3E%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EINV-2023-001+%28Approved%2C+%241500.00%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EINV-2023-005+%28Pending+Approval%2C+%24750.00%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+INV-2023-001.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+invoice+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EINV-2023-001%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECoupa%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EInvoice+INV-2023-001%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESupplier%3A%3C%2Fb%3E+Evergreen+Organics%3C%2Fli%3E%3Cli%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%241500.00%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Approved%3C%2Fli%3E%3Cli%3E%3Cb%3EInvoice+Date%3A%3C%2Fb%3E+2023-10-26%3C%2Fli%3E%3Cli%3E%3Cb%3EDue+Date%3A%3C%2Fb%3E+2023-11-25%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Invoice+INV-2023-001%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Finance - Expense Management
- Finance - Other
systems:
- coupa

---
## **Introduction**

The **“Look Up Invoice”** plugin allows users to quickly access invoice details from Coupa through the Moveworks AI Assistant. It enables secure and instant retrieval of invoice information—such as invoice number, amount, supplier, status, and date—by simply asking the AI Assistant. The plugin streamlines financial operations, enhances visibility into invoice status, and ensures compliance and data security through user consent authentication.

This guide will show you how to set up and customize the plugin in Agent Studio in just a few minutes.

## **Prerequisites**

- Access to **Agent Studio**

## **What Are We Building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+an+invoice.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+How+would+you+like+to+search+for+the+invoice%3F+You+can+provide+an+invoice+number%2C+supplier+name%2C+date%2C+or+status.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+looking+for+an+invoice+from+%27Evergreen+Organics%27.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECoupa%3C%2Fb%3E+for+invoices+from+%27Evergreen+Organics%27+that+are+available+to+the+current+user...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+invoices+from+%3Cstrong%3EEvergreen+Organics%3C%2Fstrong%3E.+Which+one+would+you+like+to+see%3F%3Cbr+%2F%3E%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EINV-2023-001+%28Approved%2C+%241500.00%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EINV-2023-005+%28Pending+Approval%2C+%24750.00%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+INV-2023-001.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+invoice+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EINV-2023-001%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECoupa%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EInvoice+INV-2023-001%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESupplier%3A%3C%2Fb%3E+Evergreen+Organics%3C%2Fli%3E%3Cli%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%241500.00%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Approved%3C%2Fli%3E%3Cli%3E%3Cb%3EInvoice+Date%3A%3C%2Fb%3E+2023-10-26%3C%2Fli%3E%3Cli%3E%3Cb%3EDue+Date%3A%3C%2Fb%3E+2023-11-25%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Invoice+INV-2023-001%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Coupa** before installing this plugin. Please follow the [Coupa Connector](https://marketplace.moveworks.com/connectors/coupa) guide to configure the connection.

For this plugin, ensure the Coupa system user has the following scopes:

- core.supplier.read
- core.invoice.read

**Your Instance Configuration:**

All Coupa API endpoints in this plugin use **`{{YOUR_INSTANCE}}`** as a placeholder. After installation, replace **`{{YOUR_INSTANCE}}`** in the action definitions with your actual Coupa instance name.

To find your instance name:

1. Log in to your Coupa environment.
2. Check the URL in your browser — the instance name appears before `.coupacloud.com`
    - e.g., [https://your_instance.coupacloud.com](https://your_instance.coupacloud.com/) → instance name = **`{{YOUR_INSTANCE}}`**

Make sure to update this across all actions that reference the Coupa API

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **Appendix**

### **API #1: Get All Suppliers**

```bash
curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/suppliers?limit=50&offset=0&fields=["id","name"]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
```

**Query Parameters:**

- `limit=50` — Restricts the number of suppliers returned per page
- `offset=0` — Defines the starting point
- `fields` — Specifies which fields to return (e.g., id, name)

### **API #2: Get Invoice Details by Supplier Name**

```bash
curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/invoices?offset=0&limit=50&fields=["invoice-number","total-with-taxes","status","invoice-date","net-due-date",{"supplier":["name"]}]&supplier[name]={{supplierName}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
```

**Query Parameters:**

- `{{supplierName}}` — Filters invoices by supplier name
- `limit=50` — Restricts the number of invoices returned per page
- `offset=0` — Defines the starting point

### **API #3: Get Invoice Details by Invoice Number**

```bash
curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/invoices?invoice-number={{invoiceNumber}}&fields=["invoice-number","total-with-taxes","status","invoice-date","net-due-date",{"supplier":["name"]}]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
```

**Query Parameters:**

- `{{invoiceNumber}}` — Filters by specific invoice number

### **API #4: Get Invoices by Status**

```bash
curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/invoices?status={{status}}&limit=50&offset=0&fields=["invoice-number","total-with-taxes","status","invoice-date","net-due-date",{"supplier":["name"]}]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
```

**Query Parameters:**

- `{{status}}` — Filters invoices by status
- `limit=50` — Restricts the number of invoices returned per page
- `offset=0` — Defines the starting point

### **API #5: Get Invoices by Date**

```bash
curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/invoices?invoice-date[gt]={{startDate}}&invoice-date[lt]={{endDate}}&limit=50&offset=0&fields=["invoice-number","total-with-taxes","net-due-date","status","invoice-date",{"supplier":["name"]}]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
```

**Query Parameters:**

- `{{startDate}}` — Fetches invoices created after this date (e.g., 2024-01-01T00:00:00-07:00)
- `{{endDate}}` — Fetches invoices created before this date (e.g., 2024-10-01T00:23:59-07:00)
- `limit=50` — Restricts the number of invoices returned per page
- `offset=0` — Defines the starting point