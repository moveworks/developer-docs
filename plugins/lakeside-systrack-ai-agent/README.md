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

The **Systrack AI Assistant** plugin enables users to engage in real-time, context-aware troubleshooting and device analysis through the Moveworks AI Assistant. By connecting to the Lakeside SysTrack AI API and leveraging the API-Managed Threading pattern and Dynamic Slot Filling, the Moveworks Reasoning Engine can automatically identify a user's device and maintain conversation continuity across multiple turns — allowing users to ask follow-up questions without losing context.

This guide provides a step-by-step process to configure the connectors, build the routing logic using Compound Actions, and deploy a Conversational Process that manages both device selection and session IDs automatically.

## Prerequisites

- **Lakeside SysTrack Instance:** An active SysTrack Cloud instance
- **API Credentials:** Valid API keys or Bearer tokens for authentication
- **Agent Studio Access:** Permissions to create Connectors and Plugins

# What are we building?

## Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+have+been+having+some+audio+issues+with+my+device.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPulling+SysTrack+diagnostics+using+your+request%3A+%3Cstrong%3E%E2%80%9CI+have+been+having+some+audio+issues+with+my+device.+Please+analyze+current+audio+health+%28output+and+input%29%2C+recent+audio+errors+today%2C+and+recommend+next+steps+based+on+SysTrack+data.%E2%80%9D%3C%2Fstrong%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERetrieving+your+device%E2%80%99s+audio+health+details+from+%3Cstrong%3ESysTrack%3C%2Fstrong%3E+for%3A+%E2%80%9CI+have+been+having+some+audio+issues+with+my+device%E2%80%A6%E2%80%9D%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Ch3%3EWhat+SysTrack+shows+for+your+laptop%3C%2Fh3%3E%3Cp%3EYour+audio+outputs+and+inputs+are+both+active+and+set+as+defaults+%28%3Cstrong%3ESpeakers+at+30%25+volume%3C%2Fstrong%3E%2C+%3Cstrong%3ELogitech+BRIO+mic%3C%2Fstrong%3E%29.+I+found+%3Cstrong%3Eno+audio-related+errors+in+today%E2%80%99s+System+log%3C%2Fstrong%3E.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Ch3%3ENext+steps+%28per+SysTrack+recommendation%29%3C%2Fh3%3E%3Cp%3EPlease+run+Windows%E2%80%99+built-in+troubleshooters%3A%3Cbr%3E%3Cbr%3E1.+Go+to+%3Cstrong%3ESettings+%26gt%3B+System+%26gt%3B+Sound+%26gt%3B+Troubleshoot%3C%2Fstrong%3E+under+%3Cstrong%3E%E2%80%9COutput.%E2%80%9D%3C%2Fstrong%3E%3Cbr%3E2.+Then+under+%3Cstrong%3E%E2%80%9CInput%2C%E2%80%9D%3C%2Fstrong%3E+click+%3Cstrong%3ETroubleshoot%3C%2Fstrong%3E.%3Cbr%3E%3Cbr%3EAfter+you+run+those+two+troubleshooters%2C+tell+me+what+your+symptom+is+%28no+sound%2C+low+volume%2C+crackling%2C+mic+not+detected%2C+etc.%29+and+whether+it+improved.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Ch3%3ERelated+internal+guidance+%28if+this+is+during+a+call%2Fmeeting%29%3C%2Fh3%3E%3Cp%3EIf+the+issue+is+happening+in+a+conference+room+or+during+a+video+call%2C+these+KBs+may+apply%3A%3Cbr%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EMicrosoft+Teams+Camera+or+Audio+Not+Working+%E2%81%BD%C2%B9%E2%81%BE%3Cbr%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EHow+to+Troubleshoot+Audio+Issues+for+Video+Calls+in+a+Conference+Room+%E2%81%BD%C2%B2%E2%81%BE%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

## Step 1: Setup the HTTP Connector

Establish a secure connection between Moveworks and the SysTrack AI API.

1. Navigate to **Agent Studio** → **HTTP Connector**.
2. Click **Create**.
3. Fill in the basic information:
    - **Name:** `Lakeside SysTrack Connector`
    - **Base URL:** `https://cloud.lakesidesoftware.com`
    - **Auth Config:** Select **Bearer Auth** (or your specific method) and provide your token.
4. **Save and Test** to ensure a successful connection.

## Step 2: Create the HTTP Actions

You need three actions: one to fetch the user's devices, one to start a session, and one to continue it.

### Action 1: Get User Systems (Dynamic Lookup)

- **Name:** `systrack_get_user_systems`
- **Method:** `GET`
- **Endpoint URL:** `/systrackaiapi/users/{{{meta_info.user.email_addr}}}/systems`
- **Output Mapper:** Map the response to a list of system names (e.g., `data.systems[*].name`).

### Action 2: Start Conversation

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

### Action 3: Continue Conversation

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

## Step 3: Create the Router (Compound Action)

This acts as the "brain" to decide whether to start a new thread or continue an existing one.

1. Go to **Compound Actions** → **Create**.
2. **Name:** `systrack_chat_router`
3. **Input Args:** `conversation_id` (Optional), `user_message` (Required), `system_name` (Required).
4. **DSL Logic:**

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

## Step 4: Configure the Conversational Process

### Slot 1: system_name (Dynamic Selection)

- **Data Type:** `String`
- **Inference Policy:** `Infer if available`
- **Slot Filling Action:** `systrack_get_user_systems`
- **Description:** "The specific device name from SysTrack the user wants to investigate."

### Slot 2: conversation_id (The Managed Thread)

- **Data Type:** `String`
- **Inference Policy:** `Always Infer`
- **Fallback Expression:** `null`
- **Description:** "NEVER ask the user for this. It is the UUID used to maintain conversation continuity. Default to null if not in context."

### Slot 3: user_message

- **Data Type:** `String`
- **Inference Policy:** `Infer if available`

## Step 5: Launch the Plugin

1. **Create Plugin:** "Lakeside SysTrack Assistant."
2. **Triggers:** *"Troubleshoot my device with SysTrack"*, *"Why is my laptop slow?"*
3. **Mapping:** Map slots to the `systrack_chat_router`.
4. **Publish.**
