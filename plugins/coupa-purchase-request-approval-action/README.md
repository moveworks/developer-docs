---
agent_capabilities:
- Polling Required
- Ambient Agent
availability: VALIDATED
description: A plugin that allows for the swift approval or rejection of purchase
  requests, optimizing procurement efficiency.
name: Approve or Reject Purchase Requisitions
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+New+approval+queue+detected+while+polling+Coupa%27s+approval+APIs%3Cbr%3E2.+Middleware+initiated+trigger%3Cbr%3E%3Cbr%3E%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApproval+ID%3C%2Fi%3E%3A+reqired+for+API+actions+to+work%3Cbr%3E%3Cbr%3E%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprove+requisition%3C%2Fi%3E%3A+Approve+and+move+requisition+to+next+approver+in+requisition+chain%3Cbr%3E2.+%3Ci%3EReject+requisition%3C%2Fi%3E%3A+Reject+requisition+and+move+record+back+to+previous+approver+or+owner%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHi+Jamie%2C%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%92%B3+Purchase+Requsition+Pending+Your+Approval%3C%2Fb%3E%3A%3Cbr%3E-+Name%3A+MacBook+Pro+Retina+15%5C%22%3Cbr%3E-+%3Ci%3EQuantity%3C%2Fi%3E%3A+10%3Cbr%3E-+%3Ci%3ECreated+by%3C%2Fi%3E%3A+Sam+Stinson%3Cbr%3E-+%3Ci%3EAmount%3C%2Fi%3E%3A+USD+14060.41%3Cbr%3E-+%3Ci%3ELast+Comment%3C%2Fi%3E%3A+Approved+by+IT+team%2C+waiting+Jamie%27s+approval%3Cbr%3E-+%3Ci%3EApproval+Status%3C%2Fi%3E%3A+Pending+Approval%3Cbr%3E-+%3Ci%3ERequisition+ID%3C%2Fi%3E%3A+14170%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Approve%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Send+Back%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Approvals
- Finance - Other
systems:
- coupa
video: https://www.loom.com/share/6f3d22bc767d489e97dabe66b132d789?sid=a00d2ba3-38d3-4ed7-8151-8e7688a6e7e2
---

# Research

We know that you can use the [Coupa's Approvals API](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/approvals-api-(approvals)) to act on approvals.

[Illustrative mockup](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9192%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+New+approval+queue+detected+while+polling+Coupa%27s+approval+APIs%3Cbr%3E2.+Middleware+initiated+trigger%3Cbr%3E%3Cbr%3E%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApproval+ID%3C%2Fi%3E%3A+reqired+for+API+actions+to+work%3Cbr%3E%3Cbr%3E%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprove+requisition%3C%2Fi%3E%3A+Approve+and+move+requisition+to+next+approver+in+requisition+chain%3Cbr%3E2.+%3Ci%3EReject+requisition%3C%2Fi%3E%3A+Reject+requisition+and+move+record+back+to+previous+approver+or+owner%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22Bot%22%2C%22text%22%3A%22%3Cp%3EHi+Jamie%2C%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%92%B3+Purchase+Requsition+Pending+Your+Approval%3C%2Fb%3E%3A%3Cbr%3E-+Name%3A+MacBook+Pro+Retina+15%5C%22%3Cbr%3E-+%3Ci%3EQuantity%3C%2Fi%3E%3A+10%3Cbr%3E-+%3Ci%3ECreated+by%3C%2Fi%3E%3A+Sam+Stinson%3Cbr%3E-+%3Ci%3EAmount%3C%2Fi%3E%3A+USD+14060.41%3Cbr%3E-+%3Ci%3ELast+Comment%3C%2Fi%3E%3A+Approved+by+IT+team%2C+waiting+Jamie%27s+approval%3Cbr%3E-+%3Ci%3EApproval+Status%3C%2Fi%3E%3A+Pending+Approval%3Cbr%3E-+%3Ci%3ERequisition+ID%3C%2Fi%3E%3A+14170%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Approve%22%7D%2C%7B%22text%22%3A%22Send+Back%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D); experience may vary