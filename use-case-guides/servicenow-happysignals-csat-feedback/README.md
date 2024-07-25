---
design_pattern_id: 10
name: ServiceNow Happy Signals CSAT Survey
description: Collect CSAT feedback from employees when tickets are resolved
systems: [servicenow]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22iPaaS%3A+Scheduled+job+that+runs+once+a+month+at+the+end+of+the+month.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22It%27s+time+to+prep+for+month+end+close%21+We+need+your+help+to+ensure+our+financials+accurately+represent+our+business+activity.+%5Cn%5Cn%F0%9F%91%89+Please+look+through+your+inbox+and+forward+any+invoices+that+may+have+been+missed+to+%3Ca+href%3D%5C%22mailto%3Aap%40moveworks.ai%5C%22%3Eap%40moveworks.ai%3C%2Fa%3E.%5Cn%5Cn%F0%9F%91%89+We+also+need+your+expense+reports+submitted+in+%3Ca+href%3D%5C%22expensify.com%5C%22%3EExpensify%21%3C%2Fa%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Emoji+codes+are+supported+across+all+platforms.+Links+all+work+with+link+tracking+analytics.%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 40
difficulty_level: Beginner
---

# Introduction

In this tutorial, we will explore how to use Creator Studio with ServiceNow to send our a CSAT Survey notification when tickets are resolved. 

Let's get started!

# Prerequisites

- Access to create Business Rules in ServiceNow
- `HappyLinkCreator()` function available in ServiceNow as part of your [Happy Signals ServiceNow package](https://support.happysignals.com/technical-guides#servicenow).

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22iPaaS%3A+Scheduled+job+that+runs+once+a+month+at+the+end+of+the+month.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22It%27s+time+to+prep+for+month+end+close%21+We+need+your+help+to+ensure+our+financials+accurately+represent+our+business+activity.+%5Cn%5Cn%F0%9F%91%89+Please+look+through+your+inbox+and+forward+any+invoices+that+may+have+been+missed+to+%3Ca+href%3D%5C%22mailto%3Aap%40moveworks.ai%5C%22%3Eap%40moveworks.ai%3C%2Fa%3E.%5Cn%5Cn%F0%9F%91%89+We+also+need+your+expense+reports+submitted+in+%3Ca+href%3D%5C%22expensify.com%5C%22%3EExpensify%21%3C%2Fa%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Emoji+codes+are+supported+across+all+platforms.+Links+all+work+with+link+tracking+analytics.%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D) shows the experience we are going to build. The entirety of the text can be customized based on your business requirements.

## Creator Studio Components

**Triggers:** 

1. ServiceNow Business Rule

**Slots**: 

1. None

**Actions:** 

1. Fill out CSAT Survey

**Guidelines:** 

1. None

## Discovery Questions to Personalize Your Experience

1. What text do you want your notification to say?
    * Customize the notification text by accessing the Purple Chat Mock > clicking on the chat bubble to edit the text.
    ![Purple Chat Editing Image](./ServiceNow%20Happy%20Signals%20CSAT%20Survey/image.png)

2. Which employees / tickets should receive these notifications? E.g: Do you want to exclude executives/VIP users?
    * This is configured in the [launch rules](https://developer.moveworks.com/creator-studio/reference/rules/) for your plugin.

3. Do you want to resolve on all tickets or a subset of tickets?
    * This determines the triggering condition configured in your Servicenow Business Rule.

# Steps

## Step 1: Configure the Moveworks SDK to send Messages via Events API

Note: Be sure to replace [`https://api.am-eu-central.moveworks.ai`](https://api.am-eu-central.moveworks.ai) with the relevant URL for your Moveworks environment.

| Data Center | Moveworks API Base URL |
| --- | --- |
| US - Standard | http://my.moveworks.com  |
| GovCloud | http://my.moveworksgov.com |
| EU | http://my.am-eu-central.moveworks.com/ |
| Canada | http://my.am-ca-central.moveworks.com/ |
| Australia | https://www.notion.so/My-Moveworks-Customer-Enablement-Plan-eac66a80c5784990b866869e51042475?pvs=21 |

```jsx
var MoveworksApiSdk = Class.create();
 
MoveworksApiSdk.prototype = {
 
	initialize: function () {
    	this.baseUrl = "https://api.moveworks.com"
	},
 
	request: function (method, path, body) {
    	var req = new sn_ws.RESTMessageV2();
    	req.setHttpMethod(method);
    	req.setEndpoint(this.baseUrl + path);
        req.setRequestHeader("Authorization", "Bearer " +     gs.getProperty('moveworks.api.bearer_auth_token'));
        req.setRequestBody(JSON.stringify(body));
    	req.setHttpTimeout(60000);
    	response = req.execute();
    	return response;
	},
 
	send_message: function (recipients, msg, event_id) {
    	return this.request("post", "/rest/v1/events/" + event_id + "/messages/send", {
        	"recipients": recipients,
        	"message": msg
    	});
	},
 
	type: 'MoveworksApiSdk'
};

```

## Step 2: In Moveworks Creator Studio, create the API Key and an Event for this Notification

![Create Events Image](./ServiceNow%20Happy%20Signals%20CSAT%20Survey/events-image.png)

Be sure to note down the Event ID, as you will need that in subsequent steps.

## Step 3: Test Events API in Postman / API teste

Test your Events API credentials in an API client like Postman or our [Events API tester](https://developer.moveworks.com/creator-studio/quickstart/events/#step-2-send-a-message)

```bash
curl --location 'https://api.moveworks.ai/rest/v1/events/{{event_id}}/messages/send' \
--header 'Authorization: Bearer {{event_api_key}}' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "message": "This is an example of Events API messages working in next-gen copilot 🔥",
    "recipients": [
      "your_email@example.com"
    ]
}'
```

## Step 4: Configure the Business Rule in ServiceNow

1. Configure “When to run”. To start off, you can select when the “incident state changes to Resolved”.
    * Note: You can customized this step based on your business requirements. For example, if you have custom states, you would select that instead of `Resolved` . Additionally, if you do not want to run on every ticket, you can add more conditions to the filter query.
    
    ![Business Rule Configuration Page](./ServiceNow%20Happy%20Signals%20CSAT%20Survey/business-rule-1.png)

1. On the Advanced tab, add the following code.

    ![Business Rule Configuration Page 2](./ServiceNow%20Happy%20Signals%20CSAT%20Survey/business-rule-2.png)

**Code:**

```jsx
(function executeRule(current, previous /*null when async*/) {

var happyLinkCreator = new x_pgo_happysignals.HappyLinkCreator();

var url = happyLinkCreator.createLink(current);

var message = 'Your case "' + current.number + ' - ' + current.short_description + '" has been resolved with the following notes:<br>Please click <a href="'+ url + '">here</a> to <b>accept the resolution</b> and rate your experience.<br>If your issue was not resolved, please reopen the ticket!';

var event_id="REPLACE_ME";

var moveworksAPI = new MoveworksApiSdk();

moveworksAPI.send_message([current.caller_id.email.toString()], message, event_id);

})(current, previous);
```

🚧 Note: replace `event_id` with your event id from Step 2 above.

# Congratulations!

You have just added CSAT to your ServiceNow tickets when they get resolved. Look forward to getting a higher rate of CSAT submissions from your employees.

**The final experience will look something like:**

![Untitled](./ServiceNow%20Happy%20Signals%20CSAT%20Survey/Untitled.png)