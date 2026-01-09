---
availability: INSTALLABLE
description: A plugin that allows for an incident to be converted into a problem.
installation_asset_uuid: 90734bf4-dca5-4b0a-8831-123c5db89c00
name: Create a Problem from an Incident
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+convert+an+incident+into+a+problem+in+servicenow%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+What+is+the+incident+number%2C+or+can+you+provide+a+description+to+search+for%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+incident+is+about+the+email+server+being+down.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+ServiceNow+incidents+with+the+keywords+%5C%22email+server+down%5C%22...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+3+matching+incidents.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+incidents+that+match+your+search.+Please+select+the+correct+one%3A%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22INC0010045+-+Email+server+unresponsive%22%7D%2C%7B%22buttonText%22%3A%22INC0010032+-+Users+reporting+email+delays%22%7D%2C%7B%22buttonText%22%3A%22INC0010019+-+Cannot+connect+to+SMTP+server%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EINC0010045+-+Email+server+unresponsive%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGreat.+I+will+convert+incident+%3Cb%3EINC0010045%3C%2Fb%3E+into+a+problem.+Can+you+provide+a+short+description+for+the+problem+record%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERoot+cause+appears+to+be+a+failed+patch+on+the+mail+exchange+server.+It+needs+to+be+investigated+by+the+infrastructure+team.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Drafting+problem+record+from+Incident+INC0010045.%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+create+a+problem+from+incident+%3Cb%3EINC0010045%3C%2Fb%3E+and+assign+it+to+the+%3Cb%3EInfrastructure+Team%3C%2Fb%3E.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Root+cause+appears+to+be+a+failed+patch+on+the+mail+exchange+server.%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010045+-+Email+server+unresponsive%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Problem%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECreate+Problem%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+Problem+record+from+Incident+INC0010045...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+created+Problem+PRB0040012.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+created+the+problem+record+for+you.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PRB0040012%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## **Introduction**

The **“Create a Problem from an Incident”** plugin makes it easy to turn an existing incident into a problem using the Moveworks AI Assistant. This helps IT teams effectively track and resolve recurring or complex issues. It also improves visibility and follow-up by organizing such incidents into dedicated problem records.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, so your team can quickly convert incidents into problems and streamline issue management. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+convert+an+incident+into+a+problem+in+servicenow%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+What+is+the+incident+number%2C+or+can+you+provide+a+description+to+search+for%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+incident+is+about+the+email+server+being+down.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+ServiceNow+incidents+with+the+keywords+%5C%22email+server+down%5C%22...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+3+matching+incidents.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+incidents+that+match+your+search.+Please+select+the+correct+one%3A%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22INC0010045+-+Email+server+unresponsive%22%7D%2C%7B%22buttonText%22%3A%22INC0010032+-+Users+reporting+email+delays%22%7D%2C%7B%22buttonText%22%3A%22INC0010019+-+Cannot+connect+to+SMTP+server%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EINC0010045+-+Email+server+unresponsive%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGreat.+I+will+convert+incident+%3Cb%3EINC0010045%3C%2Fb%3E+into+a+problem.+Can+you+provide+a+short+description+for+the+problem+record%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERoot+cause+appears+to+be+a+failed+patch+on+the+mail+exchange+server.+It+needs+to+be+investigated+by+the+infrastructure+team.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Drafting+problem+record+from+Incident+INC0010045.%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+create+a+problem+from+incident+%3Cb%3EINC0010045%3C%2Fb%3E+and+assign+it+to+the+%3Cb%3EInfrastructure+Team%3C%2Fb%3E.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Root+cause+appears+to+be+a+failed+patch+on+the+mail+exchange+server.%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010045+-+Email+server+unresponsive%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Problem%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECreate+Problem%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+Problem+record+from+Incident+INC0010045...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+created+Problem+PRB0040012.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+created+the+problem+record+for+you.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PRB0040012%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Create a Problem from an Incident functionality, ensure the ServiceNow integration user has the appropriate table-level permissions.

Specifically, confirm the following permissions are granted:

- **Table Access**: `Read` and `Create` access to the `problem` table
- **Field Access**: `Read` access to the `incident` table and `Write` access to the `problem_id` field (on the incident record)

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Incident by Description:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/incident?sysparm_query=descriptionLIKE{{description}}&sysparm_fields=number,description,sys_id' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameter:**

- `description` (string) – Filters incidents based on the content of the description.

### **API #2: Retrieve Incident by Number:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/incident?sysparm_query=number={{number}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameter:**

- `number` (string) – Filters incidents based on the incident number.

### **API #3: Retrieve a Specific User Group:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/sys_user_group?sysparm_query=nameLIKE{{user_group}}&sysparm_limit=1&sysparm_fields=sys_id,name' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
--header 'Content-Type: application/json'
```

**Query Parameter:**

- `user_group` (string) – Filters records based on the **Name** field of the user group.

### **API #4: Create a Problem Record:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "{{short_description}}",
  "assignment_group": "{{assignment_group}}"
}'
```

**Request Body Parameters:**

- `short_description` (string) – A brief summary of the problem being reported.
- `assignment_group` (string) – The ID of the group assigned to the problem.

### **API #5: Link an Incident to a Problem:**

```bash
curl --location --request PATCH 'https://<YOUR_DOMAIN>/api/now/table/incident/{{incident_sys_id}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "problem_id": "{{problem_id}}"
}'
```

**Query Parameter:**
- `incident_sys_id` (string) – The unique system ID of the incident to be updated.

**Request Body Parameters:**

- `problem_id` (string) – The unique system ID of the problem record to associate with this incident.