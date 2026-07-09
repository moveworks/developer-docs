---
availability: IDEA
description: Connect Moveworks to Lakeside SysTrack Software.
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/lakeside-systrack-ai-integration-logo.svg
name: Lakeside Systrack AI
---

## Introduction
 
Lakeside SysTrack is a leading digital experience monitoring (DEM) platform that provides deep visibility into endpoint performance, device health, and employee experience data. Organizations use it to proactively identify and resolve IT issues, reduce support costs, and deliver a better employee technology experience.
 
By connecting Lakeside SysTrack to **Moveworks Agent Studio**, you can enable employees and IT teams to interact with device diagnostics and troubleshooting capabilities directly through their AI assistant. This includes real-time device health analysis, audio and performance issue investigation, multi-turn AI-powered troubleshooting conversations, and automated device identification — all without leaving the conversational interface.
 
This guide walks through setting up API Key authentication to connect Lakeside SysTrack with Agent Studio. For a full list of available API resources, refer to the [**Lakeside SysTrack API Documentation**](https://docs.lakesidesoftware.com).
 
---
 
## Prerequisites
 
### Lakeside SysTrack Requirements
 
- Admin privileges in your SysTrack Cloud instance to manage API keys
- Access to **Settings > Manage API Keys**
- Your SysTrack Cloud hostname (e.g., `cloud.lakesidesoftware.com`)

### Moveworks Requirements
 
- Agent Studio admin access in your Moveworks tenant ([grant access guide](https://help.moveworks.com/docs/manage-roles-and-permissions-for-moveworks-applications#add-an-application-admin))

---
 
## API Key Authentication
 
Use this method for all new integrations. API keys provide enhanced security, simplified management, and extended expiration periods of up to 180 days.
 
### Step 1: Generate an API Key in SysTrack
 
1. Log in to SysTrack as an admin.
2. Navigate to **Settings > Manage API Keys**.
3. Click **Generate Key** and provide a descriptive name (e.g., `Moveworks Integration`).
4. Copy the full API key from the **Generate Key** dialog immediately — it cannot be recovered after closing.

> **Important:** Store the API key securely. If lost, you will need to use the **Regenerate Key** option and update the Moveworks connector accordingly.
 
### Step 2: Configure the Moveworks HTTP Connector
 
1. In Agent Studio, go to **HTTP Connectors → Create**.
2. Fill in the connector fields:
   - **Connector Name:** `Lakeside_SysTrack_Connector` (or your preferred name)
   - **Base URL:** `https://{{systrack_hostname}}` — replace `systrack_hostname` with your SysTrack Cloud hostname (e.g., `cloud.lakesidesoftware.com`)
   - **Auth Config:** `API Key`
3. Under **Request Headers**, add the following key-value pair:
   - **Key:** `systrack-api-key` → **Value:** Your full API key copied from SysTrack
4. Click **Save**.

### Step 3: Test the Connector
 
Use the following API call to verify the connector by retrieving a list of device groups:
 
```bash
curl --request GET \
  --url 'https://{{systrack_hostname}}/api/groups' \
  --header 'systrack-api-key: {{your_api_key}}'
```
 
A `200` response with a list of groups confirms the connector is working.
 
---
 
## Troubleshooting
 
- **`401 Unauthorized`** — Verify your API key is correct and has not been revoked.
- **`403 Forbidden`** — Check that the API key has the required permissions to access the endpoint.
- **API key not visible** — API keys can only be copied at the time of generation. If lost, use **Regenerate Key** in **Settings > Manage API Keys** and update the Moveworks connector.
- **Cannot reach SysTrack hostname** — Confirm the base URL uses your exact SysTrack Cloud hostname (e.g., `cloud.lakesidesoftware.com`) with no trailing slash.

---
 
## Congratulations!
 
You've successfully connected Lakeside SysTrack to Moveworks Agent Studio. Your connector is now ready for use within Moveworks Agent Studio plugins
