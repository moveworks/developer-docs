---
description: A plugin that enables a user to update their pronouns.
fidelity: GUIDE
name: Update Pronouns
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A4081%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+update+my+pronouns.%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESure%2C+I+can+help+with+that.+Please+share+your+pronouns%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EOkay%2C+I+will+update+your+pronouns+to+They%2FThem%2FTheirs.%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EPlease+confirm+your+new+pronouns%3Cbr%3E%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3EPronouns%3A+%3C%2Fb%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Update+Pronouns+in+Success+Factors%22%7D%2C%7B%22text%22%3A%22Edit+Pronouns%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
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

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A4081%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+update+my+pronouns.%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESure%2C+I+can+help+with+that.+Please+share+your+pronouns%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EOkay%2C+I+will+update+your+pronouns+to+They%2FThem%2FTheirs.%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EPlease+confirm+your+new+pronouns%3Cbr%3E%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3EPronouns%3A+%3C%2Fb%3EThey%2FThem%2FTheirs%3Cbr%3E%3C%2Fp%3E%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Update+Pronouns+in+Success+Factors%22%7D%2C%7B%22text%22%3A%22Edit+Pronouns%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [SAP Successfactors Connector Guide](https://developer.moveworks.com/marketplace/package?id=sap-success-factors&hist=home%2Cbrws) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP Sucessfactors integration system user has the following permissions:

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