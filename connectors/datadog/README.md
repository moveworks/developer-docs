---
availability: INSTALLABLE
logo: https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/Datadog_logo.svg/1200px-Datadog_logo.svg.png
name: Datadog
---
## Introduction

Datadog is a cloud monitoring and observability platform — metrics, traces, logs, dashboards, monitors, SLOs, and incidents in one place. Connecting it to **Moveworks Agent Studio** lets engineers and on-call teams get service-health answers straight from their assistant — check a service's health, see firing monitors and active incidents, pull key signals (error rate, latency, throughput, SLOs), and automate other actions.

This connector guide helps you connect Datadog to Agent Studio using an **API Key + Application Key** (header auth). **`Datadog's OAuth 2.0 is limited to Datadog Partner Network members`**, so key-based auth is the supported path for an admin-managed connection. For available endpoints, see the [**Datadog API docs**](https://docs.datadoghq.com/api/latest/).

### How authentication works

Datadog exposes its platform through a REST API that is authenticated with two credentials working together:

- **API Key** — identifies your Datadog *organization*. Sent on every request in the `DD-API-KEY` header.
- **Application Key** — identifies the *application/user* making the request and carries the permission scopes. Sent on every request in the `DD-APPLICATION-KEY` header.

Both keys are required for Datadog API endpoints. In Moveworks, we store both as encrypted secrets on a single HTTP Connector — the API Key as the primary auth header and the Application Key as a common header.

<aside>
⚠️

**Why not OAuth?** Datadog does support OAuth 2.0, but **OAuth clients can only be created by members of the Datadog Partner Network** — they are not globally accessible to every customer. Building a published OAuth app requires going through Datadog's separate integration/partner certification program. For a first-party, admin-managed connection, the **API + Application Key** approach is the supported path. See [Considerations & Callouts](#considerations) below for the OAuth documentation link.

</aside>

---

## Prerequisites

### Datadog Requirements

- Admin access to your **Datadog** organization (to create API and Application keys).
- Knowledge of your **Datadog site** so you can set the correct Base URL (see the Base URL note in Step 2).

### Moveworks Requirements

- Access to **Moveworks Agent Studio** with permission to create HTTP Connectors.

---

## Step 1: Create your Datadog API & Application keys

### 1a. Generate an API Key

1. In Datadog, go to **Organization Settings → API Keys**.
2. Click **New Key**, give it a descriptive name (e.g., `Moveworks Agent Studio`), and create it.
3. Copy the key value immediately and store it securely — you'll paste it into Moveworks in HTTP connector setup steps.

![image.png](Datadog%20Connector%20Guide/image.png)

![image.png](Datadog%20Connector%20Guide/image%201.png)

![image.png](Datadog%20Connector%20Guide/image%202.png)

### 1b. Generate an Application Key (with scopes)

1. In Datadog, go to **Organization Settings → Application Keys**.
2. Click **New Key** and give it a descriptive name (e.g., `Moveworks Agent Studio App Key`). Do not create a **Personal Access Token**.
3. **Set scopes (recommended):** By default an application key inherits the full permissions of the user who created it. Add explicit **scopes** to enforce least privilege — grant only the read scopes the plugin actually needs (for example `metrics_read`, `dashboards_read`, `monitors_read`, `incident_read`, `logs_read_data`).
4. Copy the key value immediately and store it securely.

![image.png](Datadog%20Connector%20Guide/image%203.png)

![image.png](Datadog%20Connector%20Guide/image%204.png)

![image.png](Datadog%20Connector%20Guide/image%205.png)

![image.png](Datadog%20Connector%20Guide/image%206.png)

<aside>
🔒

**Store both keys securely.** Keep the API Key and Application Key in your secrets manager and never commit them to source control or paste them into shared docs. You'll enter them directly into Moveworks' encrypted secret fields in the next step.

</aside>

---

## Step 2: Configure the Moveworks HTTP Connector

In Agent Studio, create a new **HTTP Connector** and fill in the fields below.

### 2a. Basic details

| Field | Value | Notes |
| --- | --- | --- |
| **Connector Name** | e.g. `datadog_test_instance` | Permanent — cannot be changed once set. |
| **Display Name** *(optional)* | e.g. `Datadog Dev Instance` | User-friendly label. |
| **Display Description** *(optional)* | e.g. `Dev instance for Datadog` | Free text. |
| **Base URL** | `https://api.datadoghq.com` | **Must match your Datadog site based on region.** |

<aside>
🌐

**Base URL depends on your Datadog site.** Use the endpoint for your region — e.g. `https://api.datadoghq.com` (US1), `https://api.datadoghq.eu` (EU1), `https://api.us3.datadoghq.com` (US3), `https://api.us5.datadoghq.com` (US5), `https://api.ap1.datadoghq.com` (AP1). Confirm your site in the Datadog URL before saving. For more info, read the [Datadog sites](https://docs.datadoghq.com/getting_started/site/) doc on the Datadog platform.

</aside>

![image.png](Datadog%20Connector%20Guide/image%207.png)

### 2b. Auth Config — API Key (DD-API-KEY)

Set the **Auth Config** to **Api Key Auth**, then configure:

| Field | Value |
| --- | --- |
| **Auth Config** | `Api Key Auth` |
| **Api Key Auth Auth Type** | `Header Auth` |
| **Header Auth Key** | `DD-API-KEY` |
| **API Key** | *Paste the Datadog API Key from Step 1a — stored encrypted* |

![image.png](Datadog%20Connector%20Guide/image%208.png)

### 2c. Common Headers — Application Key (DD-APPLICATION-KEY)

The Application Key is added as an encrypted **Common Header** so it's sent on every request alongside the API key.

Under **Common headers**, add one entry:

| Field | Value |
| --- | --- |
| **Value Type** | `Credential` |
| **Credential Pattern** | `%s` |
| **Credential Secret** | *Paste the Datadog Application Key from Step 1b — stored encrypted* |
| **Key** | `DD-APPLICATION-KEY` |

![image.png](Datadog%20Connector%20Guide/image%209.png)

### 2d. Save

Click **Save** to create the connector. Both keys are now stored as encrypted secrets and injected into every outbound HTTP action as the `DD-API-KEY` and `DD-APPLICATION-KEY` headers.

---

## Step 3: Test the connector

Validate the connection with a real Datadog API request before wiring it into any plugin.

1. Create an **HTTP Action** in Agent Studio that uses the Datadog connector you just created.
2. Point it at a lightweight, read-only endpoint to validate the connection
3. Test and validate the action.

**Expected result:** A `200 OK` with `{"valid": true}` confirms both the API Key and Application Key are correct and the connector is authenticating successfully.

<aside>
✅

If you get a `403` or `{"valid": false}`, re-check that the API Key is in `DD-API-KEY`, the Application Key is in `DD-APPLICATION-KEY`, and that the Base URL matches your Datadog site.

</aside>

This curl command **retrieves all your dashboards from your Datadog organization**. Go to your HTTP action editor within Agent Studio and import the below API curl:

```bash
curl -X GET "https://api.datadoghq.com/api/v1/dashboard"
```

![image.png](Datadog%20Connector%20Guide/image%2010.png)

![image.png](Datadog%20Connector%20Guide/image%2011.png)

---

## Troubleshooting

- **`403` or `{"valid": false}` on the test call** — check the API Key is in `DD-API-KEY`, the Application Key is in `DD-APPLICATION-KEY`, and the Base URL matches your Datadog site.
- **`401` / `403` on real API calls** — the Application Key is missing scopes; add the required read scopes (Step 1b).
- **`404` / endpoint not found** — the Base URL doesn't match your Datadog region (US1 / EU1 / US3 / US5 / AP1).
- **`429` rate limited** — Datadog is throttling; retry after a short wait.

---

## Considerations & Callouts

<aside>
👥

**1. This is shared, admin-level auth — it does not respect individual user permissions.**

Because this is an API + Application Key integration, **every user of a plugin built on this connector acts as the single admin who configured the keys.** Requests do not run as the end user, so Datadog's per-user access controls are *not* enforced at the plugin level. The data returned is whatever the configured Application Key's scopes allow.

</aside>

<aside>
🛡️

**2. Gate access to match the key's data access level.**

Since all callers share the same credentials, you must ensure that **only users who are entitled to that level of Datadog data can access the plugins/connector.** Restrict the plugin's audience accordingly, and use least-privilege **application key scopes** (Step 1b) so the connector can only reach the data it truly needs.

</aside>

<aside>
🔑

**3. OAuth apps are restricted to the Datadog Partner Network.**

If you need per-user, OAuth-based auth instead of shared API keys, note that **OAuth clients in Datadog can only be created by Datadog partners** and require going through a separate integration/partner certification program — they are not globally available to all customers. Reference: [Datadog OAuth 2.0 documentation](https://docs.datadoghq.com/developers/authorization/) and [Become a Datadog Technology Partner](https://docs.datadoghq.com/developers/integrations/).

</aside>

---

## Congratulations!

You've successfully connected Datadog to Moveworks Agent Studio using API Key + Application Key header auth. Your connector is now ready to use within Moveworks Agent Studio plugins.