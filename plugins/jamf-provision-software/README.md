---
availability: INSTALLABLE
description: A plugin that provisions software for computers using Jamf.
installation_asset_uuid: bd0e72aa-b045-419f-a51f-fb2f24b938b3
name: Provision Software
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+set+up+Photoshop+on+my+new+MacBook.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+devices+assigned+to+the+current+user+in+Jamf.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+MacBook+Pro+assigned+to+you.+Do+you+want+to+install+Adobe+Photoshop+on+this+device%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Pro+%28ID%3A+123456%29%22%2C%22connectorName%22%3A%22jamf%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+install+on+this+device%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Use+a+different+device%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+install+on+this+device%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGreat.+I+am+ready+to+start+the+installation.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EDevice%3C%2Fb%3E%3A+MacBook+Pro+%28ID%3A+123456%29%3C%2Fli%3E%3Cli%3E%3Cb%3ESoftware%3C%2Fb%3E%3A+Adobe+Photoshop%3C%2Fli%3E%3Cli%3E%3Cb%3ELicense%3C%2Fb%3E%3A+Single+User%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EPlease+confirm+to+proceed.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Install+Photoshop%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Install+Photoshop%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Sending+installation+command+to+device+via+Jamf.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+started+the+installation+of+Adobe+Photoshop+on+your+MacBook+Pro.+The+application+will+appear+on+your+device+shortly.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Pro+%28ID%3A+123456%29%22%2C%22connectorName%22%3A%22jamf%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- jamf
---

## **Introduction:**

The "Provision Software" plugin allows employees to quickly get the software they need on their macOS computers, seamlessly integrating with Jamf through the Moveworks AI Assistant. This eliminates the need for manual installation or IT intervention, making it easier for users to access approved software, ensure compatibility, and stay productive without delays.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let's get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/plugins/jamf-provision-software?hist=home%2Cbrws) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [JAMF Connector](https://marketplace.moveworks.com/connectors/jamf?#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup  efficiently.
**Note:** To enable access to Jamf Pro API endpoints, ensure that the following API roles are assigned to the API Client **Settings → API Roles and Clients → API Roles → [Your API Role]**.

For this plugin, ensure the JAMF integration Client has the following permissions:

- `Read Computers` – Allows the user to view device inventory and details.
- `Create Policies` – Grants the ability to provision software by creating and applying policies to target devices.
- `Read Packages` – Enables access to the list of available software packages for deployment.

This permission is required to retrieve user-related data and perform advanced searches within the Jamf Pro environment using the API.

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1:  Get Username By Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/email/{{email}}'\
--header 'authorization: Bearer <ACCESS_TOKEN>' \
--header 'accept: application/json' \
```

**Path Parameters:**

- `email` (string) – Returns the details assigned to the specific users.

### **API #2: Get All Users Devices via Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/name/{{user_name}}' \
--header 'authorization: Bearer <ACCESS_TOKEN>' \
--header 'accept: application/json' \
```

**Parameters:**

- `user_name`(string) – Returns the details of the user, including linked devices such as computers

### **API #3: Get Package Details By Package Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/packages'\
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

**Query  Parameters:**

- `package_name` - (string) – Search for Package **Details by Package Name**

### **API #4: Create a Policy with Package Installation on Specific Computers**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/policies' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "name": "<package_name>",
  "enabled": true,
  "frequency": "ONCE_PER_COMPUTER",
  "trigger": "RECURRING_CHECKIN",
  "packages": [
    {
      "id": <package_id>,
      "action": "INSTALL"
    }
  ],
  "targets": {
    "computerIds": [<device_id>]
  }
}'
```

**Request Body Parameters:**

- `package_name` - (string) – The policy name will be taken from the package name provided by the user.
- `package_id` - (string) –  ID of the package to install
- `device_id`-  (string) – ID of the computer to install