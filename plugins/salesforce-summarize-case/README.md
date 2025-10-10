---
availability: IDEA
description: A plugin that allows users to quickly get a concise summary of a Salesforce
  Case.
domain:
- Ticketing
- Sales
- Support
fidelity: GUIDE
name: Summarize a Case
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22help+me+summarize+a+case%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+how+would+you+like+to+find+the+case%3F+I+can+look+up+a+case+by+its+number%2C+description+or+if+it%27s+assigned+to+you%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EBy+description%2C+printer+not+working%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+cases+matching+%27printer+not+working%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Esalesforce%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+cases+matching+that+description.+Please+select+the+one+you+want+a+summary+for+by+replying+with+the+number.%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E0018456+-+Main+office+printer+not+working%3C%2Fli%3E%3Cli%3E0018452+-+User+cannot+print+from+laptop%3C%2Fli%3E%3Cli%3E0018449+-+Error+message+on+3rd+floor+printer%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+case+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E0018456%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Esalesforce%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+summary+for+Case+%3Cb%3E0018456%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+John+Smith+%28Apex+Solutions%29%3C%2Fli%3E%3Cli%3E%3Cb%3ESubject%3A%3C%2Fb%3E+Main+office+printer+not+working%3C%2Fli%3E%3Cli%3E%3Cb%3EIssue+Description%3A%3C%2Fb%3E+The+main+office+printer+%28HP+LaserJet+4000%29+is+unresponsive.+Multiple+users+have+reported+being+unable+to+print+since+this+morning.+The+device+is+powered+on+but+shows+an+error+code.%3C%2Fli%3E%3Cli%3E%3Cb%3EThe+Ask%3A%3C%2Fb%3E+The+customer+needs+the+main+office+printer+fixed+as+it+is+impacting+the+entire+department%27s+productivity.%3C%2Fli%3E%3Cli%3E%3Cb%3EActions+Taken%3A%3C%2Fb%3E+Initial+troubleshooting+performed+via+remote+restart.+On-site+tech+%28Jane+Doe%29+has+been+dispatched+to+investigate+the+error+code.%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+In+Progress%3C%2Fli%3E%3Cli%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+Awaiting+diagnosis+from+the+on-site+technician.+Expected+update+within+the+next+hour.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%220018456+-+Main+office+printer+not+working%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Sales
- Support
- Ticketing
systems:
- salesforce

---
## **Introduction**

The “Summarize a Case” plugin helps users quickly view detailed information about specific cases—directly through the Moveworks AI Assistant. This plugin allows users to instantly retrieve case details by searching using a case number, subject name, cases assigned to them, or cases assigned to the groups they belong to. It streamlines case management, supports faster resolution, and enhances overall efficiency without the need for manual searches.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22help+me+summarize+a+case%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+how+would+you+like+to+find+the+case%3F+I+can+look+up+a+case+by+its+number%2C+description+or+if+it%27s+assigned+to+you%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EBy+description%2C+printer+not+working%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+cases+matching+%27printer+not+working%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Esalesforce%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+cases+matching+that+description.+Please+select+the+one+you+want+a+summary+for+by+replying+with+the+number.%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E0018456+-+Main+office+printer+not+working%3C%2Fli%3E%3Cli%3E0018452+-+User+cannot+print+from+laptop%3C%2Fli%3E%3Cli%3E0018449+-+Error+message+on+3rd+floor+printer%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+case+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E0018456%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Esalesforce%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+summary+for+Case+%3Cb%3E0018456%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+John+Smith+%28Apex+Solutions%29%3C%2Fli%3E%3Cli%3E%3Cb%3ESubject%3A%3C%2Fb%3E+Main+office+printer+not+working%3C%2Fli%3E%3Cli%3E%3Cb%3EIssue+Description%3A%3C%2Fb%3E+The+main+office+printer+%28HP+LaserJet+4000%29+is+unresponsive.+Multiple+users+have+reported+being+unable+to+print+since+this+morning.+The+device+is+powered+on+but+shows+an+error+code.%3C%2Fli%3E%3Cli%3E%3Cb%3EThe+Ask%3A%3C%2Fb%3E+The+customer+needs+the+main+office+printer+fixed+as+it+is+impacting+the+entire+department%27s+productivity.%3C%2Fli%3E%3Cli%3E%3Cb%3EActions+Taken%3A%3C%2Fb%3E+Initial+troubleshooting+performed+via+remote+restart.+On-site+tech+%28Jane+Doe%29+has+been+dispatched+to+investigate+the+error+code.%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+In+Progress%3C%2Fli%3E%3Cli%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+Awaiting+diagnosis+from+the+on-site+technician.+Expected+update+within+the+next+hour.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%220018456+-+Main+office+printer+not+working%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the  [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce#how-to-implement) guide to set up the connector.

**Object Access**:

- `Read` access to the **Case** object

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### API #1 : Get Cases by Case Number

```bash
curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Description%2C+Owner.Email+FROM+Case+WHERE+CaseNumber%3D%27{{caseNumber}}%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
```

**Query Parameters**

- `{{caseNumber}}` - Search for a specific case by case number

### API #2: Get Cases by Subject Name

```bash
curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Description%2C+Owner.Name+FROM+Case+WHERE+Subject+LIKE+%27%25{{subject}}%25%27+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
```

**Query Parameters**

- `{{subjectName}}` - Search for a case by subject name

### API #3: Get Cases by Owner Email

```bash
curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Owner.Email+FROM+Case+WHERE+Owner.Email%3D%27{{ownerEmail}}%27+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
```

**Query Parameters**

- `{{ownerEmail}}`- Search for cases assigned to a user by owner email

### API #4: Get Case Details

```bash
curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Description%2C+Status%2C+Priority%2C+Account.Name%2C+Contact.Name%2C+CreatedDate%2C+ClosedDate%2C+LastModifiedDate%2C+Owner.Name%2C+CreatedBy.Name%2C+LastModifiedBy.Name%2C+Origin%2C+Type%2C+Reason%2C+IsEscalated%2C(SELECT+CommentBody%2C+CreatedDate%2C+IsPublished+FROM+CaseComments+ORDER+BY+CreatedDate+DESC+LIMIT+20)%2C(SELECT+Subject%2C+ActivityDate%2C+Status%2C+Owner.Name+FROM+Tasks+ORDER+BY+ActivityDate+DESC+LIMIT+20)%2C(SELECT+Subject%2C+ActivityDate%2C+Description%2C+Owner.Name+FROM+Events+ORDER+BY+ActivityDate+DESC+LIMIT+20)+FROM+Case+WHERE+Id%3D%27{{case_data}}%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
```

**Query Parameters**

- `{{case_data}}` - Search by case ID to retrieve all case details
