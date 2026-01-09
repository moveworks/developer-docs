---
availability: VALIDATED
description: Connect to Palo Alto Networks PAN OS.
logo: https://images.crunchbase.com/image/upload/c_pad,h_160,w_160,f_auto,b_white,q_auto:eco,dpr_2/tfdu8x1ecbity2d1xpe6
name: Palo Alto Networks
- General
---

# Introduction

Integrating Palo Alto Networks' PAN-OS with Agent Studio unlocks powerful network automation and monitoring capabilities through XML API access. By authenticating with an API key and setting the appropriate admin roles, you can retrieve system information, execute operational commands, and manage firewall configurations in an automated, repeatable way.

This guide walks you through the steps to enable XML API access, generate an API key, and set up a connection in Agent Studio.

Let’s get started!

---

# **Prerequisites**

Before you begin, ensure you:

- Have admin access to your **PAN-OS**
- Are using PAN-OS version **10.2 or later**.
- Have access to a firewall or Panorama IP/domain.

---

# **Assign an Admin User with XML API Permissions**

To access the PAN-OS API, a user must have **XML API access enabled** in their admin role.

## STEP 1: Set Up API Permissions

1. Log in to the **PAN-OS GUI**.
2. Navigate to:
    
    `Device → Administrators`
    
3. Create or edit an administrator account:
    - **Type:** Local (or LDAP/RADIUS/SAML if configured)
    - **Admin Role:**
        - Select an existing role like `superuser`
        - **OR** create a custom role with XML API access (see below)
4. To create a **custom admin role**:
    - Go to:
        
        `Device → Admin Roles`
        
    - Add or edit a role
    - Enable the ✅ **"XML API"** checkbox under the permissions for the required areas (e.g., Policies, Network, Objects)
5. Click **Commit** to apply changes.

> 📌 Note: There is no global toggle for API access—it is strictly granted through admin role permissions.
> 

---

# **Authenticate with an API Key**

PAN-OS uses **API keys** for authentication. You’ll first exchange your username and password for a key.

## STEP 2: Generate an API Key

Use the following `curl` command:

```bash
curl -k "https://<firewall-or-panorama>/api/?type=keygen&user=<admin-username>&password=<admin-password>"
```

**Response:**

```xml
<response status="success">
  <result>
    <key>YOUR_API_KEY_HERE</key>
  </result>
</response>
```

Store this `YOUR_API_KEY_HERE` securely — it will be used in every request from Agent Studio.

---

# **Connect to Agent Studio**

Once you have the API key, you can configure the connection in Agent Studio:

- **Base URL:**
    
    `https://<your-firewall-or-panorama-ip>`
    
- **Auth Type: API Key Auth**
- **Api Key Auth Type:** Param Auth
- Param Auth Param Name: “key”
- API Key: `YOUR_API_KEY_HERE`

---

---

# Congratulations!

You’ve successfully connected Palo Alto Networks PAN-OS with Agent Studio. You can now automate common firewall tasks, run health checks, and streamline your network operations securely.