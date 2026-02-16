---
availability: INSTALLABLE
description: A plugin that allows the user to fetch the status and details of all
  offer approvals related to a specific job application.
installation_asset_uuid: c793b512-61e2-4cf7-b7ca-70d299afb56f
name: Look Up Job Offer Approval Status
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHi%2C+can+you+show+me+the+list+of+offer+approvals+for+application+ID+601%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOf+course%21+I%E2%80%99ll+fetch+the+offer+approval+list+for+application+ID+601.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+the+offer+approval+list+for+application+ID+601......%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%E2%80%99s+the+list+of+offer+approvals+for+application+ID+601%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cstrong%3EHR+Manager+-+Approved%3C%2Fstrong%3E+on+2023-11-01%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDepartment+Head+-+Pending%3C%2Fstrong%3E+as+of+2023-11-02%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EFinance+-+Approved%3C%2Fstrong%3E+on+2023-11-03%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22601%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Recruiting & Talent
systems:
- sap-success-factors
---

# **Introduction :**

The **Lookup Job Offer Approval Status** plugin enables users to check the approval status of job offers in SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, hiring managers and recruiters can quickly track the progress of job offer approvals without leaving chat.

This guide will walk you through the installation and configuration of the plugin in Agent Studio, ensuring a seamless setup process. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHi%2C+can+you+show+me+the+list+of+offer+approvals+for+application+ID+601%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOf+course%21+I%E2%80%99ll+fetch+the+offer+approval+list+for+application+ID+601.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+the+offer+approval+list+for+application+ID+601......%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%E2%80%99s+the+list+of+offer+approvals+for+application+ID+601%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cstrong%3EHR+Manager+-+Approved%3C%2Fstrong%3E+on+2023-11-01%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDepartment+Head+-+Pending%3C%2Fstrong%3E+as+of+2023-11-02%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EFinance+-+Approved%3C%2Fstrong%3E+on+2023-11-03%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22601%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [SAP Successfactors Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

### **API #1:  Get Job Offer by Application ID**

The  **GET Job Offer** API retrieves the offerApprovalId used for fetching Job Approval Status. 

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobOffer?%24filter=applicationId%20eq%20<APPLICATION_ID>' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer' 
--header 'Content-Type: application/json' \
```

**Query Parameters :**

- APPLICATION_ID – Used to filter the Job Offer based on the applicationId.

### **API #2:  Get Job Offer Approval Status**

The  **GET JobOfferApprover** API retrieves the Approval Status of the JobOffer.

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobOfferApprover?%24filter=offerApprovalId%20eq%20<APPROVAL_ID>&%24expand=approverNav' \
--header 'Authorization: Bearer' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

```

**Query Parameters :**

- APPROVAL_ID – Used to filter the Job Offer Approver based on the offerApprovalId.