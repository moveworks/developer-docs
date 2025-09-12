---
availability: INSTALLABLE
description: A plugin that allows employees to see what current job postings are available.
difficulty_level: INTERMEDIATE
domain:
- HR - Other
- HR - Recruiting & Talent
fidelity: TEMPLATE
installation_asset_uuid: fb03c05b-914e-4ee6-b94c-4cc4bb25a25b
name: View Open Job Postings
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+see+the+current+job+postings%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+here%27s+the+latest+list+from+Workday%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESoftware+Engineer%3C%2Fb%3E%3Cbr%3EJoin+our+tech+team+and+work+on+innovative+projects.+Ideal+for+those+passionate+about+coding+and+technology.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EMarketing+Specialist%3C%2Fb%3E%3Cbr%3EHelp+us+enhance+our+brand+presence+and+engage+our+audience.+Perfect+for+creative+and+strategic+thinkers.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProduct+Manager%3C%2Fb%3E%3Cbr%3ELead+the+development+of+our+next+product+line.+Suitable+for+visionary+leaders+with+a+knack+for+product+development.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EHR+Coordinator%3C%2Fb%3E%3Cbr%3ESupport+our+team+in+creating+a+great+workplace.+Great+for+individuals+passionate+about+people+and+culture.%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- workday
time_in_minutes: 20
---

# **Introduction:**

The **View Open Job Postings** plugin provides real-time access to Workday’s active job postings through the Moveworks AI Assistant. Recruiters, hiring managers, and employees can instantly search open positions by department, location, or job family—all within chat.

This guide covers the step-by-step setup to enable job lookup functionality.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat]( https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+see+the+current+job+postings%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+here%27s+the+latest+list+from+Workday%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESoftware+Engineer%3C%2Fb%3E%3Cbr%3EJoin+our+tech+team+and+work+on+innovative+projects.+Ideal+for+those+passionate+about+coding+and+technology.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EMarketing+Specialist%3C%2Fb%3E%3Cbr%3EHelp+us+enhance+our+brand+presence+and+engage+our+audience.+Perfect+for+creative+and+strategic+thinkers.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProduct+Manager%3C%2Fb%3E%3Cbr%3ELead+the+development+of+our+next+product+line.+Suitable+for+visionary+leaders+with+a+knack+for+product+development.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EHR+Coordinator%3C%2Fb%3E%3Cbr%3ESupport+our+team+in+creating+a+great+workplace.+Great+for+individuals+passionate+about+people+and+culture.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

## **Required Permissions:**

- Get access **to reference data: Recruiting**
- View access **to worker data: Positions**
- View access **to reference data: Job Requisitions**

> Note: Requires "Staffing" domain permissions in Workday.
> 

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## **API #1: Fetch open jobs**

The **Get Job openings** API enables users to retrieve comprehensive details about open job postings from Workday. By leveraging Workday's reporting and APIs, this functionality ensures efficient and precise data retrieval, even in environments with a large number of job openings.

```bash
curl --request GET
--location 'https://<DOMAIN>.myworkday.com/api/recruiting/v3/<INSTANCE>/jobPostings' \
--header 'Content-Type: application/json'
```