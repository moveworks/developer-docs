---
accreditations:
- DEFAULT
description: A plugin to notify employees when they have expense reports to approve
  or reject from their copilot.
fidelity: VALIDATED
name: Approve / Reject Expense Report
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A3519%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Afalse%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+New+approval+queue+detected+while+polling+Concur%27s+Workflow+v4+API%3Cbr%3E2.+Middleware+initiated+trigger+%28polling+every+60+seconds%29%3Cbr%3E%3Cbr%3E%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApproval+ID%3C%2Fi%3E%3A+required+for+API+actions+to+work%3Cbr%3E%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprove+report%3C%2Fi%3E%3A+Approve+and+move+report+to+next+approver+in+report+chain%3Cbr%3E2.+%3Ci%3EReject+report%3C%2Fi%3E%3A+Reject+requisition+and+move+record+back+to+previous+approver+or+owner%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22Bot%22%2C%22text%22%3A%22%3Cp%3EHi+Jamie%2C%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%92%B3+Concur+Expense+Report+Pending+Your+Approval%3C%2Fb%3E%3A%3Cbr%3E-+Name%3A+Dinner+with+ACME+client%3Cbr%3E-+%3Ci%3EDate%3C%2Fi%3E%3A+Aug+10%2C+2024%3Cbr%3E-+%3Ci%3ECreated+by%3C%2Fi%3E%3A+Sam+Stinson%3Cbr%3E-+%3Ci%3EAmount%3C%2Fi%3E%3A+USD+341.07%3Cbr%3E-+%3Ci%3ELast+Comment%3C%2Fi%3E%3A+Uploading+receipt+of+dinner%3Cbr%3E-+%3Ci%3EApproval+Status%3C%2Fi%3E%3A+Pending+Approval%3Cbr%3E-+%3Ci%3EReport+ID%3C%2Fi%3E%3A+14170%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Approve%22%7D%2C%7B%22text%22%3A%22Send+back%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Approvals
- Finance
systems:
- sap-concur
time_in_minutes: 60
difficulty_level: ADVANCED
---

# Research
We know that you can use the Concur [Expense Reports v4](https://developer.concur.com/api-reference/expense/expense-report/v4.reports.html) and [Workflows v4 API](https://developer.concur.com/api-reference/expense/expense-report/v4.workflows.html) to create expense entries for a user. You can learn more about the API [here](https://developer.concur.com/api-reference/expense/expense-report/v4.reports.html).