---
availability: INSTALLABLE
description: A plugin that enables a user to update their pronouns.
installation_asset_uuid: 099db9ee-fe4f-4825-923d-177b500a3247
name: Update Pronouns
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+update+my+pronouns.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+with+that.+Please+share+your+pronouns%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+update+your+pronouns+to+They%2FThem%2FTheirs.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+new+pronouns%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EPronouns%3A+%3C%2Fb%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Update+Pronouns+in+Success+Factors%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Pronouns%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+pronouns+in+SuccessFactors%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+updated+your+pronouns+in+SuccessFactors.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22User+Profile%22%2C%22connectorName%22%3A%22sap-successfactors%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Other
systems:
- sap-success-factors
---

# Update Pronouns

# **Introduction:**

The **Update Pronouns** plugin allows users to easily update their pronouns in the system directly through the Moveworks AI Assistant. This ensures that their preferred pronouns are accurately reflected across all platforms.

This guide will help you install and configure the plugin in Agent Studio quickly. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio.

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+update+my+pronouns.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+with+that.+Please+share+your+pronouns%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+update+your+pronouns+to+They%2FThem%2FTheirs.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+new+pronouns%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EPronouns%3A+%3C%2Fb%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Update+Pronouns+in+Success+Factors%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Pronouns%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+pronouns+in+SuccessFactors%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+updated+your+pronouns+in+SuccessFactors.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22User+Profile%22%2C%22connectorName%22%3A%22sap-successfactors%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [ SAP SuccessFactors Connector Guide](https://developer.moveworks.com/marketplace/package?id=sap-success-factors&hist=home%2Cbrws) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the   SAP SuccessFactors  integration system user has the following permissions:

**Required Permissions:**

Ensure the **Pronouns feature is enabled** in SuccessFactors:

- Go to **Admin Center > Picklist Center**.
- Create or update a picklist for pronouns (PersonPronouns picklist).
- Add appropriate pronoun values (e.g., she/her, he/him, they/them)

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

### **API #1: Fetch User Information**

The **Fetch User Information** API retrieves a userId using user email.

```bash
curl --location --globoff 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{email}}%27&%24select=userId%2CfirstName%2ClastName%2CdisplayName%2Cnickname%2Cemail%2Clocation%2Cdepartment%2Cstatus%2Cgender%2CtimeZone%2CemployeeClass%2ChireDate%2CimpactOfLoss%2CriskOfLoss%2CjobCode%2CbusinessPhone%2Csalary%2CcompensationSalaryRateType%2CempId' \
--header 'Accept: application/json' \
--header 'Authorization:  Bearer '\
--data ''
```

**Query Parameters :**

- $filter (string) – Filter items by property values
- $select (array[string]) – Select properties to be returned

### **API #2: GET Picklist**

The **GET Picklist** API retrieves a optionId of the Pronouns.

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/PicklistOption?%24filter=picklist%20eq%20%27PersonPronouns%27&%24select=id%2CexternalCode' \
--header 'Authorization: Bearer \
--header 'Accept: application/json' \

```

**Query Parameters :**

- $filter (string) – Filter items by property values
- $select (array[string]) – Select properties to be returned

### **API #3: Upserting an Existing User with Pronoun**

The **Upserting an Existing User with Pronoun** API updates the pronouns of the user whose userId is specified in the URI.

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/upsert?%24format=json' \
--header 'Authorization: Bearer ' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '[
{
                "__metadata": {
                    "uri": "<YOUR_INSTANCE>/odata/v2/User('\''userId'\'')",
                    "type": "SFOData.User"
                },
    "userId": "{{userId}}",
    "pronouns": "{{pronouns}}"
  }
]

'
```