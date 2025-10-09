---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: "On a scheduled basis, the agent checks the service catalog and deployment\
  \ history to detect services with no deploys for N days. It posts a DM via the Assistant\
  \ to the owning team with an \u201CApprove to deploy\u201D action; on approval,\
  \ it creates a task in the CI/CD system and triggers the deployment pipeline automatically.\
  \ This keeps services fresh and compliant without relying on manual audits."
domain:
- Engineering
fidelity: IDEA
name: Nudge Stale Services to Deploy
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EService+detected+with+no+deploys+for+30+days%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey+team%2C+it+looks+like+the+%3Cstrong%3Euser-profile-service%3C%2Fstrong%3E+hasn%27t+been+deployed+in+35+days.+We+recommend+regular+deployments+to+keep+services+fresh+and+compliant.+Would+you+like+to+approve+a+new+deployment%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22New+deploy%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Deploy+later%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22More+into+%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Creating+deployment+task+in+CircleCI.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Triggering+deployment+pipeline+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Euser-profile-service%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22client_payload%5C%22%3A+%7B%5Cn++++%5C%22service_name%5C%22%3A+%5C%22user-profile-service%5C%22%2C%5Cn++++%5C%22deploy_action%5C%22%3A+%5C%22approved_by_agent_nudge%5C%22%5Cn++%7D%2C%5Cn++%5C%22event_type%5C%22%3A+%5C%22deploy_request%5C%22%5Cn%7D%22%2C%22connectorName%22%3A%22github%22%2C%22title%22%3A%22POST+%2Frepos%2Forg%2Fuser-profile-service%2Fdispatches%22%7D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22branch%5C%22%3A+%5C%22main%5C%22%2C%5Cn++%5C%22parameters%5C%22%3A+%7B%5Cn++++%5C%22deploy%5C%22%3A+true%2C%5Cn++++%5C%22target_environment%5C%22%3A+%5C%22production%5C%22%5Cn++%7D%5Cn%7D%22%2C%22connectorName%22%3A%22circleci%22%2C%22title%22%3A%22POST+%2Fproject%2Fgithub%2Forg%2Fuser-profile-service%2Fpipeline%22%7D%7D%2C%7B%22richText%22%3A%22Great%21+I%27m+initiating+a+new+deployment+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Euser-profile-service%3C%2Fb%3E.+I%27ll+let+you+know+once+it%27s+complete.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Euser-profile-service%3C%2Fb%3E+deployment+has+been+successfully+triggered.%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22circleci%22%2C%22citationTitle%22%3A%22Deployment+%2312345%22%7D%2C%7B%22connectorName%22%3A%22github%22%2C%22citationTitle%22%3A%22user-profile-service%22%7D%5D%7D%5D%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22Scheduled+Job%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%2C%22imageUrl%22%3A%22https%3A%2F%2Fcdn-icons-png.flaticon.com%2F512%2F3652%2F3652191.png%22%7D%7D
solution_tags:
- Engineering
systems:
- github
- ''

---
