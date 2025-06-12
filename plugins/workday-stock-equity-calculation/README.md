---
description: A plugin that retrieves your stock grant details from Workday, including the number of shares granted, current value per share, and the total stock value.
fidelity: GUIDE
name: View My Stock Grant Summary
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+show+me+my+stock+grant+summary%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+your+stock+grant+information+in+Workday...%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+your+stock+grant+information+in+Workday...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ERetrieving+current+market+price+for+your+company%27s+stock...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ECalculating+total+value...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+here+is+your+stock+grant+summary+from+%3Cstrong%3EWorkday%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EShares+Granted%3A%3C%2Fstrong%3E+5%2C000%3C%2Fli%3E%3Cli%3E%3Cstrong%3ECurrent+Value+Per+Share%3A%3C%2Fstrong%3E+%24125.00%3C%2Fli%3E%3Cli%3E%3Cstrong%3ETotal+Stock+Value%3A%3C%2Fstrong%3E+%24625%2C000.00%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22My+Stock+Grants%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance
- Finance - Payroll
- HR
systems:
- workday

---
## **Introduction**

The “View My Stock Grant Summary” plugin enables employees to quickly access their stock grant details directly through the Moveworks AI Assistant. By pulling data from Workday, this plugin provides a seamless way to view the number of shares granted, the current value per share, and the total stock value.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+show+me+my+stock+grant+summary%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+your+stock+grant+information+in+Workday...%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+your+stock+grant+information+in+Workday...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ERetrieving+current+market+price+for+your+company%27s+stock...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ECalculating+total+value...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+here+is+your+stock+grant+summary+from+%3Cstrong%3EWorkday%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EShares+Granted%3A%3C%2Fstrong%3E+5%2C000%3C%2Fli%3E%3Cli%3E%3Cstrong%3ECurrent+Value+Per+Share%3A%3C%2Fstrong%3E+%24125.00%3C%2Fli%3E%3Cli%3E%3Cstrong%3ETotal+Stock+Value%3A%3C%2Fstrong%3E+%24625%2C000.00%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22My+Stock+Grants%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) guide to set up the connector.

**Tenant Configuration:**

All Workday API endpoints in this plugin use `<TENANT>` as a placeholder. After installation, replace `<TENANT>` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [`https://impl.workday.com/**your_tenant**/...`](https://impl.workday.com/**your_tenant**/...)

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Get Worker ID by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'\
--data-raw '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome as email ,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email}}'\''"
}'

```

**Query Parameters:**

- `email` (string) – Email address of the worker used to look up their Workday ID

### **API #2: Retrieve Stock Grant Summary of Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'\
--data '{
  "query": "SELECT cf_VestedStockValueOfGrant, cf_VestedStockValueInShares,cf_sharesGrantedGrantPrice, sharesVested, sharesGranted, grantDate, vestFromDate, grantID, grantPrice, stockGrant FROM allStockGrants WHERE sharesVested > 0 AND employee = '\''{{worker_id}}'\'' ORDER BY vestFromDate DESC LIMIT 1"
}
'
```

**Query Parameters:**

- `worker_id` (string) – Get stock grant details for specific worker id
