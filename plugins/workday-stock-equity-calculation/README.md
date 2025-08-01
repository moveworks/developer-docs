---
description: A plugin that allows an employee with stock options or RSU grants to
  forecast their projected compensation based on the value of the company's stock.
fidelity: GUIDE
name: Calculate Issued Equity / Stock
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+my+stock+options+worth+if+%24ACME+goes+to+%24150%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%E2%9C%85+Identify+request+for+stock+valuation%3Cbr%3E%E2%9C%85+Fetching+current+company+valuation+and+outstanding+stock%3Cbr%3E%F0%9F%94%81+Calculating+stock+value%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Based+on+the+latest+company+valuation%2C+here+are+the+details+for+the+value+of+your+issued+stock%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EStock+Valuation+Summary%3C%2Fb%3E%3Cbr%3E%3Cp%3EFind+the+value+of+your+current+holdings%3A%3Cbr%3E%3Cb%3ECompany+Valuation%3A%3C%2Fb%3E+%24500+Billion%3Cbr%3E%3Cb%3EOutstanding+Shares%3A%3C%2Fb%3E+5+Million%3Cbr%3E%3Cb%3EYour+Shares%3A%3C%2Fb%3E+10%2C000%3Cbr%3E%3Cb%3EValue+per+Share%3A%3C%2Fb%3E+%24150%3Cbr%3E%3Cb%3EYour+Total+Stock+Value%3A%3C%2Fb%3E+%241%2C500%2C000%3C%2Fp%3E%22%7D%5D%7D%5D%7D
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

**Note**: To enable the **View My Stock Grant Summary** functionality, ensure your Workday integration system user has the necessary domain permissions.

Specifically, the following domain permissions must be granted with both **View** and **Get** access:

- **Stock Grants** – to retrieve employee stock grant records and details
- **Worker Data: Self-Service** – to ensure employees can securely retrieve their own stock-related information

**Tenant Configuration:**

All Workday API endpoints in this plugin use `<TENANT>` as a placeholder. After installation, replace `<TENANT>` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [`https://impl.workday.com/**your_tenant**/...`](https://impl.workday.com/**your_tenant**/...)

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Customization Process**

We are using a calculated field named **`cf_sharesGrantedGrantPrice`**, which is derived by multiplying the values of `sharesGranted` and `grantPrice`. If you already have a similar field, you can update your integration logic to use your existing one.

Below are the steps you can follow to create this calculated field in Workday.

## **Steps to Create ‘cf_sharesGrantedGrantPrice’ Calculated Field in Workday**

1. **Open Create Calculated Field**
    - In the Workday search bar, type **"Create Calculated Field"** and select the task.
2. **Fill Out Initial Details**
    - In the **Field Name**, enter: `sharesGrantedGrantPrice`
    - For **Business Object**, select: `Stock Grant`
    - For **Function**, choose: `Arithmetic Calculation`
    - Click **OK**
3. **Build the Arithmetic Formula**
    - On the next screen, in the **Expression Editor**:
        - Select the **`sharesGranted`** field.
        - Click the  operator for multiplication.
        - Select the **`grantPrice`** field.
    - The formula should look like:
        
        `sharesGranted * grantPrice`
        
4. **Save the Field**
    - Click **Test** to validate your formula.
    - If it passes, click **OK** to save the calculated field.

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