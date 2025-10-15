---
availability: IDEA
description: A plugin that allows employees retrieve Configuration Item (CI) records
  directly from the ServiceNow CMDB.
domain:
- IT
fidelity: GUIDE
name: Look Up CMDB Items
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22look+up+CMDB+items%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Clarifying+user+intent+by+presenting+common+CMDB+categories+to+narrow+down+the+search.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThere+are+many+types+of+CMDB+items.+Which+category+do+you+want+to+view%3F%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EServers%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EApplications%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ENetwork+devices%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EDatabases%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EEnd-user+devices%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ECloud+resources%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22servers%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Further+refining+the+search+based+on+user%27s+selection+of+%27servers%27+by+suggesting+common+server+subtypes+or+related+contexts.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESure+%E2%80%94+do+you+want+to+look+up%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EApplication+servers%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EDatabase+servers%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EWeb+servers%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Eapplication+servers+for+payroll%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it.+Looking+up+CMDB+records+for+%3Ci%3EPayroll+Application+Servers%3C%2Fi%3E+in+ServiceNow...%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Querying+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EServiceNow%3C%2Fb%3E%27s+%3Ccode+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ecmdb_ci_server%3C%2Fcode%3E+table+for+servers+related+to+%27Payroll%27+applications.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+3+matching+servers%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EPayroll-AppServer-01%3C%2Fb%3E+%28Operational+%E2%80%93+Production%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EPayroll-AppServer-02%3C%2Fb%3E+%28Maintenance+Mode+%E2%80%93+Staging%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EPayroll-AppServer-DR01%3C%2Fb%3E+%28Operational+%E2%80%93+Disaster+Recovery%29%3Cbr+%2F%3EWhich+one+do+you+want+details+for%3F%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-01%22%7D%2C%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-02%22%7D%2C%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-DR01%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Payroll-AppServer-01.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+detailed+CMDB+record+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPayroll-AppServer-01%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EServiceNow%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+CMDB+details+for+%3Cb%3EPayroll-AppServer-01%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EClass%3A%3C%2Fb%3E+Application+Server+%28%3Ccode%3Ecmdb_ci_server%3C%2Fcode%3E%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Operational%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EEnvironment%3A%3C%2Fb%3E+Production%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOwner%3A%3C%2Fb%3E+IT+Infrastructure+%28InfraOps%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3ELocation%3A%3C%2Fb%3E+SFO+Data+Center%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EIP+Address%3A%3C%2Fb%3E+10.14.92.10%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOperating+System%3A%3C%2Fb%3E+Red+Hat+Enterprise+Linux+9%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EDepends+On%3A%3C%2Fb%3E+Payroll-DBServer-01%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3ESupports+Service%3A%3C%2Fb%3E+Payroll+Web+Portal%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3ELast+Updated%3A%3C%2Fb%3E+March+5%2C+2025%2C+10%3A12+AM%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-01%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---

## **Introduction**

The **“Look Up CMDB Items”** plugin allows employees to quickly retrieve Configuration Item (CI) details directly from the ServiceNow CMDB using the Moveworks AI Assistant. Whether users are searching for servers, applications, databases, network, devices or computer, the plugin provides instant access to ownership, status, environment, and dependency information — all through a simple conversational request.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22look+up+CMDB+items%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Clarifying+user+intent+by+presenting+common+CMDB+categories+to+narrow+down+the+search.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThere+are+many+types+of+CMDB+items.+Which+category+do+you+want+to+view%3F%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EServers%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EApplications%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ENetwork+devices%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EDatabases%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EEnd-user+devices%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ECloud+resources%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22servers%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Further+refining+the+search+based+on+user%27s+selection+of+%27servers%27+by+suggesting+common+server+subtypes+or+related+contexts.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESure+%E2%80%94+do+you+want+to+look+up%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3EApplication+servers%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EDatabase+servers%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EWeb+servers%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Eapplication+servers+for+payroll%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it.+Looking+up+CMDB+records+for+%3Ci%3EPayroll+Application+Servers%3C%2Fi%3E+in+ServiceNow...%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Querying+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EServiceNow%3C%2Fb%3E%27s+%3Ccode+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ecmdb_ci_server%3C%2Fcode%3E+table+for+servers+related+to+%27Payroll%27+applications.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+3+matching+servers%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EPayroll-AppServer-01%3C%2Fb%3E+%28Operational+%E2%80%93+Production%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EPayroll-AppServer-02%3C%2Fb%3E+%28Maintenance+Mode+%E2%80%93+Staging%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EPayroll-AppServer-DR01%3C%2Fb%3E+%28Operational+%E2%80%93+Disaster+Recovery%29%3Cbr+%2F%3EWhich+one+do+you+want+details+for%3F%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-01%22%7D%2C%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-02%22%7D%2C%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-DR01%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Payroll-AppServer-01.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+detailed+CMDB+record+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPayroll-AppServer-01%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EServiceNow%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+CMDB+details+for+%3Cb%3EPayroll-AppServer-01%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EClass%3A%3C%2Fb%3E+Application+Server+%28%3Ccode%3Ecmdb_ci_server%3C%2Fcode%3E%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Operational%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EEnvironment%3A%3C%2Fb%3E+Production%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOwner%3A%3C%2Fb%3E+IT+Infrastructure+%28InfraOps%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3ELocation%3A%3C%2Fb%3E+SFO+Data+Center%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EIP+Address%3A%3C%2Fb%3E+10.14.92.10%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOperating+System%3A%3C%2Fb%3E+Red+Hat+Enterprise+Linux+9%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EDepends+On%3A%3C%2Fb%3E+Payroll-DBServer-01%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3ESupports+Service%3A%3C%2Fb%3E+Payroll+Web+Portal%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3ELast+Updated%3A%3C%2Fb%3E+March+5%2C+2025%2C+10%3A12+AM%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Payroll-AppServer-01%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Look Up CMDB Items functionality, ensure the ServiceNow integration user has the appropriate table-level permissions.

Specifically, confirm the following permissions are granted:

- **Table Access**: `Read` access to the `cmdb_ci_server`, `cmdb_ci_service`, `cmdb_ci_appl`, `cmdb_ci_database`, `cmdb_ci_network`, and `cmdb_ci_computer` tables.
- **End Users:** Must have one of the roles 
   - `cmdb_read` – Read-only access to CMDB tables.
   - `itil` – ITIL role with broader access, including read access to most CMDB tables.

**Note:** The **ITIL** role provides broad read access to most CMDB tables, but **not all tables are guaranteed**. Some CI tables may require explicit roles like **`cmdb_read`** for full access

**Tenant Configuration:**

All ServiceNow API endpoints in this plugin use `YOUR_INSTANCE` as a placeholder. After installation, replace `YOUR_INSTANCE` in the API calls with your actual ServiceNow instance name.

To find your instance name:

- Log into ServiceNow.
- Check the URL in your browser — the instance name appears before `.service-now.com`, e.g.:
    
    `https://**YOUR_INSTANCE**.service-now.com/...`
    
    Make sure to update this across all actions that reference the ServiceNow API.
    

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get User Roles by Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user_has_role?sysparm_query=user.email={{email}}^role.name=cmdb_read&sysparm_fields=role.name' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
```

**Query Parameters:**

- `{{email}}` (string)– Filters user by email address.

### **API #2:** Look Up CMDB Items

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/cmdb_ci?sysparm_query=sys_class_name={{cmdb_table}}^nameLIKE{{search_term}}&sysparm_fields=name,sys_class_name,operational_status,install_status,owned_by,environment,location,ip_address,os,depends_on,supports_service,sys_updated_on' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
```

**Query Parameters:**

- `{{cmdb_table}}` (string)– Filters results by the specified CMDB class/table (e.g., `cmdb_ci_server`).
- `{{search_term}}` (string)– Searches for configuration items whose name contains the given keyword.