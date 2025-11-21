---
availability: IDEA
description: A plugin that allows employees to check their computer's warranty and
  purchase details through the Moveworks AI Assistant. It retrieves model, purchase
  date, and warranty expiration data from JAMF.
domain:
- IT
- Access Management
fidelity: GUIDE
difficulty_level: INTERMEDIATE
name: Look Up My Computer Warranty Info
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+check+warranty+details+for+my+apple+computers%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+%3Cb%3EJamf%3C%2Fb%3E+for+devices+assigned+to+your+email+address...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+2+computer+devices+associated+with+your+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+the+following+computer+devices+assigned+to+you%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EiMac+%28Monitor%29%3C%2Fb%3E+-+Serial%3A+C02P480YG1G%3C%2Fli%3E%3Cli%3E%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+-+Serial%3A+C02M00P2G1G%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+device+would+you+like+to+view+the+warranty+details+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22laptop%2C+also+highlights+that+the+laptop+has+short+circuited%2C+and+no+longer+working%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+warranty+information+for+%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+from+%3Cb%3EJamf%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+warranty+details+for+your+%3Cstrong%3EMacBook+Pro+%28Laptop%29%3C%2Fstrong%3E+%28Serial%3A+C02M00P2G1G%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+Model%3A%3C%2Fstrong%3E+MacBook+Pro+%2813-inch%2C+M1%2C+2020%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESerial+Number%3A%3C%2Fstrong%3E+C02M00P2G1G%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EPurchase+Date%3A%3C%2Fstrong%3E+2021-03-15%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EWarranty+Start+Date%3A%3C%2Fstrong%3E+2021-03-15%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EWarranty+End+Date%3A%3C%2Fstrong%3E+2022-03-14%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERemaining+Warranty%3A%3C%2Fstrong%3E+Expired+%28498+days+ago%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EAppleCare+Coverage%3A%3C%2Fstrong%3E+Not+applicable%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EIt+appears+your+MacBook+Pro%27s+warranty+expired+on+March+14%2C+2022.+Since+the+warranty+has+expired+and+you+mentioned+it+has+short-circuited+and+is+no+longer+working%2C+it+is+recommended+to+visit+an+authorized+Apple+service+provider+for+diagnosis+and+repair.+Any+repairs+will+likely+be+out-of-warranty+and+incur+charges.+Please+contact+your+IT+admin+for+more+assistance.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%28Laptop%29+Warranty+Details%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
# **Introduction :**

The “**Jamf Look Up My Computer Warranty Info”** plugin allows employees to quickly access detailed warranty and purchase information for their assigned devices. With the help of the Moveworks AI Assistant, users can instantly retrieve key warranty attributes  including device name, model, serial number, purchase date, warranty start and end dates and receive a summarized view of their computer’s warranty status. This enables employees and support teams to address repair or replacement needs efficiently, without manually navigating Jamf Pro.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+warranty+details+for+my+apple+devices%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+help+you+with+that.+Can+you+specify+if+you+want+to+look+at%3A%3C%2Fp%3E%3Col%3E%3Cli%3EYour+computer+devices%3C%2Fli%3E%3Cli%3EYour+mobile+devices%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Computer%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+%3Cb%3EJamf%3C%2Fb%3E+for+devices+assigned+to+your+email+address...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+2+computer+devices+associated+with+your+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+the+following+computer+devices+assigned+to+you%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EiMac+%28Monitor%29%3C%2Fb%3E+-+Serial%3A+C02P480YG1G%3C%2Fli%3E%3Cli%3E%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+-+Serial%3A+C02M00P2G1G%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+device+would+you+like+to+view+the+warranty+details+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22laptop%2C+also+highlights+that+the+laptop+has+short+circuited%2C+and+no+longer+working%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+warranty+information+for+%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+from+%3Cb%3EJamf%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+warranty+details+for+your+%3Cstrong%3EMacBook+Pro+%28Laptop%29%3C%2Fstrong%3E+%28Serial%3A+C02M00P2G1G%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+Model%3A%3C%2Fstrong%3E+MacBook+Pro+%2813-inch%2C+M1%2C+2020%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESerial+Number%3A%3C%2Fstrong%3E+C02M00P2G1G%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EPurchase+Date%3A%3C%2Fstrong%3E+2021-03-15%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EWarranty+Start+Date%3A%3C%2Fstrong%3E+2021-03-15%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EWarranty+End+Date%3A%3C%2Fstrong%3E+2022-03-14%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERemaining+Warranty%3A%3C%2Fstrong%3E+Expired+%28498+days+ago%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EAppleCare+Coverage%3A%3C%2Fstrong%3E+Not+applicable%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EIt+appears+your+MacBook+Pro%27s+warranty+expired+on+March+14%2C+2022.+Since+the+warranty+has+expired+and+you+mentioned+it+has+short-circuited+and+is+no+longer+working%2C+it+is+recommended+to+visit+an+authorized+Apple+service+provider+for+diagnosis+and+repair.+Any+repairs+will+likely+be+out-of-warranty+and+incur+charges.+Please+contact+your+IT+admin+for+more+assistance.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%28Laptop%29+Warranty+Details%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **Jamf** **Connector** before installing this plugin. Please follow the [**Jamf Connector**](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.

**Note:** To enable access to Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the user via:

**Settings → API Roles and Clients → API Roles → [API Role]**.

**Required Privileges:**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use this plugin:

- **Read Computers**

This permission is required to retrieve user-related data and perform advanced searches within the Jamf Pro environment using the API.

**Endpoint Guidelines:**

- The **Jamf Pro `/mobile-devices` endpoint does not support filtering or partial search**.
- Filtering using **`filter=`** parameters is supported **only for the `/computers-inventory` endpoint**.

**Our Instance Configuration:**

All Jamf Pro API endpoints in this plugin use **`YOUR_INSTANCE`** as a placeholder. After installation, replace **`YOUR_INSTANCE`** in the API calls with your actual Jamf instance name.

To find your instance name:

- Log into Jamf Pro.
- Check the URL in your browser — the instance name appears before **`jamfcloud.com`**, e.g.:
    
    **`https://YOUR_INSTANCE.jamfcloud.com/...`**
    
    Make sure to update this across all actions that reference the Jamf Pro API.
    

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

# **Appendix**

## API #1: Jamf_Get_Assigned_Devices_by_Email

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?section=GENERAL,USER_AND_LOCATION,HARDWARE,GENERAL&filter=userAndLocation.email=="{{email}}"' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

**Query Parameters :**

- `email`  (string) – The email address of the user whose assigned devices you want to lookup.