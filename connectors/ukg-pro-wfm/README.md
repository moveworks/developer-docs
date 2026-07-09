---
availability: IDEA
description: Connect your Moveworks AI Assistant to your UKG Pro WFM (Workforce Management) instance.
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/ukg-integration-logo-primary.svg?dewdwkehfbwfrf
name: UKG Pro WFM
---
## Introduction

UKG Pro Workforce Management (WFM) is a leading enterprise platform for managing timekeeping, scheduling, leave and absence tracking, payroll, and employee self-service. Organizations use it to streamline core workforce operations, ensure compliance, and deliver a better employee experience.

By connecting UKG Pro WFM to **Moveworks Agent Studio**, you can enable employees and managers to interact with workforce management functions directly through their AI assistant. This includes capabilities such as retrieving PTO balances, submitting and managing time-off requests, viewing schedules, accessing timecard data, and surfacing manager notifications for approvals and actions — all without leaving the conversational interface.

This guide walks through setting up both User Consent Auth (Interactive) and Client Credentials Auth (Non-Interactive) OAuth 2.0 flows to connect UKG Pro WFM with Agent Studio. For a full list of available API resources and operations, refer to the [**UKG Pro WFM Developer Hub**](https://developer.ukg.com/wfm/reference/welcome-to-the-ukg-pro-workforce-management-api).

---

## Prerequisites

### UKG Requirements

- Admin privileges in UKG Pro WFM to create OAuth applications and manage permissions
- ⚠️ **Functional Access Profile (FAP) Required for All End Users (for User Consent Auth Flow)**
Each user who will interact with UKG through the Moveworks plugins (with User Consent) must have a Functional Access Profile (FAP) assigned in UKG Pro WFM. By default, most tenants only assign FAPs to managers and admins — employees without a FAP will receive a 403 Forbidden error on all API calls, even if OAuth authentication succeeds. Work with your UKG admin to assign an appropriate FAP to all target users before configuring this connector.
- Access to **Administration > Application Setup > Common Setup > Client Management** (confirms your tenant uses UKG Authentication)
- [Postman](https://www.postman.com/downloads/) installed for API testing

### Moveworks Requirements

- Agent Studio admin access in your Moveworks tenant ([grant access guide](https://help.moveworks.com/docs/manage-roles-and-permissions-for-moveworks-applications#add-an-application-admin))


**Note:** Only tenants configured for UKG Authentication will see the Client Management page. If you don’t see it, your tenant uses a different authentication type. Refer to the [UKG Authentication docs](https://developer.ukg.com/wfm/docs/ukg-authentication-doc) for details.

---

## Option A: User Consent Auth (Interactive)

Use this flow for actions that are performed in the context of the authenticated end user.

### Step 1: Create an OAuth Client in UKG

1. Log in to UKG as an admin.
2. Navigate to **Administration → Application Setup → Common Setup → Client Management**.
    
    ![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image.png)
    
    ![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%201.png)
    
3. Click **Create** and fill in the following fields:
    - **Name:** `UKG <> Moveworks UCA Connector` (or your preferred name)
    - **Description:** `Connect UKG with Moveworks using user consent auth`
    - **Application Flow:** `Interactive`
    - **Grant Type:** `Authorization Code Flow`
    - **Redirect URL:** `https://{{tenant-name-on-moveworks}}.moveworks.com/auth/oauthCallback`
    - **Logout Redirect URL:** Same as Redirect URL
        
        ![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%202.png)
        
4. Click **Save**. UKG will generate credentials upon saving.
5. Copy and securely store the following values — you’ll need them in the next step:
    - **Client ID**
    - **Client Secret**
    - **Realm**
    - **Organization ID**
    - **OAuth URL** (e.g., `https://welcome-eval.ukg.net/authorize?organization=org_XXXXX`)

**Important:** The Client Secret cannot be recovered after leaving this page. Save it immediately. You can regenerate it later, but you’ll also need to update the Moveworks connector.

### Step 2: Configure the Moveworks HTTP Connector

1. In Agent Studio, go to **HTTP Connectors → Create**.
2. Fill in the connector fields:
    - **Connector Name:** `UKG_Authcode_Flow` (or your preferred name)
    - **Base URL:** `https://{{ukg_tenant}}.cfn.mykronos.com/api` — replace `ukg_tenant` with your organization’s UKG tenant hostname
    - **Auth Config:** `Oauth2`
    - **Oauth2 Grant Type:** `Authorization Code Grant`
    - **Authorization URL:** `https://welcome-eval.ukg.net/authorize` *(replace with your OAuth URL)*
    - **Client ID:** Your Client ID from UKG
    - **Client Secret:** Your Client Secret from UKG
    - **Authorization Code Grant Scope:** `access:wfm offline_access`
    - **Oauth2 Token URL:** `https://welcome-eval.ukg.net/oauth/token` *(replace with your token URL)*
    - **Oauth2 Custom Oauth Response Response Type:** `Json`
3. Under **Authorization Request Query Parameters**, add three key-value pairs:
    - **Key:** `organization` → **Value:** Your Organization ID from UKG (e.g., `org_YYkrKiZWOyiUuFci`)
    - **Key:** `audience` → **Value:** `https://wfm.ukg.net/api`
    - **Key:** `realm` → **Value:** Your Realm from UKG *(remove the `custom` prefix if present)*
4. Click **Save**.

### Step 3: Test the User Consent Connector

Testing a User Consent connector requires generating a token through the Moveworks UI:

1. In Agent Studio, navigate to the **HTTP Action** that uses this connector.
2. Click the **Test** button in the top-right corner.
3. You will be redirected to the **Generate Token** screen. Select the User Consent connector you just created.
4. A UKG login window will appear — enter your UKG user credentials to authenticate.
5. After successful login, you will be redirected back to Moveworks with a confirmation that authentication was successful.
6. The action is now ready to be tested. You can execute test API calls directly from the action’s Test panel.

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%203.png)

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%204.png)

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%205.png)

Use the following API call to verify the connector by retrieving the current authenticated user’s info (Click on Test again):

```bash
curl --request GET \
  --url 'https://{{ukg_host}}/api/v1/commons/persons/current_user_info?include_contact_information=true' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
```

A `200` response confirms the connector is working. Save the `employeeId` from the response — you’ll need it for further testing.

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%206.png)

**⚠️ Known Limitation:** UKG’s refresh token for User Consent Auth expires every **24 hours**. There is no automatic token refresh — users will need to manually reauthorize once daily if their session has expired within the Moveworks AI Assistant.


![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%207.png)

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%208.png)

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%209.png)

---

## Option B: Client Credentials Auth (Non-Interactive)

Use this flow for **system-to-system integrations** where actions run on a schedule or don’t require a specific user’s context through auth. 

### Step 1: Create an OAuth Client in UKG

1. Log in to UKG as an admin.
2. Navigate to **Administration → Application Setup → Common Setup → Client Management**.
3. Click **Create** and fill in the following fields:
    - **Name:** `UKG <> Moveworks Client Credential Connector` (or your preferred name)
    - **Description:** `Connect UKG with Moveworks using client credentials`
    - **Application Flow:** `Non-Interactive`
    - **Function Access Profile:** `Super Access`
        
        ![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%2010.png)
        
4. Click **Save**. UKG will generate credentials upon saving.
5. Copy and securely store:
    - **Client ID**
    - **Client Secret**
    - **Organization ID**
    - **OAuth Token URL** (e.g., `https://welcome-eval.ukg.net/oauth/token`)

**Important:** The Client Secret cannot be recovered after leaving this page. If lost, regenerate it and update the Moveworks connector accordingly.

### Step 2: Configure the Moveworks HTTP Connector

1. In Agent Studio, go to **HTTP Connectors → Create**.
2. Fill in the connector fields:
    - **Connector Name:** `UKG_Client_Credentials` (or your preferred name)
    - **Base URL:** `https://{{ukg_tenant}}.cfn.mykronos.com/api` — replace `ukg_tenant` with your organization’s UKG tenant hostname
    - **Auth Config:** `Oauth2`
    - **Oauth2 Grant Type:** `Client Credentials Grant`
    - **Client ID:** Your Client ID from UKG
    - **Client Secret:** Your Client Secret from UKG
    - **Client Credentials Grant Scope:** `access:wfm`
    - **Oauth2 Token URL:** `https://welcome-eval.ukg.net/oauth/token` *(replace with your token URL)*
    - **Oauth2 Custom Oauth Response Response Type:** `Json`
3. Under **Oauth2 Custom Oauth Request Options Additional Request Data**, add three key-value pairs:
    - **Key:** `audience` → **Value:** `https://wfm.ukg.net/api`
    - **Key:** `grant_type` → **Value:** `client_credentials`
    - **Key:** `organization` → **Value:** Your Organization ID from UKG (e.g., `org_YYkrKiZWOyiUuFci`)
4. Click **Save**.

### Step 3: Test the Client Credentials Connector

Use the `employeeID (personId)` obtained from the User Consent test action (or any known UKG person ID) to verify the connector.

```bash
curl --request GET \
  --url 'https://{{ukg_host}}/api/v1/commons/persons/{{personID}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
```

A `200` response confirms the connector is working.

![image.png](UKG%20Pro%20WFM%20Connector%20Guide/image%2011.png)

---

## Troubleshooting

- **Client Management page not visible** — Your tenant may not be configured for UKG Authentication. Contact your UKG admin.
- **`401 Unauthorized` on API calls** — Verify Client ID, Client Secret, and that the token hasn’t expired.
- **`403 Forbidden`** — Check that the Function Access Profile (Client Credentials) has sufficient permissions.
- **Redirect URL mismatch error** — Ensure the Redirect URL in UKG exactly matches the one configured in Moveworks (including trailing slashes).
- **Token refresh failures** — Confirm `offline_access` is included in the scope for User Consent Auth.
- **Lost Client Secret** — Regenerate in UKG under Client Management, then update the Moveworks connector.

---

## Congratulations!

You’ve successfully connected UKG Pro WFM to Moveworks Agent Studio using both OAuth 2.0 Authorization Code (User Consent) and Client Credentials authentication flows. Your connectors are now ready for use within Moveworks agent studio plugins.