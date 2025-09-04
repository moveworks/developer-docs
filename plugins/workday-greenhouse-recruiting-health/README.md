---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
description: A plugin that looks up activate candidates for a department, grouped
  by interview stages.
domain:
- HR - Recruiting & Talent
fidelity: IDEA
name: Look Up Recruiting Pipeline Health
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHow+does+the+engineering+department%27s+hiring+pipeline+look%3F+I+need+to+see+if+we+have+enough+candidates+in+the+final+stages+for+our+open+roles.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOf+course.+I%27ll+pull+the+open+roles+for+the+Engineering+department+from+Workday+and+the+active+candidate+pipeline+from+Greenhouse+to+give+you+a+complete+picture.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Looking+up+open+roles+for+%27Engineering%27+in+Workday%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Fetching+active+candidates+from+Greenhouse%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Running+Structured+Data+Analyzer%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%23+Fetch+data+from+systems%5Cnopen_roles+%3D+workday.get_open_roles%28department%3D%27Engineering%27%29%5Cnactive_candidates+%3D+greenhouse.get_candidates%28department%3D%27Engineering%27%2C+status%3D%27active%27%29%5Cn%5Cn%23+Group+candidates+by+interview+stage%5Cnpipeline_summary+%3D+%7B%7D%5Cnfor+candidate+in+active_candidates%3A%5Cn++++stage+%3D+candidate.interview_stage%5Cn++++pipeline_summary%5Bstage%5D+%3D+pipeline_summary.get%28stage%2C+0%29+%2B+1%5Cn%5Cn%23+The+final+result+is+a+dictionary+with+stages+as+keys+and+counts+as+values%5Cn%23+For+example%3A+%7B%27open_roles%27%3A+15%2C+%27pipeline%27%3A+%7B%27Application+Review%27%3A+87%2C+...%7D%7D%22%2C%22caption%22%3A%22The+Structured+Data+Analyzer+dynamically+generates+Python+code+based+on+the+User%27s+Statement%22%2C%22connectorName%22%3A%22moveworks%22%2C%22title%22%3A%22Structured+Data+Analyzer%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou+currently+have+%3Cb%3E15+open+roles%3C%2Fb%3E+in+the+%3Cb%3EEngineering%3C%2Fb%3E+department.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+active+candidate+pipeline+across+all+roles%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EApplication+Review%3A%3C%2Fb%3E+87+candidates%3C%2Fli%3E%3Cli%3E%3Cb%3EHiring+Manager+Review%3A%3C%2Fb%3E+25+candidates%3C%2Fli%3E%3Cli%3E%3Cb%3ERecruiter+Screen%3A%3C%2Fb%3E+18+candidates%3C%2Fli%3E%3Cli%3E%3Cb%3ETechnical+Interview%3A%3C%2Fb%3E+12+candidates%3C%2Fli%3E%3Cli%3E%3Cb%3EFinal+Round%3A%3C%2Fb%3E+5+candidates%3C%2Fli%3E%3Cli%3E%3Cb%3EOffer%3A%3C%2Fb%3E+2+candidates%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Engineering+Open+Roles%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22citationTitle%22%3A%22Engineering+Candidate+Pipeline%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Afalse%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- HR - Recruiting & Talent
systems:
- workday
- greenhouse

---
