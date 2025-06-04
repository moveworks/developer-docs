---
description: A plugin which reports an error when booking or issuing a quote.
fidelity: GUIDE
name: Report a Booking Issue
difficulty_level: BEGINNER
time_in_minutes: 10
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+having+trouble+booking+a+quote.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+here+to+help+you+with+booking+a+quote.+Can+you+provide+me+with+more+details+about+the+issue%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+not+letting+me+finalize+the+booking+in+Salesforce.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Eretrieving+information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ESalesforce+Quote%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EIt+seems+like+your+quote+cannot+be+finalized+until+it+has+been+approved+by+your+manager.+The+current+status+is%3A+%3Cb%3EQuote+approval+pending%3C%2Fb%3E.+%3Cbr%3E%3Cbr%3EYou+should+message+your+manager%2C+Drew+Downs%2C+to+approve+it+first.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce

---

# Report a Booking Issue

## **Introduction:-**

**The “Report a Booking Issue Plugin”** helps support and operations teams quickly identify and log issues related to booking records within Salesforce. By offering a simple interface to capture and report discrepancies or failures, it streamlines the issue resolution process and reduces the need for manual case logging.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+having+trouble+booking+a+quote.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+here+to+help+you+with+booking+a+quote.+Can+you+provide+me+with+more+details+about+the+issue%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+not+letting+me+finalize+the+booking+in+Salesforce.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Eretrieving+information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ESalesforce+Quote%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EIt+seems+like+your+quote+cannot+be+finalized+until+it+has+been+approved+by+your+manager.+The+current+status+is%3A+%3Cb%3EQuote+approval+pending%3C%2Fb%3E.+%3Cbr%3E%3Cbr%3EYou+should+message+your+manager%2C+Drew+Downs%2C+to+approve+it+first.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the  [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API #1 : Get Quote by Email**

```bash
curl --location 'https://<API_Server_domain>/services/data/v63.0/query/?q=SELECT+Id%2C+Name%2C+Status%2C+Owner.Email+FROM+Quote+WHERE+Owner.Email%3D<email>+AND+Name%3D<quote_name>' \
--header 'Authorization: Bearer <Your Access Token>'
```

**Query Parameters:**

- `email` (string) – The Salesforce user’s email address used to filter quotes by owner.
- `quote_name` (string) – The specific name of the Quote you want to retrieve. This filters the results to only return the quote that exactly matches the provided name.
