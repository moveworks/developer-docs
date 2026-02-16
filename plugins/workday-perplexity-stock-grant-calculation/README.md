---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
description: Looks UP stock options from Workday and the current stock price from
  a market data API to calculate the grant's current value.
name: Real-time Stock Grant Value
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+know+how+much+my+next+stock+grant+is+worth.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it%2C+let+me+check+your+upcoming+stock+grant+and+Workday+and+the+latest+stock+price+from+Perplexity.+%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Looking+up+stock+grant+details+in+Workday%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Looking+up+share+price+through+Perplexity.+%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Running+Structured+Data+Analyzer%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22title%22%3A%22Structured+Data+Analyzer%22%2C%22connectorName%22%3A%22moveworks%22%2C%22code%22%3A%22%23+Data+Mapping%5Cnstock_options+%3D+workday_equity_lookup.grants.number_of_shares%5Cnstrike_price+%3D+workday_equity_lookup.grants.strike_price%5Cncurrent_stock_price+%3D+perplexity_stock.stock_details.price%5Cn%5Cn%23+Calculate+the+value+of+the+stock+grant%5Cnprofit_per_share+%3D+current_stock_price+-+strike_price%5Cntotal_value+%3D+profit_per_share+*+stock_options%22%2C%22caption%22%3A%22The+Structured+Data+Analyzer+dynamically+generates+Python+code+based+on+the+User%27s+Statement%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cbr%3EYour+next+stock+grant+is+for+%3Cstrong%3E250+options%3C%2Fstrong%3E+at+a+strike+price+of%3Cstrong%3E+%24100.00.%3C%2Fstrong%3E%3C%2Fp%3E%3Cp%3EThe+current+stock+price+is+%3Cstrong%3E%24110.50.%3C%2Fstrong%3E%3C%2Fp%3E%3Cp%3E%3Cbr%3E%3C%2Fp%3E%3Cp%3EThat+makes+your+grant+worth+approximately%3Cstrong%3E+%242%2C625.00%3C%2Fstrong%3E+%28before+taxes+and+assuming+immediate+exercisability%29.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%222025+Stock+Grant%22%7D%2C%7B%22connectorName%22%3A%22perplexity%22%2C%22citationTitle%22%3A%22ACME+Stock+Price%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Afalse%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- HR - Benefits
- HR - Other
systems:
- workday
- perplexity
---
