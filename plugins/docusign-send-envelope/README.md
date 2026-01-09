---
availability: INSTALLABLE
description: A plugin that allows users to send envelopes to be signed using pre-defined
  templates.
installation_asset_uuid: 531b6e58-06f0-4664-8927-4e1dba351a5c
name: Send an Envelope Using a Template
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+send+an+NDA+for+signature+via+Docusign%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+with+that.+Here+are+some+relevant+templates+available%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+NDA+for+Clients%3Cbr%3E%5Cn2.+NDA+for+Vendors%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+template+you+would+like+to+use%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22NDA+for+Clients%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+the+NDA+for+Clients+template.+Can+you+confirm+the+recipient%27s+name+and+email+address%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJohn+Doe%2C+johndoe%40example.com%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details%3A%3Cbr%3E%5Cn%3Cstrong%3ETemplate%3A%3C%2Fstrong%3E+NDA+for+Clients%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ERecipient%27s+Name%3A+%3C%2Fstrong%3EJohn+Doe%3Cbr%3E%5Cn%3Cstrong%3ERecipient%27s+Email%3A%3C%2Fstrong%3E+johndoe%40example.com%3Cbr%3E%5CnDo+you+want+to+send+the+NDA+now%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Send+NDA%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%21+I%27ve+sent+the+NDA+to+johndoe%40example.com.%26nbsp%3B%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22NDA%22%2C%22connectorName%22%3A%22docusign%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Onboarding
- Legal
systems:
- docusign
---

## Introduction

The **Send an Envelope Using a Template** plugin allows users to seamlessly send an envelope using a pre defined template through the Moveworks AI Assistant. Users can select a relevant template, specify details like recipient’s name and email address and send them the envelope. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

## Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+send+an+NDA+for+signature+via+Docusign%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+with+that.+Here+are+some+relevant+templates+available%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+NDA+for+Clients%3Cbr%3E%5Cn2.+NDA+for+Vendors%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+template+you+would+like+to+use%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22NDA+for+Clients%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+the+NDA+for+Clients+template.+Can+you+confirm+the+recipient%27s+name+and+email+address%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJohn+Doe%2C+johndoe%40example.com%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details%3A%3Cbr%3E%5Cn%3Cstrong%3ETemplate%3A%3C%2Fstrong%3E+NDA+for+Clients%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ERecipient%27s+Name%3A+%3C%2Fstrong%3EJohn+Doe%3Cbr%3E%5Cn%3Cstrong%3ERecipient%27s+Email%3A%3C%2Fstrong%3E+johndoe%40example.com%3Cbr%3E%5CnDo+you+want+to+send+the+NDA+now%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Send+NDA%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Send+NDA%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%21+I%27ve+sent+the+NDA+to+johndoe%40example.com.%26nbsp%3B%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22NDA%22%2C%22connectorName%22%3A%22docusign%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Docusign first, prior to installing this plugin. Please follow the [Docusign Connector Guide](https://developer.moveworks.com/marketplace/package/?id=docusign#how-to-implement) to create the connector. Note that for **Send an Envelope Using a Template**, you will also need to add the following permissions:

- DS Sender: More details [here](https://support.docusign.com/s/document-item?language=en_US&_gl=1*1jinp81*_gcl_au*MzM2MjUzNjg0LjE3NDc5ODkzNzguODAxMjkzMTMuMTc0ODI1MTA5Ni4xNzQ4MjUxMTc0&bundleId=pik1583277475390&topicId=pof1583277362435.html&_LANG=enus).

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

Update the **organizationID** with your organization ID ****in the Docusign_Get_User_By_Email_ID action. More details [here](https://support.docusign.com/s/document-item?language=en_US&bundleId=rrf1583359212854&topicId=tif1583359135245.html&_LANG=enus). 

# Appendix

### **API #1: Get User Profile**

The [getUserDSProfile](https://developers.docusign.com/docs/admin-api/reference/usermanagement/multiproductusermanagement/getuserdsprofile/#:~:text=Code:%20200%20Description:%20OK) API allows you to get information about users. We use this to get the Docusign ID of the user through their Email ID. 

```bash
curl --request GET \
  --url 'https://<<DOMAIN NAME (like api-d.docusign.net)>>/Management/v2.1/organizations/{organizationId}/users/{userId}/dsprofile' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'

```

### **API #2: List Templates**

The [list templates](https://developers.docusign.com/docs/esign-rest-api/reference/templates/templates/list/) allows you to get the list of all the templates (filtered down by user_id).

```bash
curl --request GET \
  --url 'https://<<DOMAIN NAME (like demo.docusign.net)>>/restapi/v2.1/accounts/{accountId}/templates' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

### **API #3: List Recipients**

The [list recipients](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/enveloperecipients/list/) allows you to get the list of all the role names in a template.

```bash
curl --request GET \
  --url 'https://<<DOMAIN NAME (like demo.docusign.net)>>/restapi/v2/accounts/{accountId}/envelopes/{templateId}/recipients?include_tabs=false&include_extended=true' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

### **API #4: Create Envelope**

The [create envelope API](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/create/) allows you to create and send an envelope from a template.

```bash
curl --request POST \
  --url 'https://<<DOMAIN NAME (like demo.docusign.net)>>/restapi/v2.1/accounts/{accountId}/envelopes' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

### Note

Envelopes are sent using the Docusign administrator’s email address (an organization management administrator). Usually this can be an email address associated with the organization (example abccorp@email.com).