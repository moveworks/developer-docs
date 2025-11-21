---
availability: IDEA
description: A plugin that allows employees to quickly view a summary of their computer's
  health through the Moveworks AI Assistant. It retrieves hardware, OS, and other
  performance details from JAMF and provides actionable insights to maintain compliance
  and stability.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Look Up My Computer Health Summary
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+look+at+a+health+summary+for+my+apple+computers%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+%3Cb%3EJamf%3C%2Fb%3E+for+devices+assigned+to+your+email+address...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+2+computer+devices+associated+with+your+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+the+following+computer+devices+assigned+to+you%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EiMac+%28Monitor%29%3C%2Fb%3E+-+Serial%3A+C02P480YG1G%3C%2Fli%3E%3Cli%3E%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+-+Serial%3A+C02M00P2G1G%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+device+would+you+like+to+view+the+health+summary+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22laptop%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+health+summary+for+%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+from+%3Cb%3EJamf%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+health+summary+for+your+%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+%28Serial%3A+C02M00P2G1G%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EOverall+Health+Score%3A%3C%2Fb%3E+85%25+%28Good%29%3C%2Fli%3E%3Cli%3E%3Cb%3EOperating+System%3A%3C%2Fb%3E+macOS+Sonoma+14.2.1+%28Up+to+date%29%3C%2Fli%3E%3Cli%3E%3Cb%3EDisk+Usage%3A%3C%2Fb%3E+70%25+used+%28Recommendation%3A+Free+up+space%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMemory%3A%3C%2Fb%3E+16+GB+%28Good%29%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Check-in%3A%3C%2Fb%3E+2024-07-25+10%3A30+AM+PST%3C%2Fli%3E%3Cli%3E%3Cb%3ESecurity+Software%3A%3C%2Fb%3E+Active+and+Up+to+date%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYour+laptop+is+in+good+overall+health%2C+but+it%27s+recommended+to+free+up+some+disk+space+to+maintain+optimal+performance.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%28Laptop%29+Health+Summary%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## **Introduction**

The **“Check My Computer Health Summary”** plugin helps employees and IT teams quickly view the overall health status of their assigned computers. Using the Moveworks AI Assistant, users can instantly access key details such as operating system version, update status, security posture, and device performance indicators. This plugin simplifies device health monitoring, enabling proactive troubleshooting, ensuring devices remain compliant, and improving overall productivity across the organization

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+at+a+health+summary+for+my+apple+devices%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+help+you+with+that.+Can+you+specify+if+you+want+to+look+at%3A%3C%2Fp%3E%3Col%3E%3Cli%3EYour+computer+devices%3C%2Fli%3E%3Cli%3EYour+mobile+devices%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22computers%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+%3Cb%3EJamf%3C%2Fb%3E+for+devices+assigned+to+your+email+address...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+2+computer+devices+associated+with+your+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+the+following+computer+devices+assigned+to+you%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EiMac+%28Monitor%29%3C%2Fb%3E+-+Serial%3A+C02P480YG1G%3C%2Fli%3E%3Cli%3E%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+-+Serial%3A+C02M00P2G1G%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+device+would+you+like+to+view+the+health+summary+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22laptop%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+health+summary+for+%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+from+%3Cb%3EJamf%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+health+summary+for+your+%3Cb%3EMacBook+Pro+%28Laptop%29%3C%2Fb%3E+%28Serial%3A+C02M00P2G1G%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EOverall+Health+Score%3A%3C%2Fb%3E+85%25+%28Good%29%3C%2Fli%3E%3Cli%3E%3Cb%3EOperating+System%3A%3C%2Fb%3E+macOS+Sonoma+14.2.1+%28Up+to+date%29%3C%2Fli%3E%3Cli%3E%3Cb%3EDisk+Usage%3A%3C%2Fb%3E+70%25+used+%28Recommendation%3A+Free+up+space%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMemory%3A%3C%2Fb%3E+16+GB+%28Good%29%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Check-in%3A%3C%2Fb%3E+2024-07-25+10%3A30+AM+PST%3C%2Fli%3E%3Cli%3E%3Cb%3ESecurity+Software%3A%3C%2Fb%3E+Active+and+Up+to+date%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYour+laptop+is+in+good+overall+health%2C+but+it%27s+recommended+to+free+up+some+disk+space+to+maintain+optimal+performance.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%28Laptop%29+Health+Summary%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we **recommend setting up the Jamf connector in Agent Studio beforehand** to simplify the process. Follow the [Jamf Connector Guide](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) for detailed instructions.

**Note:**

To enable access to Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the API user via:

- **Settings → API Roles and Clients → API Roles → {{API_ROLE}}**

### **Required Privileges**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use the **Check My Computer Health Summary** plugin:

- **Read Computers**
- **Read Computer Check-In**

**Note:**

These privileges allow the plugin to retrieve accurate computer information, including device details and last check-in timestamps. Make sure the API user has only these permissions if you want to maintain least-privilege security.

### **Endpoint Guidelines**

- The **Jamf Pro `/mobile-devices` endpoint does not support filtering or partial search**.
- Filtering using `filter=` parameters is supported **only for the `/computers-inventory` endpoint**, which this plugin relies on to fetch computer information.

### **Your Instance Configuration**

All Jamf API endpoints in this plugin use **`{{YOUR_INSTANCE}}`** as a placeholder. After installation, replace **`{{YOUR_INSTANCE}}`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Look at the URL in your browser — the instance name appears before `.jamfcloud.com`.
    - Example: `https://your_instance.jamfcloud.com` → instance name = **`{{YOUR_INSTANCE}}`**

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on installing and activating the plugin in Agent Studio.

### **API #1: Get Device Health Summary by Email**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory?section=GENERAL,USER_AND_LOCATION,HARDWARE,OPERATING_SYSTEM,STORAGE,SECURITY&filter=userAndLocation.email=="{{email}}"' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters:**

- **`email`** : The email address of the computer device owner used to filter and retrieve the specific computer device assigned to the user.
- **`section`** : A comma-separated list of inventory data blocks to include in the response (e.g., GENERAL, USER_AND_LOCATION).