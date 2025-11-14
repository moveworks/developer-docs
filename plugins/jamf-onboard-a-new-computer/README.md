---
availability: IDEA
description: A plugin that allows IT administrators to quickly onboard new apple computers
  in Jamf through the Moveworks AI Assistant.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Onboard a New Computer
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Onboard+a+new+MacBook+for+John+Doe%2C+serial+C02X123%2C+in+the+Engineering+department.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+onboard+a+device.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracting+device+type%2C+serial+number%2C+owner%2C+and+department+from+the+request.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+user+%27John+Doe%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+%27Engineering%27+department+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it+%E2%80%94+here%E2%80%99s+what+I+understood%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+Type%3A%3C%2Fstrong%3E+Computer+%28MacBook%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESerial+Number%3A%3C%2Fstrong%3E+C02X123%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EOwner%3A%3C%2Fstrong%3E+John+Doe+%28%3Ca+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22mailto%3Ajohn.doe%40company.com%5C%22%3Ejohn.doe%40company.com%3C%2Fa%3E%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDepartment%3A%3C%2Fstrong%3E+Engineering%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWould+you+like+me+to+create+the+enrollment+invitation+and+assign+this+device+to+John%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+go+ahead.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Generating+enrollment+invitation+for+MacBook+with+serial+C02X123+for+John+Doe+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Enrollment+link+generated+for+John+Doe%E2%80%99s+MacBook%3A%3Cbr+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+%2F%3E%F0%9F%94%97+%3Ca+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22https%3A%2F%2Fjamf.company.com%2Fenroll%3Finvitation%3DABC123%5C%22%3Ehttps%3A%2F%2Fjamf.company.com%2Fenroll%3Finvitation%3DABC123%3C%2Fa%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOnce+John+completes+enrollment%2C+I%E2%80%99ll+automatically%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EAssign+ownership+to+John+Doe%2C%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ETag+the+device+under+the+Engineering+department%2C+and%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ETrigger+an+immediate+check-in+so+onboarding+policies+apply+right+away.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+C02X123%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Perfect.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Confirming+device+onboarding+details+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22MacBook+%28Serial%3A+C02X123%29+successfully+onboarded+for+John+Doe.+Initial+policies+will+apply+as+soon+as+the+device+checks+in.%22%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## **Introduction**

The **“Onboard a New Computer”** plugin enables IT admins to seamlessly onboard new computers to Jamf using the Moveworks AI Assistant. This automation streamlines the process by creating an enrollment invitation for the new computer.

This guide will show you how to set up and customize the plugin in Agent Studio in just a few minutes.

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Onboard+a+new+MacBook+for+John+Doe%2C+serial+C02X123%2C+in+the+Engineering+department.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+onboard+a+device.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracting+device+type%2C+serial+number%2C+owner%2C+and+department+from+the+request.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+user+%27John+Doe%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+%27Engineering%27+department+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGot+it+%E2%80%94+here%E2%80%99s+what+I+understood%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+Type%3A%3C%2Fstrong%3E+Computer+%28MacBook%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESerial+Number%3A%3C%2Fstrong%3E+C02X123%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EOwner%3A%3C%2Fstrong%3E+John+Doe+%28%3Ca+target%3D%5C%22_blank%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22mailto%3Ajohn.doe%40company.com%5C%22%3Ejohn.doe%40company.com%3C%2Fa%3E%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDepartment%3A%3C%2Fstrong%3E+Engineering%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWould+you+like+me+to+create+the+enrollment+invitation+for+John%3F+You+can+enroll+the+device+on+his+behalf.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+go+ahead.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Generating+enrollment+invitation+for+MacBook+with+serial+C02X123+for+John+Doe+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EEnrollment+link+generated+for+John+Doe%E2%80%99s+MacBook%3A%3Cbr%3E%F0%9F%94%97+%3Ca+target%3D%5C%22_blank%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22https%3A%2F%2Fjamf.company.com%2Fenroll%3Finvitation%3DABC123%5C%22%3Ehttps%3A%2F%2Fjamf.company.com%2Fenroll%3Finvitation%3DABC123%3C%2Fa%3E%3C%2Fp%3E%3Cp%3EOnce+John+completes+enrollment%2C+i%27ll+start+the+onboarding+process+for+John.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+C02X123%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up Jamf before installing this plugin. Please follow the [Jamf-Connector](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.

**Note:** To enable access to the Jamf API endpoints used in this plugin, ensure that the following API roles are assigned to the API Client Settings → API Roles and Clients → API Roles → [Your API Role].

Specifically, confirm that the following privileges are granted:

- **Read Users**
- **Read Computers**
- **Read Departments**
- **Create Computer Enrollment Invitations**

These permissions are required to retrieve user-related data and perform advanced searches in the Jamf Pro environment using the API.

**Your Instance Configuration:**

All Jamf API endpoints in this plugin use **`'YOUR_INSTANCE'`** as a placeholder. After installation, replace **`'YOUR_INSTANCE'`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Check the URL in your browser — the instance name appears before `.jamfcloud.com`
    - e.g., [`https://your_instance.jamfcloud.com`](https://your_instance.jamfcloud.com/) → instance name = **`'YOUR_INSTANCE'`**

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **Appendix**

### API #1: Get Unmanaged and Unassigned Computer Devices

- This action is used to retrieve the list of unmanaged and unassigned computers.

**Query Parameters:**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v2/computers-inventory?section=USER_AND_LOCATION,HARDWARE,GENERAL&filter=general.remoteManagement.managed==false and userAndLocation.username==null or userAndLocation.username==''' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_BEARER>' \
```

• **`section`** : Specifies the broad data categories to include in the response (for example: GENERAL, HARDWARE,USER_AND_LOCATION).

### API #2: Get Users By Name or Email

- This action is used to retrieve a user based on their username or email.

```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/{{filter_query}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
```

**Path Parameters:**

**$filter_query : (string)** – Filter users by specific property values.

You can filter by **user name** or **user email**.

- Example filters:
    - `name/username` → Returns the user with that exact user name (eg., name/john).
    - `email/useremail` → Returns the user with that specific user email (eg., email/john@example.com).

### API #3: Generate Enrollment Invitation for a Computer

- This action generates a computer enrollment invitation for an administrator (not a user).

```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/computerinvitations/invitation/0' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/xml; charset=utf-8' \
--header 'Accept: application/xml' \
--data-raw '
<computer_invitation>
  <invitation_type>DEFAULT</invitation_type>
  <expiration_date>{{expiration_date}}</expiration_date>
  <ssh_username>{{username}}</ssh_username>
  <ssh_password>{{password}}</ssh_password>
  <multiple_uses_allowed>false</multiple_uses_allowed>
  <create_account_if_does_not_exist>false</create_account_if_does_not_exist>
  <hide_account>false</hide_account>
  <lock_down_ssh>false</lock_down_ssh>
  <enroll_into_site>
    <id>{{site_id}}</id>
    <name>{{site_name}}</name>
  </enroll_into_site>
  <keep_existing_site_membership>false</keep_existing_site_membership>
  <site>
    <id>{{site_id}}</id>
    <name>{{site_name}}</name>
  </site>
  <computer>
    <general>
      <name>{{Device_name}}</name>
      <department>{{Department}}</department>
      <userEmail>{{UserEmail}}</userEmail>
    </general>
    <hardware>
      <serial_number>{{Serial_Number}}</serial_number>
    </hardware>
    <location>
      <username>{{Username}}</username>
    </location>
  </computer>
</computer_invitation>'
```

**Query Parameters:**

- `{{Device_name}}`  - Name of the Computer (eg: Mac Book Device)
- `{{Department}}`  -  Department name (e.g., IT Department)
- `{{UserEmail}}`  - User’s email address
- `{{Serial_Number}}`  - Serial number of the device
- `{{Username}}`  - Username of the assigned user
- `{{expiration_date}}`  - Expiration date/time of the invitation (e.g., 2025-10-31 23:59:59)
- `{{username}}`  - username for enrollment (not actually used for enrollment, you can safely provide mock data)
- `{{password}}`  - password for enrollment (not actually used for enrollment, you can safely provide mock data)
- `{{site_name}}` - Site Name (e.g., None)
- `{{site_id}}` - Site ID (e.g., -1)

**Note**: In Jamf Pro, specifying `0` in the invitation endpoint is the standard way to **create a new computer invitation**.

### API #4: Get Jamf Instance URL

- This action retrieves the Jamf instance URL for your tenant and uses it to generate the enrollment link for a computer.
  
```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/jamf-pro-server-url' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
```
