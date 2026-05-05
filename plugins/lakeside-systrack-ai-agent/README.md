---
availability: VALIDATED
description: A plugin that manages real-time troubleshooting conversations by connecting to the Lakeside SysTrack AI API and maintaining session continuity across multiple turns.
name: Systrack AI Assistant
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+have+been+having+some+audio+issues+with+my+device.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPulling+SysTrack+diagnostics+using+your+request%3A+%3Cstrong%3E%E2%80%9CI+have+been+having+some+audio+issues+with+my+device.+Please+analyze+current+audio+health+%28output+and+input%29%2C+recent+audio+errors+today%2C+and+recommend+next+steps+based+on+SysTrack+data.%E2%80%9D%3C%2Fstrong%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERetrieving+your+device%E2%80%99s+audio+health+details+from+%3Cstrong%3ESysTrack%3C%2Fstrong%3E+for%3A+%E2%80%9CI+have+been+having+some+audio+issues+with+my+device%E2%80%A6%E2%80%9D%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Ch3%3EWhat+SysTrack+shows+for+your+laptop%3C%2Fh3%3E%3Cp%3EYour+audio+outputs+and+inputs+are+both+active+and+set+as+defaults+%28%3Cstrong%3ESpeakers+at+30%25+volume%3C%2Fstrong%3E%2C+%3Cstrong%3ELogitech+BRIO+mic%3C%2Fstrong%3E%29.+I+found+%3Cstrong%3Eno+audio-related+errors+in+today%E2%80%99s+System+log%3C%2Fstrong%3E.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Ch3%3ENext+steps+%28per+SysTrack+recommendation%29%3C%2Fh3%3E%3Cp%3EPlease+run+Windows%E2%80%99+built-in+troubleshooters%3A%3Cbr%3E%3Cbr%3E1.+Go+to+%3Cstrong%3ESettings+%26gt%3B+System+%26gt%3B+Sound+%26gt%3B+Troubleshoot%3C%2Fstrong%3E+under+%3Cstrong%3E%E2%80%9COutput.%E2%80%9D%3C%2Fstrong%3E%3Cbr%3E2.+Then+under+%3Cstrong%3E%E2%80%9CInput%2C%E2%80%9D%3C%2Fstrong%3E+click+%3Cstrong%3ETroubleshoot%3C%2Fstrong%3E.%3Cbr%3E%3Cbr%3EAfter+you+run+those+two+troubleshooters%2C+tell+me+what+your+symptom+is+%28no+sound%2C+low+volume%2C+crackling%2C+mic+not+detected%2C+etc.%29+and+whether+it+improved.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Ch3%3ERelated+internal+guidance+%28if+this+is+during+a+call%2Fmeeting%29%3C%2Fh3%3E%3Cp%3EIf+the+issue+is+happening+in+a+conference+room+or+during+a+video+call%2C+these+KBs+may+apply%3A%3Cbr%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EMicrosoft+Teams+Camera+or+Audio+Not+Working+%E2%81%BD%C2%B9%E2%81%BE%3Cbr%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EHow+to+Troubleshoot+Audio+Issues+for+Video+Calls+in+a+Conference+Room+%E2%81%BD%C2%B2%E2%81%BE%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Support
- Troubleshooting
- Ticketing
systems:
- lakeside
---

## Introduction
 
The **Lakeside SysTrack AI Assistant** plugin enables employees to engage in real-time, context-aware device troubleshooting through the Moveworks AI Assistant. By connecting to the Lakeside SysTrack AI API and leveraging the API-Managed Threading pattern and Dynamic Slot Filling, the Moveworks Reasoning Engine can automatically identify a user's device and maintain conversation continuity across multiple turns — allowing users to ask follow-up questions without losing context.
 
This guide provides a step-by-step process to configure the connectors, build the routing logic using Compound Actions, and deploy a Conversational Process that manages both device selection and session IDs automatically.
 
## Prerequisites
 
Before installing and using the **Lakeside SysTrack AI Assistant** plugin, please ensure the following requirements are met.
 
### 1. SysTrack Connector
 
This plugin requires an active **Lakeside SysTrack connector** configured in Agent Studio. If you have not already set one up, follow the [**Lakeside SysTrack Connector Guide**](https://marketplace.moveworks.com/connectors/lakeside-systrack-ai) available in the Moveworks Marketplace before proceeding.
 
### 2. SysTrack System Requirements
 
- An active **SysTrack Cloud** instance
- Valid **API credentials** — either an API key (recommended) or a bearer token for service account authentication
- The SysTrack AI API enabled on your instance (contact Lakeside support if unsure)
- **Agent Studio access** with permissions to create Connectors and Plugins

---
 
## What Are We Building?
 
### Agent Design
 
This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+have+been+having+some+audio+issues+with+my+device.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPulling+SysTrack+diagnostics+using+your+request%3A+%3Cstrong%3E%E2%80%9CI+have+been+having+some+audio+issues+with+my+device.+Please+analyze+current+audio+health+%28output+and+input%29%2C+recent+audio+errors+today%2C+and+recommend+next+steps+based+on+SysTrack+data.%E2%80%9D%3C%2Fstrong%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERetrieving+your+device%E2%80%99s+audio+health+details+from+%3Cstrong%3ESysTrack%3C%2Fstrong%3E+for%3A+%E2%80%9CI+have+been+having+some+audio+issues+with+my+device%E2%80%A6%E2%80%9D%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Ch3%3EWhat+SysTrack+shows+for+your+laptop%3C%2Fh3%3E%3Cp%3EYour+audio+outputs+and+inputs+are+both+active+and+set+as+defaults+%28%3Cstrong%3ESpeakers+at+30%25+volume%3C%2Fstrong%3E%2C+%3Cstrong%3ELogitech+BRIO+mic%3C%2Fstrong%3E%29.+I+found+%3Cstrong%3Eno+audio-related+errors+in+today%E2%80%99s+System+log%3C%2Fstrong%3E.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Ch3%3ENext+steps+%28per+SysTrack+recommendation%29%3C%2Fh3%3E%3Cp%3EPlease+run+Windows%E2%80%99+built-in+troubleshooters%3A%3Cbr%3E%3Cbr%3E1.+Go+to+%3Cstrong%3ESettings+%26gt%3B+System+%26gt%3B+Sound+%26gt%3B+Troubleshoot%3C%2Fstrong%3E+under+%3Cstrong%3E%E2%80%9COutput.%E2%80%9D%3C%2Fstrong%3E%3Cbr%3E2.+Then+under+%3Cstrong%3E%E2%80%9CInput%2C%E2%80%9D%3C%2Fstrong%3E+click+%3Cstrong%3ETroubleshoot%3C%2Fstrong%3E.%3Cbr%3E%3Cbr%3EAfter+you+run+those+two+troubleshooters%2C+tell+me+what+your+symptom+is+%28no+sound%2C+low+volume%2C+crackling%2C+mic+not+detected%2C+etc.%29+and+whether+it+improved.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Ch3%3ERelated+internal+guidance+%28if+this+is+during+a+call%2Fmeeting%29%3C%2Fh3%3E%3Cp%3EIf+the+issue+is+happening+in+a+conference+room+or+during+a+video+call%2C+these+KBs+may+apply%3A%3Cbr%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EMicrosoft+Teams+Camera+or+Audio+Not+Working+%E2%81%BD%C2%B9%E2%81%BE%3Cbr%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EHow+to+Troubleshoot+Audio+Issues+for+Video+Calls+in+a+Conference+Room+%E2%81%BD%C2%B2%E2%81%BE%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.
 
### How This Plugin Works
 
The plugin uses a **three-action architecture** paired with a **Compound Action router** to manage conversation state:
 
1. **Device Lookup** — Dynamically fetches the user's registered devices from SysTrack using their email address.
2. **Start Conversation** — Opens a new SysTrack AI session and returns a `conversation_id` that anchors subsequent turns.
3. **Continue Conversation** — Passes follow-up messages into the existing session using the stored `conversation_id`.
The Compound Action router checks whether a `conversation_id` already exists in context. If it does, it routes to the continue action. If not, it starts a new session. This allows multi-turn troubleshooting to work seamlessly without the user needing to re-identify their device on every message.
 
---
 
## Installation Steps
 
### Step 1: Set Up the HTTP Connector
 
If you haven't already, configure the Lakeside SysTrack HTTP connector:
 
1. Navigate to **Agent Studio → HTTP Connector → Create**.
2. Fill in the connector details:
   - **Name:** `Lakeside SysTrack Connector`
   - **Base URL:** `https://cloud.lakesidesoftware.com`
   - **Auth Config:** Select **API Key** (recommended) or **Bearer Auth** and provide your credentials.
3. Click **Save and Test** to confirm a successful connection.
Refer to the [**Lakeside SysTrack Connector Guide**](https://marketplace.moveworks.com/connectors/lakeside-systrack-ai) for full setup instructions.
 
---
 
### Step 2: Create the HTTP Actions
 
You need three actions: one to look up the user's devices, one to start a session, and one to continue it.
 
#### Action 1: Get User Systems (Dynamic Lookup)
 
- **Name:** `systrack_get_user_systems`
- **Method:** `GET`
- **Endpoint URL:** `/systrackaiapi/users/{{{meta_info.user.email_addr}}}/systems`
- **Output Mapper:** Map the response to a list of system names (e.g., `data.systems[*].name`)

#### Action 2: Start Conversation
 
- **Name:** `systrack_start_conversation`
- **Method:** `POST`
- **Endpoint URL:** `/systrackaiapi/conversations`
- **Input Args:** `user_message`, `system_name`
- **Request Body:**

```json
{
  "initialMessage": "{{user_message}}",
  "userIdentifier": "{{{meta_info.user.email_addr}}}",
  "displayName": "{{{meta_info.user.full_name}}}",
  "selectedSystemName": "{{system_name}}"
}
```
 
#### Action 3: Continue Conversation
 
- **Name:** `systrack_continue_conversation`
- **Method:** `POST`
- **Endpoint URL:** `/systrackaiapi/conversations/{{{conversation_id}}}`
- **Input Args:** `conversation_id`, `user_message`
- **Request Body:**

```json
{
  "message": "{{user_message}}"
}
```
 
---
 
### Step 3: Create the Router (Compound Action)
 
This Compound Action acts as the routing brain — deciding whether to start a new session or continue an existing one based on whether a `conversation_id` is already in context.
 
1. Go to **Compound Actions → Create**.
2. Set the **Name** to `systrack_chat_router`.
3. Define **Input Args:**
   - `conversation_id` — Optional
   - `user_message` — Required
   - `system_name` — Required
4. Add the following **DSL Logic:**

```yaml
steps:
  switch:
    cases:
      - condition: data.conversation_id != null
        steps:
          - action:
              action_name: systrack_continue_conversation
              output_key: result
              input_args:
                conversation_id: data.conversation_id
                user_message: data.user_message
          - return:
              output_mapper:
                conversation_id: data.conversation_id
                systrack_response: data.result.response
    default:
      steps:
        - action:
            action_name: systrack_start_conversation
            output_key: result
            input_args:
              user_message: data.user_message
              system_name: data.system_name
        - return:
            output_mapper:
              conversation_id: data.result.id
              systrack_response: data.result.response
```
 
---
 
### Step 4: Configure the Conversational Process
 
Define three slots that drive the plugin's dynamic behavior.
 
#### Slot 1: `system_name` (Dynamic Device Selection)
 
| Field | Value |
|-------|-------|
| **Data Type** | String |
| **Inference Policy** | Infer if available |
| **Slot Filling Action** | `systrack_get_user_systems` |
| **Description** | The specific device name from SysTrack the user wants to investigate. |
 
#### Slot 2: `conversation_id` (Managed Thread)
 
| Field | Value |
|-------|-------|
| **Data Type** | String |
| **Inference Policy** | Always Infer |
| **Fallback Expression** | `null` |
| **Description** | NEVER ask the user for this. It is the UUID used to maintain conversation continuity across turns. Default to null if not in context. |
 
#### Slot 3: `user_message`
 
| Field | Value |
|-------|-------|
| **Data Type** | String |
| **Inference Policy** | Infer if available |
| **Description** | The user's troubleshooting request or follow-up message. |
 
---
 
### Step 5: Launch the Plugin
 
1. Go to **Plugins → Create Plugin** and name it `Lakeside SysTrack AI Assistant`.
2. Add the following example **trigger phrases:**
   - *"Troubleshoot my device with SysTrack"*
   - *"Why is my laptop slow?"*
   - *"I'm having audio issues with my computer"*
   - *"Run diagnostics on my device"*
3. Map all slots to the `systrack_chat_router` Compound Action.
4. Click **Publish**.

---
 
## Troubleshooting
 
- **Device list not populating** — Confirm the user's email address in Moveworks matches the identifier used in SysTrack. Check that the `systrack_get_user_systems` action is correctly mapped.
- **`conversation_id` not persisting** — Verify that the `conversation_id` slot has **Inference Policy** set to `Always Infer` and a fallback of `null`. Ensure the router's `return` block maps `conversation_id` in both the start and continue paths.
- **`401 Unauthorized`** — The API key or bearer token may have expired. Re-authenticate and update the connector in Agent Studio.
- **Multi-turn context lost** — Confirm the Compound Action router is correctly evaluating the `data.conversation_id != null` condition and routing to `systrack_continue_conversation` on follow-up turns.
- **Wrong device selected** — If the user has multiple devices, the `system_name` slot will surface all devices for selection. Ensure the output mapper for `systrack_get_user_systems` correctly extracts `data.systems[*].name`.

---
 
## What Is In Scope for This Plugin?
 
- Real-time, **multi-turn device troubleshooting** powered by the SysTrack AI API
- **Automatic device identification** based on the user's email address
- **Session continuity** across multiple conversation turns without re-identifying the device
- Surfacing **device health data**, error logs, audio/performance diagnostics, and AI-generated remediation steps
- Support for **follow-up questions** within the same troubleshooting session

## What Is Out of Scope for This Plugin?
 
- **Bulk or scheduled device health reporting** across multiple employees (separate use case)
- **Pushing remediation actions** directly to the endpoint (e.g., remote script execution)
- **Manager or IT admin views** of fleet-wide device health
- Integration with **ticketing systems** for auto-creating incidents based on SysTrack findings (requires a separate Jira or ServiceNow plugin)
