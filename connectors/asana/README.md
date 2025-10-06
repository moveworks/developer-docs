---
accreditations:
- ajaymerchia
- DEFAULT
availability: VALIDATED
difficulty_level: BEGINNER
fidelity: GUIDE
name: Asana
time_in_minutes: 15
---

# **Introduction**

Asana's API provides a robust platform to integrate and streamline tasks in your Asana workspace. This guide will demonstrate how to connect Asana to Agent Studio. In doing so, there are two ways you can proceed:
1. Webhook - This is best when building ambient agents that are trigged from a system event inside of Asana. 
2. Personal Access Token - This is best when you want to build user trigged agents that connect to Asana.


# Asana Webhook Connection
## What you are connecting
- **Asana** will POST webhook deliveries to a URL you give it. On creation, Asana performs a handshake: it POSTs with `X-Hook-Secret`; you must echo that same header back with 200/204 to activate the webhook. Subsequent deliveries include `X-Hook-Signature` (HMAC-SHA256 of the raw body using the shared secret from the handshake).
    - [Asana Webhook Documentation](https://developers.asana.com/docs/webhooks-guide)
- **Moveworks Listener** is your HTTPS endpoint. What you will configure
  1. A **one-time challenge handler** that detects Asana’s handshake and **echoes** `X-Hook-Secret` back in the response headers.
  2. **Signature verification** (HMAC-SHA256) of regular deliveries using the **same secret**. [Moveworks Webhook Documentation](https://help.moveworks.com/docs/webhooks-listener#/)
    ![Asana-Mermaid](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Mermaid-Diagram-Asana-Webhook.png)
    

## Walk Through
### Step 1: In Agent Studio → **Listeners**:
1. **Create listener** → copy the **Webhook URL** (you’ll paste into Asana’s `target`). 
    ![Create-Listener](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Create-Asana-Listener.png)
2. **Verification → Add New → One-Time Verification Challenge**
    - **Challenge Detection (DSL):**
        ```
        headers["X-Hook-Secret"]
        ```
        
    - **Challenge Response:**
        - **HTTP Status:** `200 OK`
        - **Response Headers:** set
            
            ```
            X-Hook-Secret: headers["X-Hook-Secret"]
            
            ```
            
        - **Response Body:** *(empty)*
        
        This satisfies Asana’s handshake: it sends `X-Hook-Secret`; you must return the **same** header with 200/204. 
        
![Asana-Verification](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Asana-Listener-Verfication.png)

### Step 3: Create the Asana Webhook
Use a Personal Access Token or OAuth token. For this you will likely use a PAT. Please reference [our guide below on how to create a PAT](https://marketplace.moveworks.com/connectors/asana#walkthrough). Store the PAT securely in an enviornment variable, secret store, etc.


### Step 4: Establish Asana Webhook

You must trigger a **POST** request to [`https://app.asana.com/api/1.0/webhooks`](https://app.asana.com/api/1.0/webhooks) including a

- `resource` (a task, project, etc. GID),
- `target` (your Moveworks Listener URL),
- optional `filters` to avoid firehoses.

Make the call via curl, postman, or any tool to initiate the call to the Asana API to establish the webhook. Asana does not provide a way of doing this in the UI.

**cURL template**

```bash
# --- inputs ---
# PAT or use an OAuth access token
ASANA_PAT="Place PAT or OAuth here" 
# e.g., a project gid or portfolio/task gid                        
RESOURCE_GID="place GID here"               
# Moveworks listener endpoint you want Asana to call:
TARGET_URL="place moveworks listener url here"                           

# --- create webhook ---
curl -sS -X POST "https://app.asana.com/api/1.0/webhooks" \
-H "Authorization: Bearer ${ASANA_PAT}" \
-H "Content-Type: application/json" \
--data-binary @- <<JSON
{
"data": {
"resource": "${RESOURCE_GID}",
"target": "${TARGET_URL}",
"filters": [
{
"resource_type": "task",
"action": "changed",
"fields": ["assignee", "completed", "due_on", "due_at", "name"]
}
]
}
}
JSON

```

**What happens next (handshake):**

- Asana will immediately POST to `TARGET_URL` with header `X-Hook-Secret: <secret>`.
- Your Listener returns `200` + **echo header** `X-Hook-Secret: <same secret>`.
- Asana completes the creation request by responding to your post request **to**https://app.asana.com/api/1.0/webhooks with `201 Created` and returns the webhook record with the secret.
    - **Make sure to record** **the** one time **“X-Hook-Secret”** and save it securely to input into the verification configuration in the Moveworks Listener in the next step.
    - Example response payload from webhook creation via curl, postman, etc below.

```json
{
  "data": {
    "gid": "12345",
    "resource_type": "webhook",
    "active": false,
    "resource": {
      "gid": "12345",
      "resource_type": "task",
      "name": "Bug Task"
    },
    "target": "https://example.com/receive-webhook/7654",
    "created_at": "2012-02-22T02:06:58.147Z",
    "last_failure_at": "2012-02-22T02:06:58.147Z",
    "last_failure_content": "500 Server Error\\n\\nCould not complete the request",
    "last_success_at": "2012-02-22T02:06:58.147Z",
    "delivery_retry_count": 3,
    "next_attempt_after": "2012-02-22T02:06:58.147Z",
    "failure_deletion_timestamp": "2012-02-22T02:06:58.147Z",
    "filters": [
      {
        "resource_type": "task",
        "resource_subtype": "milestone",
        "action": "changed",
        "fields": [
          "due_at",
          "due_on",
          "dependencies"
        ]
      }
    ]
  },
  "X-Hook-Secret": "b537207f20cbfa02357cf448134da559e8bd39d61597dcd5631b8012eae53e81"
}
```

References for creation + filters + handshake semantics: creating webhooks, handshake, resources/actions, signature. ([developers.asana.com](https://developers.asana.com/reference/createwebhook))

### Step 5: Create the Listener Validation
1. **Verification → Add New → Signature Verification (HMAC)**
    - **Secret Shared By External System:** paste the *Asana* webhook secret you captured after Step 3 above.
    - **Hash mode:** `SHA-256`
    - **Verification Payload:** `raw_body`
    - **Verification Received Signature:**
        
        ```
        headers["X-Hook-Signature"]
        
        ```
        
    
    ![Listener-Validation](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Asana-Hook-Secret.png)
    
    Asana signs each delivery with HMAC-SHA256 of the **raw request body** using the handshake’s secret and sends that as `X-Hook-Signature`. Moveworks will compute and compare.

### Congratulations!
You’ve successfully setup an Asana Webhook inside of Agent Studio. This opens up a variety of automation and integration possibilities within your Asana Workspace. 

# Asana Personal Access Token Connection

## **Prerequisites**

- Access to an Asana workspace
- [Install Postman](https://www.postman.com/downloads/)

## **Walkthrough**

### **Step 1: Create a Personal Access Token**

1. Go to the [Asana developer console](https://app.asana.com/0/my-apps)
2. Click on `Create New Token` under `Personal access tokens`. 
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled.png)
    
3. Provide a description for your key
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled%201.png)
    
4. Copy the token
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled%202.png)
    

### **Step 2: Test with Postman**

1. Set up your request in Postman with your `Personal access token`.
    
    ```bash
    curl https://app.asana.com/api/1.0/users/me \
      -H "Authorization: Bearer {{YOUR_PERSONAL_ACCESS_TOKEN}}"
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of your user information.
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled%203.png)
    

### **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://app.asana.com/api`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `Authorization`
    - Header Auth Value Pattern: `Bearer %s`
    - Api Key: `{{your_personal_access_token}}`
2. Define your API action for channel creation.
    
    ```bash
    curl https://app.asana.com/api/1.0/users/me \
      -H "Authorization: Bearer {{YOUR_PERSONAL_ACCESS_TOKEN}}"
    ```
    
    - Path: `/1.0/users/me`
    - Method: `GET`
3. Test your setup in Agent Studio and look for a successful execution.
    
    ```json
    
    {
    	"data": {
    		"email": "************",
    		"gid": "1200311869439617",
    		"name": "Ajay Merchia",
    		...
    	}
    }
    ```
    

### **Congratulations!**

You've successfully integrated Asana’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your Asana workspace.
