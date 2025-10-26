---
availability: VALIDATED
description: Connect your Moveworks Copilot to Highspot.
difficulty_level: BEGINNER
fidelity: GUIDE
logo: https://www.acquia.com/sites/default/files/styles/large/public/media/image/2023-08/Highspot%20Logo_Integration.png?itok=jQVq5KVL
name: Highspot
time_in_minutes: 30
---

# Introduction

Integrating Highspot with Agent Studio enables seamless access to content, user data, and spot management through workflow automation. By connecting with Highspot's REST API using Basic Authentication, you can streamline content retrieval, automate sharing workflows, and personalize sales enablement.

This guide walks you through the setup process for connecting your Highspot environment to Agent Studio using an API Key and Secret.

Let’s get started!

# **Prerequisites**

Make sure you meet the following:

- You have access to **Highspot API Credentials**.
- You’re either using a **service account** or have permission to view documents and spots.

# **Connect with Basic Authentication**

Highspot’s API uses **Basic Authentication**, where:

- **Key** = Username
- **Secret** = Password

You’ll use these credentials when configuring your connection within Agent Studio.

## STEP 1: Generate API Key and Secret

To generate your Highspot API credentials:

1. **Log in** to your Highspot account.
2. Go to **User Settings** → **Developer** tab.
3. Locate the **API Credentials** section.
4. Click **Generate Key and Secret**.
5. **Copy and store** your Key and Secret securely—you won't be able to retrieve the Secret again after closing the window.

> ⚠️ Tip: API credentials are tied to the user who generates them. It's recommended to create a dedicated service account for API usage. This user can impersonate others by passing their email via the hs-user header.
> 

## STEP 2: Connect to Agent Studio

Now let’s set up the connection in Agent Studio:

- **Auth Type:** Basic Auth
- **Username:** Your Highspot **API Key**
- **Password:** Your Highspot **API Secret**

### Example Header (if needed):

```bash
Authorization: Basic <base64(key:secret)>
hs-user: user@example.com
```

You can also use the header `hs-user` to **impersonate** other users for actions like content retrieval or spot access.

## STEP 3: Test with a Simple API Call

- **Endpoint:** `/v1.0/search/items?query-string=Sales`
- **Method:** `GET`
- **Description:** Returns a list of documents matching the search query.

Use this endpoint in Agent Studio to validate your credentials and ensure access is configured correctly.

> ✅ A successful response will return a list of content the authenticated user (or impersonated user) can view.
> 

# Congratulations!

You’ve successfully connected Highspot with Agent Studio. You can now automate workflows for sales content, user data, and spot management—all tailored to your team’s enablement needs.