---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
description: A plugin that allows sales managers to evaluate individual and team-wide
  sales rep performance based on opportunity and activity data. This automation helps
  in understanding productivity, pipeline contribution, win rates, and deal execution
  patterns.
name: Sales Rep Performance Analyzer
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+analyze+the+performance+of+my+sales+reps%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+analyze+sales+rep+performance.+Which+sales+rep+or+team+would+you+like+to+review%2C+and+for+what+time+period%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+see+the+performance+for+the+%27Enterprise+Sales%27+team+for+the+last+quarter.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearching+%3Cb%3ESalesforce%3C%2Fb%3E+for+sales+reps+in+the+%27Enterprise+Sales%27+team.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+analyze+the+performance+for+the+%3Cb%3EEnterprise+Sales%3C%2Fb%3E+team+for+the+last+quarter+%28Q1+2024%29.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETeam%3A%3C%2Fb%3E+Enterprise+Sales%3C%2Fli%3E%3Cli%3E%3Cb%3EPeriod%3A%3C%2Fb%3E+January+1%2C+2024+-+March+31%2C+2024%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+analyze%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+opportunity+and+activity+data+from+%3Cb%3ESalesforce%3C%2Fb%3E+for+the+Enterprise+Sales+team+%28Q1+2024%29.%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3EExecuting+Python+script+for+structured+data+analysis.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22script%5C%22%3A+%5C%22import+pandas+as+pd%5C%5Cn%5C%5Cndef+analyze_sales_performance%28data%29%3A%5C%5Cn++++df+%3D+pd.DataFrame%28data%5B%27sales_data%27%5D%29%5C%5Cn++++team_avg+%3D+df.mean%28%29.to_dict%28%29%5C%5Cn++++individual_perf+%3D+df.groupby%28%27rep_name%27%29.mean%28%29.to_dict%28%27index%27%29%5C%5Cn++++return+%7B%27team_average%27%3A+team_avg%2C+%27individual_performance%27%3A+individual_perf%7D%5C%22%2C%5Cn++%5C%22parameters%5C%22%3A+%7B%5Cn++++%5C%22sales_data%5C%22%3A+%5B%5Cn++++++%7B%5C%22rep_name%5C%22%3A+%5C%22Alice+Johnson%5C%22%2C+%5C%22ClosedWonRevenue%5C%22%3A+700000%2C+%5C%22PipelineCreated%5C%22%3A+1100000%2C+%5C%22WinRate%5C%22%3A+0.30%2C+%5C%22AverageDealSize%5C%22%3A+140000%2C+%5C%22ActivityVolume%5C%22%3A+550%2C+%5C%22DealCycleLength%5C%22%3A+85%7D%2C%5Cn++++++%7B%5C%22rep_name%5C%22%3A+%5C%22Bob+Williams%5C%22%2C+%5C%22ClosedWonRevenue%5C%22%3A+1800000%2C+%5C%22PipelineCreated%5C%22%3A+2500000%2C+%5C%22WinRate%5C%22%3A+0.22%2C+%5C%22AverageDealSize%5C%22%3A+160000%2C+%5C%22ActivityVolume%5C%22%3A+420%2C+%5C%22DealCycleLength%5C%22%3A+95%7D%2C%5Cn++++++%7B%5C%22rep_name%5C%22%3A+%5C%22Carol+Davis%5C%22%2C+%5C%22ClosedWonRevenue%5C%22%3A+2000000%2C+%5C%22PipelineCreated%5C%22%3A+2700000%2C+%5C%22WinRate%5C%22%3A+0.28%2C+%5C%22AverageDealSize%5C%22%3A+155000%2C+%5C%22ActivityVolume%5C%22%3A+400%2C+%5C%22DealCycleLength%5C%22%3A+88%7D%5Cn++++%5D%2C%5Cn++++%5C%22team%5C%22%3A+%5C%22Enterprise+Sales%5C%22%2C%5Cn++++%5C%22startDate%5C%22%3A+%5C%222024-01-01%5C%22%2C%5Cn++++%5C%22endDate%5C%22%3A+%5C%222024-03-31%5C%22%5Cn++%7D%5Cn%7D%22%2C%22connectorName%22%3A%22python%22%2C%22title%22%3A%22POST+%2Fexecute%2Fscript%22%7D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EPerformance+metrics+calculated+by+Python+script.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+the+sales+performance+summary+for+the+%3Cb%3EEnterprise+Sales%3C%2Fb%3E+team+for+Q1+2024%3A%3C%2Fp%3E%3Ch4%3ETeam+Average%3A%3C%2Fh4%3E%3Cul%3E%3Cli%3E%3Cb%3EClosed-Won+Revenue%3A%3C%2Fb%3E+%5C%22%241%2C500%2C000%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EPipeline+Created%3A%3C%2Fb%3E+%5C%22%242%2C100%2C000%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EWin+Rate%3A%3C%2Fb%3E+%5C%2225%25%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EAverage+Deal+Size%3A%3C%2Fb%3E+%5C%22%24150%2C000%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EActivity+Volume+%28Calls%2FMeetings%2FEmails%29%3A%3C%2Fb%3E+%5C%22450%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EDeal+Cycle+Length%3A%3C%2Fb%3E+%5C%2290+days%5C%22%3C%2Fli%3E%3C%2Ful%3E%3Ch4%3EIndividual+Performance%3A%3C%2Fh4%3E%3Cul%3E%3Cli%3E%3Cb%3EAlice+Johnson%3C%2Fb%3E%3Cbr+%2F%3EClosed-Won%3A+%5C%22%24700%2C000%5C%22+%28vs.+avg.+%5C%22%241%2C500%2C000%5C%22%29%3Cbr+%2F%3EPipeline+Created%3A+%5C%22%241%2C100%2C000%5C%22+%28vs.+avg.+%5C%22%242%2C100%2C000%5C%22%29%3Cbr+%2F%3EWin+Rate%3A+%5C%2230%25%5C%22+%28vs.+avg.+%5C%2225%25%5C%22%29%3Cbr+%2F%3EActivity+Volume%3A+%5C%22550%5C%22+%28vs.+avg.+%5C%22450%5C%22%29%3C%2Fli%3E%3Cli%3E%3Cb%3EBob+Williams%3C%2Fb%3E%3Cbr+%2F%3EClosed-Won%3A+%5C%22%241%2C800%2C000%5C%22+%28vs.+avg.+%5C%22%241%2C500%2C000%5C%22%29%3Cbr+%2F%3EPipeline+Created%3A+%5C%22%242%2C500%2C000%5C%22+%28vs.+avg.+%5C%22%242%2C100%2C000%5C%22%29%3Cbr+%2F%3EWin+Rate%3A+%5C%2222%25%5C%22+%28vs.+avg.+%5C%2225%25%5C%22%29%3Cbr+%2F%3EActivity+Volume%3A+%5C%22420%5C%22+%28vs.+avg.+%5C%22450%5C%22%29%3C%2Fli%3E%3Cli%3E%3Cb%3ECarol+Davis%3C%2Fb%3E%3Cbr+%2F%3EClosed-Won%3A+%5C%22%242%2C000%2C000%5C%22+%28vs.+avg.+%5C%22%241%2C500%2C000%5C%22%29%3Cbr+%2F%3EPipeline+Created%3A+%5C%22%242%2C700%2C000%5C%22+%28vs.+avg.+%5C%22%242%2C100%2C000%5C%22%29%3Cbr+%2F%3EWin+Rate%3A+%5C%2228%25%5C%22+%28vs.+avg.+%5C%2225%25%5C%22%29%3Cbr+%2F%3EActivity+Volume%3A+%5C%22400%5C%22+%28vs.+avg.+%5C%22450%5C%22%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Alice+Johnson%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Bob+Williams%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Carol+Davis%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce
---
## **Introduction**

The Salesforce “Sales Rep Performance Analyzer” plugin empowers sales leaders to instantly evaluate individual and team-wide performance using real-time Opportunity and Activity data—directly through the Moveworks AI Assistant. By simplifying how managers access insights such as productivity trends, win rates, deal, and pipeline contribution, it eliminates the need to manually create reports or navigate complex Salesforce dashboards. This ensures faster decision-making, higher accuracy, and a more efficient performance-review workflow.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+analyze+the+performance+of+my+sales+reps%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+analyze+sales+rep+performance.+Which+sales+rep+or+team+would+you+like+to+review%2C+and+for+what+time+period%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+see+the+performance+for+the+%27Enterprise+Sales%27+team+for+the+last+quarter.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearching+%3Cb%3ESalesforce%3C%2Fb%3E+for+sales+reps+in+the+%27Enterprise+Sales%27+team.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+analyze+the+performance+for+the+%3Cb%3EEnterprise+Sales%3C%2Fb%3E+team+for+the+last+quarter+%28Q1+2024%29.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETeam%3A%3C%2Fb%3E+Enterprise+Sales%3C%2Fli%3E%3Cli%3E%3Cb%3EPeriod%3A%3C%2Fb%3E+January+1%2C+2024+-+March+31%2C+2024%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+analyze%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+opportunity+and+activity+data+from+%3Cb%3ESalesforce%3C%2Fb%3E+for+the+Enterprise+Sales+team+%28Q1+2024%29.%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3EExecuting+Python+script+for+structured+data+analysis.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22script%5C%22%3A+%5C%22import+pandas+as+pd%5C%5Cn%5C%5Cndef+analyze_sales_performance%28data%29%3A%5C%5Cn++++df+%3D+pd.DataFrame%28data%5B%27sales_data%27%5D%29%5C%5Cn++++team_avg+%3D+df.mean%28%29.to_dict%28%29%5C%5Cn++++individual_perf+%3D+df.groupby%28%27rep_name%27%29.mean%28%29.to_dict%28%27index%27%29%5C%5Cn++++return+%7B%27team_average%27%3A+team_avg%2C+%27individual_performance%27%3A+individual_perf%7D%5C%22%2C%5Cn++%5C%22parameters%5C%22%3A+%7B%5Cn++++%5C%22sales_data%5C%22%3A+%5B%5Cn++++++%7B%5C%22rep_name%5C%22%3A+%5C%22Alice+Johnson%5C%22%2C+%5C%22ClosedWonRevenue%5C%22%3A+700000%2C+%5C%22PipelineCreated%5C%22%3A+1100000%2C+%5C%22WinRate%5C%22%3A+0.30%2C+%5C%22AverageDealSize%5C%22%3A+140000%2C+%5C%22ActivityVolume%5C%22%3A+550%2C+%5C%22DealCycleLength%5C%22%3A+85%7D%2C%5Cn++++++%7B%5C%22rep_name%5C%22%3A+%5C%22Bob+Williams%5C%22%2C+%5C%22ClosedWonRevenue%5C%22%3A+1800000%2C+%5C%22PipelineCreated%5C%22%3A+2500000%2C+%5C%22WinRate%5C%22%3A+0.22%2C+%5C%22AverageDealSize%5C%22%3A+160000%2C+%5C%22ActivityVolume%5C%22%3A+420%2C+%5C%22DealCycleLength%5C%22%3A+95%7D%2C%5Cn++++++%7B%5C%22rep_name%5C%22%3A+%5C%22Carol+Davis%5C%22%2C+%5C%22ClosedWonRevenue%5C%22%3A+2000000%2C+%5C%22PipelineCreated%5C%22%3A+2700000%2C+%5C%22WinRate%5C%22%3A+0.28%2C+%5C%22AverageDealSize%5C%22%3A+155000%2C+%5C%22ActivityVolume%5C%22%3A+400%2C+%5C%22DealCycleLength%5C%22%3A+88%7D%5Cn++++%5D%2C%5Cn++++%5C%22team%5C%22%3A+%5C%22Enterprise+Sales%5C%22%2C%5Cn++++%5C%22startDate%5C%22%3A+%5C%222024-01-01%5C%22%2C%5Cn++++%5C%22endDate%5C%22%3A+%5C%222024-03-31%5C%22%5Cn++%7D%5Cn%7D%22%2C%22connectorName%22%3A%22python%22%2C%22title%22%3A%22POST+%2Fexecute%2Fscript%22%7D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EPerformance+metrics+calculated+by+Python+script.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+the+sales+performance+summary+for+the+%3Cb%3EEnterprise+Sales%3C%2Fb%3E+team+for+Q1+2024%3A%3C%2Fp%3E%3Ch4%3ETeam+Average%3A%3C%2Fh4%3E%3Cul%3E%3Cli%3E%3Cb%3EClosed-Won+Revenue%3A%3C%2Fb%3E+%5C%22%241%2C500%2C000%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EPipeline+Created%3A%3C%2Fb%3E+%5C%22%242%2C100%2C000%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EWin+Rate%3A%3C%2Fb%3E+%5C%2225%25%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EAverage+Deal+Size%3A%3C%2Fb%3E+%5C%22%24150%2C000%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EActivity+Volume+%28Calls%2FMeetings%2FEmails%29%3A%3C%2Fb%3E+%5C%22450%5C%22%3C%2Fli%3E%3Cli%3E%3Cb%3EDeal+Cycle+Length%3A%3C%2Fb%3E+%5C%2290+days%5C%22%3C%2Fli%3E%3C%2Ful%3E%3Ch4%3EIndividual+Performance%3A%3C%2Fh4%3E%3Cul%3E%3Cli%3E%3Cb%3EAlice+Johnson%3C%2Fb%3E%3Cbr+%2F%3EClosed-Won%3A+%5C%22%24700%2C000%5C%22+%28vs.+avg.+%5C%22%241%2C500%2C000%5C%22%29%3Cbr+%2F%3EPipeline+Created%3A+%5C%22%241%2C100%2C000%5C%22+%28vs.+avg.+%5C%22%242%2C100%2C000%5C%22%29%3Cbr+%2F%3EWin+Rate%3A+%5C%2230%25%5C%22+%28vs.+avg.+%5C%2225%25%5C%22%29%3Cbr+%2F%3EActivity+Volume%3A+%5C%22550%5C%22+%28vs.+avg.+%5C%22450%5C%22%29%3C%2Fli%3E%3Cli%3E%3Cb%3EBob+Williams%3C%2Fb%3E%3Cbr+%2F%3EClosed-Won%3A+%5C%22%241%2C800%2C000%5C%22+%28vs.+avg.+%5C%22%241%2C500%2C000%5C%22%29%3Cbr+%2F%3EPipeline+Created%3A+%5C%22%242%2C500%2C000%5C%22+%28vs.+avg.+%5C%22%242%2C100%2C000%5C%22%29%3Cbr+%2F%3EWin+Rate%3A+%5C%2222%25%5C%22+%28vs.+avg.+%5C%2225%25%5C%22%29%3Cbr+%2F%3EActivity+Volume%3A+%5C%22420%5C%22+%28vs.+avg.+%5C%22450%5C%22%29%3C%2Fli%3E%3Cli%3E%3Cb%3ECarol+Davis%3C%2Fb%3E%3Cbr+%2F%3EClosed-Won%3A+%5C%22%242%2C000%2C000%5C%22+%28vs.+avg.+%5C%22%241%2C500%2C000%5C%22%29%3Cbr+%2F%3EPipeline+Created%3A+%5C%22%242%2C700%2C000%5C%22+%28vs.+avg.+%5C%22%242%2C100%2C000%5C%22%29%3Cbr+%2F%3EWin+Rate%3A+%5C%2228%25%5C%22+%28vs.+avg.+%5C%2225%25%5C%22%29%3Cbr+%2F%3EActivity+Volume%3A+%5C%22400%5C%22+%28vs.+avg.+%5C%22450%5C%22%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Alice+Johnson%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Bob+Williams%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Carol+Davis%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend using user consent auth (authorization grant type). Please follow our [Salesforce UCA Connector](https://marketplace.moveworks.com/connectors/salesforce#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup) Guide for detailed instructions. This plugin was made with APIs using authorization code grant type flow. You'll find the required permissions for User consent auth under the 'Required Salesforce Permissions'. 

**User Consent Authentication Benefits:**

With OAuth 2.0 User Consent Authentication enabled, users can securely access their own Salesforce data—such as OpportunityTeamMember, User, Event, Task and Opportunity—through Moveworks without sharing credentials. By authenticating once through Salesforce’s login page, each user allows the bot to securely access and retrieve opportunity details on their behalf.

This ensures data privacy, role-based access control, and a seamless self-service experience where users only see the data they are authorized to view.

**Required Salesforce Permissions:**

To enable access to the Salesforce API endpoints used in this plugin, ensure your Salesforce connected app has the correct OAuth scope configured under:

- **Setup → App Manager → Connected Apps → [Your Connected App]**

**Required OAuth Scope:**

- **Access and manage your data (api)**

This scope is essential for retrieving User, Event, Task, Roles and Opportunity via Salesforce REST APIs.

**Required Object Permissions:**

Ensure the integration user (via profile or permission sets) has **read and write access** to:

- **Opportunity**
- **Task** (activities)
- **Event** (calendar activities)
- **User** (to read owner/manager info)
- **Roles**

These permissions are required to retrieve opportunity details and add products to an opportunity.

## Customization Process

### Create or Identify Required Fields (Segment and Region)

This plugin evaluates sales rep performance by analyzing Opportunities across key dimensions such as **Segment and** **Region**. These fields are used for generating accurate performance insights.

Salesforce does not provide standard fields for **Segment** or **Region** by default. 

To ensure accurate analysis and reporting, follow **one of the paths below** based on your Salesforce configuration.

### Path 1: If Segment and Region Fields Already Exist

If your Salesforce instance already tracks **Segment** or **Region** (even under different field names), you **do not need to create new fields**.

### Step A: Identify Existing Fields

Navigate to:

**Setup → Object Manager → Opportunity → Fields & Relationships**

Identify fields that represent:

**Segment** (examples):

- `Segment__c`
- `Market_Segment__c`
- `Industry__c`
- `Vertical__c`

**Region** (examples):

- `Region__c`
- `Territory__c`
- `Geo__c`

Note the **API Name** of each selected field (for example, `Sales_Region__c`).

These API names are required during plugin configuration.

### Path 2: If Segment or Region Fields Do NOT Exist

If your Salesforce instance does **not** track Segment or Region you must create or update the required fields.

**Steps to Create Custom Fields on Opportunity**

**1. Go to Setup**

- Click the **gear icon** and select **Setup**.

**2. Open Object Manager**

- In Setup, select **Object Manager**.
- Click **Opportunity**.

**3. Access Fields & Relationships**

- Select **Fields & Relationships** from the left menu.

**4. Create Segment Field**

- Click **New**
- **Field Type:** Picklist
- **Field Label:** Segment
- **Field Name:** Segment
- **Values:** Add segment categories.
    - Example: `SMB`, `Mid-Market`, `Enterprise`
- Click **Next**
- Set **Field-Level Security** to **Visible**
- Add the field to relevant **Page Layouts**
- Click **Save & New**

**5. Create Region Field**

- Click **New**
- **Field Type:** Picklist
- **Field Label:** Region
    
    - **Field Name:** Region
    
- **Values:** Add your regional structure
    - Example: `APAC`, `EMEA`, `AMER`
- Click **Next**
- Set **Field-Level Security** to **Visible**
- Add the field to relevant **Page Layouts**
- Click **Save & New**

Ensure the values align with your organization’s reporting standards and that the field is **Visible** to the **Integration User**.

Click **Save**.

## Plugin Configuration (Agent Studio)

After completing **Path 1 or Path 2**, configure the plugin to reference the correct Salesforce fields.

### Configuration Steps

1. Navigate to **Agent Studio → Plugins**.
2. Open **Salesforce_Sales_Rep_Performance_Analyzer**.
3. Click **Edit** and open the **Configuration / Process** tab.
4. Select the **Action Activity** block (typically the primary Compound Action).
5. In the **Input Mapping** section, provide the following values as **String Literals (constants)**:

| Argument Name | Description | Example Value |
| --- | --- | --- |
| `segment_field_api_name` | API name of the Segment field | `'Segment__c'` or `'Industry__c'` |
| `region_field_api_name` | API name of the Region field | `'Region__c'` or `'Territory__c'` |

### **Your Instance Configuration:**

All Salesforce API endpoints in this plugin use `{{YOUR_INSTANCE}}` as a placeholder.

Follow the steps below to update it correctly after installation:

1. Go to your **Salesforce Setup**.
2. In the **Quick Find** box, search for **My Domain** and select it.
3. Locate your **Salesforce org’s My Domain URL** (e.g., **`yourcompany.my.salesforce.com`**).
4. Replace `{{YOUR_INSTANCE}}` with your actual My Domain URL in all **action definitions** within the connector.
5. Ensure all API requests use **HTTPS** and leverage **OAuth 2.0 authentication**.
6. Save your configuration to ensure that all API requests are routed correctly and securely to your Salesforce instance

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### API #1: **Search Opportunities by Criteria**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/query/?q=SELECT FIELDS(ALL) FROM Opportunity WHERE {{{filter_query}}} ORDER BY CreatedDate DESC LIMIT 200' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters**

- `filter_query` — A dynamic **SOQL WHERE filter** built based on the user’s search input.
- `from_date / to_date` — Filters opportunities by **CreatedDate** range.
- `region_name` — Filter opportunities by partial match for Region .
- `segment_name` — Filters opportunities by partial match on Segment.
- `order_by` — Sorts results (default: `CloseDate DESC`).
- `limit` — Maximum number of records to return (default: `200`).
- `fields` — Returns **all fields** using `field(ALL)`.

**RSQL Filtering Notes**

- Use **SOQL syntax** in the `filter_query` parameter to filter opportunities based on different criteria.
- Common examples:
    - **Created Date Range:**
        
        `CreatedDate >= {{from_date}} AND CreatedDate <= {{to_date}}`
        
    - **Region:**
        - `Region__c+LIKE+'%{{region_name}}%'+AND+CreatedDate+>=+{{from_date}}+AND+CreatedDate+<=+{{to_date}}`
    - **Segment:**
        - `Segment__c+LIKE+'%{{segment_name}}%'+AND+CreatedDate+>=+{{from_date}}+AND+CreatedDate+<=+{{to_date}}`
- Filters can be **combined** using:
    - `AND` → both conditions must be true
    - `OR` → either condition may be true
    
    **Example of a Compound Filter Query:**
    
    ```bash
    CreatedDate >= '{{from_date}}' AND CreatedDate <= '{{to_date}}'
    ```
    

**Example Response:**

```bash
{
  "totalSize": 1,
  "done": true,
  "records": [
    {
      "attributes": {
        "type": "Opportunity",
        "url": "/services/data/v64.0/sobjects/Opportunity/{{opportunity_id}}"
      },
      "Id": "{{opportunity_id}}",
      "IsDeleted": false,
      "AccountId": "{{account_id}}",
      "IsPrivate": false,
      "Name": "{{opportunity_name}}",
      "Description": "{{description}}",
      "StageName": "{{stage_name}}",
      "Amount": "{{amount}}",
      "Probability": "{{probability}}",
      "ExpectedRevenue": "{{expected_revenue}}",
      "TotalOpportunityQuantity": "{{total_opportunity_qty}}",
      "CloseDate": "{{close_date}}",
      "Type": "{{opportunity_type}}",
      "NextStep": "{{next_step}}",
      "LeadSource": "{{lead_source}}",
      "IsClosed": "{{is_closed}}",
      "IsWon": "{{is_won}}",
      "ForecastCategory": "{{forecast_category}}",
      "ForecastCategoryName": "{{forecast_category_name}}",
      "CampaignId": "{{campaign_id}}",
      "HasOpportunityLineItem": "{{has_line_item}}",
      "Pricebook2Id": "{{pricebook_id}}",
      "OwnerId": "{{owner_id}}",
      "CreatedDate": "{{created_date}}",
      "CreatedById": "{{created_by_id}}",
      "LastModifiedDate": "{{last_modified_date}}",
      "LastModifiedById": "{{last_modified_by_id}}",
      "SystemModstamp": "{{system_modstamp}}",
      "LastActivityDate": "{{last_activity_date}}",
      "PushCount": "{{push_count}}",
      "LastStageChangeDate": "{{last_stage_change_date}}",
      "FiscalQuarter": "{{fiscal_quarter}}",
      "FiscalYear": "{{fiscal_year}}",
      "Fiscal": "{{fiscal}}",
      "ContactId": "{{contact_id}}",
      "LastViewedDate": "{{last_viewed_date}}",
      "LastReferencedDate": "{{last_referenced_date}}",
      "SyncedQuoteId": "{{synced_quote_id}}",
      "HasOpenActivity": "{{has_open_activity}}",
      "HasOverdueTask": "{{has_overdue_task}}",
      "LastAmountChangedHistoryId": "{{last_amount_changed_history_id}}",
      "LastCloseDateChangedHistoryId": "{{last_close_date_changed_history_id}}",
      "DeliveryInstallationStatus__c": "{{delivery_status}}",
      "TrackingNumber__c": "{{tracking_number}}",
      "OrderNumber__c": "{{order_number}}",
      "CurrentGenerators__c": "{{current_generators}}",
      "MainCompetitors__c": "{{main_competitors}}",
      "Phone__c": "{{phone}}",
      "Email__c": "{{email}}",
      "Proposed_Discount__c": "{{proposed_discount}}",
      "Discount__c": "{{discount}}",
      "MRR__c": "{{mrr}}",
      "ARR__c": "{{arr}}",
      "Approved__c": "{{approved}}",
      "Segment__c": "{{segment}}",
      "Region__c": "{{region}}"
    }
  ]
}

```

**Notes:**

- This endpoint supports **flexible filtering**, allowing queries by
    
    **Created Date, Region, Segment, Stage**, and more.
    
- Returns **all Opportunity fields** using `FIELDS(ALL)`.

### API #2: Get Opportunities by Team Manager Email

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/query/?q=SELECT Id, Name, Email, UserRoleId, UserRole.Name FROM User WHERE Email = '{{email}}'' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters**

- `email` **(string)** – Email of the team manager.

### API #3: Get Users by Role Id

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/query/?q=SELECT Id, Name  FROM User  WHERE UserRoleId = '{{user_role_id}}'' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters**

- `user_role_id` **(string)** – Salesforce Role ID to filter users by their assigned role.

### API #4: Get Opportunities by Owner Id

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/query/?q=SELECT Id, Name, StageName, CloseDate, Amount, CreatedDate, OwnerId, Owner.Name FROM Opportunity WHERE OwnerId IN ({{owner_id}}) AND CreatedDate >= {{from_date}} AND CreatedDate <= {{to_date}} ORDER BY CreatedDate DESC LIMIT 200' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters**

- `owner_id` **(string)** – Salesforce User IDs of opportunity owners to filter opportunities.
- `order_by` – Field to sort by
- `limit` – Maximum records

### API #5: Get Opportunities, Tasks, Events, and Opportunity by Opportunity IDs

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/composite' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Name,+StageName,+Amount,+Owner.Id,+Owner.Name,Owner.Email,+Account.Id,+Account.Name,+CloseDate,+CreatedDate,+LastActivityDate,+LastModifiedDate,+IsClosed,+IsWon+FROM+Opportunity+WHERE+Id+IN+({{opportunity_id}})",
      "referenceId": "Opportunity"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Name,+StageName,+Amount,+Owner.Id,+Owner.Name,Owner.Email,+Account.Id,+Account.Name,+CloseDate,+CreatedDate,+LastActivityDate,+LastModifiedDate,+IsClosed,+IsWon+FROM+Opportunity+WHERE+Id+IN+({{opportunity_id}})",
      "referenceId": "OpportunityDetails"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Subject,+ActivityDate,+CallType+FROM+Task+WHERE+WhatId+IN+({{opportunity_id}})+ORDER+BY+ActivityDate+DESC+LIMIT+50",
      "referenceId": "Task"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Subject,+StartDateTime,+EndDateTime+FROM+Event+WHERE+WhatId+IN+({{opportunity_id}})",
      "referenceId": "Event"
    }
  ]
}'

```

**Request Body Parameters**

- `opportunity_id` – Comma-separated list of Salesforce Opportunity IDs.
- `LIMIT` – Optional: Maximum number of records to return per object query

**Batch Components Returned**

- `opportunities` – Core Opportunity details: Id, Name, Amount, StageName, Owner details, Account details, CloseDate, CreatedDate, LastActivityDate, LastModifiedDate, IsClosed, IsWon.
- `tasks` – Tasks linked to opportunities: Id, Subject, ActivityDate, CreatedDate, LastModifiedDate, Owner details, WhatId, Status, Priority.
- `events` – Events linked to opportunities: Id, Subject, ActivityDate, CreatedDate, LastModifiedDate, Owner details, WhatId, Location.
- `opportunitydetails` ****- Id, Name, StageName, Amount, CloseDate, CreatedDate

**Notes:**

- `allOrNone: false` ensures that if one sub request fails, other requests still succeed.
- Each request uses a **referenceId** to correlate responses.
- SOQL `IN` clause allows querying multiple Opportunity IDs in a single request.