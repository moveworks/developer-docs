---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: On tag creation, the agent compiles notes from merged PRs, classifies
  changes, and drafts the release doc for approval.
domain:
- Engineering
fidelity: IDEA
name: Draft Release Notes From Commits
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EA+new+tag%2C+%3Cstrong%3Ev1.2.0%3C%2Fstrong%3E%2C+was+created+in+the+%3Cstrong%3Emy-awesome-app%3C%2Fstrong%3E+repository%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+merged+Pull+Requests+from+GitHub+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Emy-awesome-app%3C%2Fb%3E+between+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ev1.1.0%3C%2Fb%3E+and+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ev1.2.0%3C%2Fb%3E.%22%2C%22content%22%3A%5B%7B%22apiBlock%22%3A%7B%22title%22%3A%22Compiling+notes+from+merged+PRs.%22%2C%22connectorName%22%3A%22github%22%2C%22code%22%3A%22%2F%2F+API+call+code%22%2C%22language%22%3A%22javascript%22%2C%22caption%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%7D%5D%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Classifying+changes+into+Features%2C+Bug+Fixes%2C+and+Improvements+based+on+PR+titles+and+labels.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Generating+release+notes+content.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Creating+draft+document+in+ReadMe.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+release+notes+for+%3Cstrong%3Ev1.2.0%3C%2Fstrong%3E+have+been+drafted+in+ReadMe.+Please+review+and+approve.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22readme%22%2C%22citationTitle%22%3A%22v1.2.0+Release+Notes+%28Draft%29%22%7D%2C%7B%22connectorName%22%3A%22github%22%2C%22citationTitle%22%3A%22my-awesome-app%22%7D%5D%7D%5D%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22Github%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%2C%22imageUrl%22%3A%22https%3A%2F%2Fgithub.githubassets.com%2Fassets%2FGitHub-Mark-ea2971cee799.png%22%7D%7D
solution_tags:
- Engineering
systems:
- github
- ''

---
