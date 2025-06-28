---
description: A plugin that lets a user request software access.
fidelity: GUIDE
name: Request Software Access
difficulty_level: BEGINNER
time_in_minutes: 10
num_implementations: 2
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHelp+with+access+to+y+scaler.+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Of+course%21+What+type+of+access+do+you+need%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Add+Access%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Modify+Access%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Remove+Access%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Add+Access%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Is+this+request+on+behalf+of+someone+else%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Yes%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes+-+for+Joan%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EHelp+Access+To+Y+Scaler%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+Software+Access%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGot+it.+Joan+now+has+access+to+y+scaler.+Let+me+know+if+there%27s+anything+else+you+need%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---
# Request Software Access

## **Introduction:-**

The **“Request Software Access”** plugin simplifies and accelerates the process of requesting access to software within an organization. By integrating with ServiceNow’s catalog system, this plugin allows users to submit software access requests directly through automated workflows—without the need to navigate complex forms or interfaces.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHelp+with+access+to+y+scaler.+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Of+course%21+What+type+of+access+do+you+need%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Add+Access%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Modify+Access%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Remove+Access%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Add+Access%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Is+this+request+on+behalf+of+someone+else%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Yes%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes+-+for+Joan%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EHelp+Access+To+Y+Scaler%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+Software+Access%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGot+it.+Joan+now+has+access+to+y+scaler.+Let+me+know+if+there%27s+anything+else+you+need%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for Servicenow first, prior to installing this plugin. Please follow the  [Servicenow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API #1 : Post Software Access Request**

```bash
curl --location 'https://<Your instance>/api/now/table/sc_req_item' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <Your access token>' \
--data-raw '{
 "short_description": "Request for Software Access",
  "requested_for": "<requester_email>",
  "cat_item":  "<software_name>",
 }
'
```

### **Request Body Parameters:**

- **`short_description`** *(string)* – A brief summary of the request.
    
    Example: `"Request for Software Access"`
    
- **`requested_for`** *(string, email)* – The email address of the user requesting the software.
    
    Example: `"abraham.lincoln@example.com"`
    
- **`cat_item`** *(string)* – The catalog item ID or name representing the software.
    
    Example: `"Y Scaler"`
    

**API #2 : Patch The Software Approval**

```bash
curl --location --request PATCH 'https://<your_instance>.service-now.com/api/now/table/sc_req_item/<your_sys_id>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your_access_token>' \
--data '{
  "approval": "<approval_type>"
}'

```

### **Request Body Parameters:**

- **`approval`** *(string)* – The approval state of the request item.
    
    Common values: `"approved"`, `"rejected"`, `"requested"`
    
    Example: `"approved"`