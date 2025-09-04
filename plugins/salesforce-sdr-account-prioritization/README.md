---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
description: "This plugin analyzes an SDR's assigned accounts and ranks them based\
  \ on recent engagement (calls, emails, meetings from Salesloft) only if there's\
  \ no open opportunity in Salesforce. It helps new SDRs decide who to reach out to\
  \ first \u2014 driving smarter outreach and faster pipeline generation."
domain:
- Sales
fidelity: IDEA
name: SDR Account Prioritization
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+a+new+SDR.+Which+of+my+accounts+have+had+the+most+engagement+recently+but+aren%27t+in+the+pipeline+yet%2C+so+I+know+who+to+call+first%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+I+can+help+with+that.+First%2C+I%27m+finding+all+of+your+accounts+in+%3Cb%3ESalesforce%3C%2Fb%3E.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ENext%2C+I%27m+checking+%3Cb%3ESalesloft%3C%2Fb%3E+for+recent+engagement+scores+for+those+accounts.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFinally%2C+I+am+generating+a+script+to+identify+accounts+without+an+open+opportunity+and+sorting+them+by+engagement+score.%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%23+Get+my+accounts+from+Salesforce%5Cnmy_accounts+%3D+salesforce.get_my_accounts%28%29%5Cn%5Cn%23+Get+engagement+data+from+Salesloft+for+the+user%27s+accounts%5Cnaccount_ids+%3D+%5Bacc%5B%27id%27%5D+for+acc+in+my_accounts.data%5D%5Cnengagement_data+%3D+salesloft.get_engagement_scores%28account_ids%3Daccount_ids%29%5Cn%5Cn%23+Combine+account+and+engagement+data%5Cnfor+account+in+my_accounts.data%3A%5Cn++%23+Find+the+corresponding+engagement+score%2C+default+to+0+if+not+found%5Cn++account%5B%27engagement_score%27%5D+%3D+engagement_data.get%28account%5B%27id%27%5D%2C+0%29%5Cn%5Cn%23+Filter+for+accounts+with+no+open+opportunities+and+an+engagement+score+%3E+50%5Cnhigh_priority_accounts+%3D+%5B%5Cn++++acc+for+acc+in+my_accounts.data%5Cn++++if+not+acc%5B%27has_open_opportunity%27%5D+and+acc%5B%27engagement_score%27%5D+%3E+50%5Cn%5D%5Cn%5Cn%23+Sort+by+the+highest+engagement+score%5Cnsorted_accounts+%3D+sorted%28high_priority_accounts%2C+key%3Dlambda+x%3A+x%5B%27engagement_score%27%5D%2C+reverse%3DTrue%29%5Cn%5Cn%23+Return+the+top+3%5Cnreturn+sorted_accounts%5B%3A3%5D%22%2C%22connectorName%22%3A%22python-script%22%2C%22title%22%3A%22Code+Generation%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+your+top+3+accounts+to+prioritize+based+on+recent+engagement%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Gigasphere+Inc.%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Innovate+Solutions%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22QuantumLeap+Corp.%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce

---
