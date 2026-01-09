---
availability: INSTALLABLE
description: A plugin that can find the birthdays of your teammates in Workday.
installation_asset_uuid: 6534edfc-abd3-4abd-9fbf-46ba153f6a23
name: Look Up Birthdays
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+of+any+upcoming+birthdays%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EUpcoming+Birthdays%3A%3Cbr%3E%5Cn%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E1.+April+9%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Robin+Sanders%3Cbr%3E%5Cn%26nbsp%3B-+Mason+Webb%3Cbr%3E%5Cn%26nbsp%3B-+Xaviere+Francois%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+April+10%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Oliver+Reynolds%3Cbr%3E%5Cn%26nbsp%3B-+Kristin+Sanderson%3Cbr%3E%5Cn%26nbsp%3B-+Jonathan+Quinn%3Cbr%3E%5Cn%26nbsp%3B-+Andrea+Hillis%3Cbr%3E%5Cn%26nbsp%3B-+Hanna+Salo%3Cbr%3E%5Cn%26nbsp%3B-+Bryan+Nagallo%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E3.+April+11%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Pricila+Amiel%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E4.+April+12%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Laurie+Jenkins%3Cbr%3E%5Cn%26nbsp%3B-+Meredith+Baxter%3Cbr%3E%5Cn%26nbsp%3B-+Carme+Granell+Parellada%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E5.+April+14%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Bruce+Morton%3Cbr%3E%5Cn%26nbsp%3B-+Leslie+Boudreau%3Cbr%3E%5Cn%26nbsp%3B-+Juha+Niemi%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E6.+April+15%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Isabel+Arguello%3Cbr%3E%5Cn%26nbsp%3B-+Tom+Kerr%3Cbr%3E%5Cn%26nbsp%3B-+Matilda+Thompson+%5BC%5D%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E7.+April+16%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Willem+Berkenbosch%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E8.+April+18%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Emily+Mills%3Cbr%3E%5Cn%26nbsp%3B-+Jordan+Hsia%3Cbr%3E%5Cn%26nbsp%3B-+Kumar+Chopra%3Cbr%3E%5Cn%26nbsp%3B-+Audrey+Novak%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E9.+April+19%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Annika+Nilsson%3Cbr%3E%5Cn%26nbsp%3B-+Lucy+Collins%3Cbr%3E%5Cn%26nbsp%3B-+Nora+Berg%3Cbr%3E%5Cn%26nbsp%3B-+Katalinka+Varga%3Cbr%3E%5Cn%26nbsp%3B-+Sak+Ressam%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
systems:
- workday
video: https://youtu.be/PRSnrXB4XHk
---

# Introduction

The **Look Up Birthdays** plugin enables teams to effortlessly retrieve upcoming employee birthdays from Workday using the Moveworks AI Assistant. Powered by Workday’s **Reports-as-a-Service (RaaS)**, this plugin connects to a pre-built custom report and delivers birthday information through a conversational interface — making it easier than ever to celebrate and engage with your colleagues.

This guide will walk you through how to call RaaS from Agent Studio and integrate it into your Moveworks experience. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+of+any+upcoming+birthdays%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EUpcoming+Birthdays%3A%3Cbr%3E%5Cn%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E1.+April+9%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Robin+Sanders%3Cbr%3E%5Cn%26nbsp%3B-+Mason+Webb%3Cbr%3E%5Cn%26nbsp%3B-+Xaviere+Francois%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+April+10%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Oliver+Reynolds%3Cbr%3E%5Cn%26nbsp%3B-+Kristin+Sanderson%3Cbr%3E%5Cn%26nbsp%3B-+Jonathan+Quinn%3Cbr%3E%5Cn%26nbsp%3B-+Andrea+Hillis%3Cbr%3E%5Cn%26nbsp%3B-+Hanna+Salo%3Cbr%3E%5Cn%26nbsp%3B-+Bryan+Nagallo%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E3.+April+11%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Pricila+Amiel%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E4.+April+12%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Laurie+Jenkins%3Cbr%3E%5Cn%26nbsp%3B-+Meredith+Baxter%3Cbr%3E%5Cn%26nbsp%3B-+Carme+Granell+Parellada%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E5.+April+14%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Bruce+Morton%3Cbr%3E%5Cn%26nbsp%3B-+Leslie+Boudreau%3Cbr%3E%5Cn%26nbsp%3B-+Juha+Niemi%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E6.+April+15%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Isabel+Arguello%3Cbr%3E%5Cn%26nbsp%3B-+Tom+Kerr%3Cbr%3E%5Cn%26nbsp%3B-+Matilda+Thompson+%5BC%5D%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E7.+April+16%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Willem+Berkenbosch%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E8.+April+18%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Emily+Mills%3Cbr%3E%5Cn%26nbsp%3B-+Jordan+Hsia%3Cbr%3E%5Cn%26nbsp%3B-+Kumar+Chopra%3Cbr%3E%5Cn%26nbsp%3B-+Audrey+Novak%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E9.+April+19%2C+2025%3A%3Cbr%3E%5Cn%26nbsp%3B-+Annika+Nilsson%3Cbr%3E%5Cn%26nbsp%3B-+Lucy+Collins%3Cbr%3E%5Cn%26nbsp%3B-+Nora+Berg%3Cbr%3E%5Cn%26nbsp%3B-+Katalinka+Varga%3Cbr%3E%5Cn%26nbsp%3B-+Sak+Ressam%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Workday first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) guide to create the connector.

**Note**: For **Look up Birthdays** functionality, you will need to also add the following permission (the connector guide will walk you through how to add domain permissions): 

- Assign the `Public Profile Preferences: Birthday` domain permission with **Get** access.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

After installing the plugin from the marketplace, you must **update the API endpoint** in the plugin configuration with your organization's Workday report URL.You can find this URL by following the steps below. This ensures the plugin fetches birthday data from your tenant-specific Workday report.The final URL will look like:
https://your-domain.com/ccx/service/customreport2/<tenant>/<username>/Alert_-_Birthdays_for_this_week_and_next?format=json

### **Get the URL for the Report**

In this step, we will get the URL for the report we want to run within Agent Studio. We are using a inbuilt report as part of this example but you can call any report that already exists or that you create using these steps.

We are going to use the `*Alert - Birthdays for this week and next*` report to get the upcoming birthdays for this example.

1. Login to Workday and search for “**All Custom Reports**” in the search bar.
    
    ![step1.png](Look%20up%20Birthdays%20ae22eca697bb41648f5201f85bb0fbea/step1.png)
    
2. Filter *Custom Report Name* by “Birthday”.
3. Check the box next to “**Alert - Birthdays for this week and next**” and filter.
    
    ![step2.png](Look%20up%20Birthdays%20ae22eca697bb41648f5201f85bb0fbea/step2.png)
    
4. Click on the link for “Alert - Birthdays for this week and next”.
    
    ![step3.png](Look%20up%20Birthdays%20ae22eca697bb41648f5201f85bb0fbea/0ff66ab3-61f4-4f52-a23f-8640faec9711.png)
    
5. From the ellipsis drop-down, go to **Custom Report → Edit**. Navigate to the **Share** section, select **"Share with specific authorized groups and users"** as the **Report Definition Sharing Option** and then add your Security Group and API Client names under **Authorized Groups** and **Authorized Users**, respectively.
    
    ![Screenshot 2025-04-21 at 3.28.05 PM.png](Look%20up%20Birthdays%20ae22eca697bb41648f5201f85bb0fbea/Screenshot_2025-04-21_at_3.28.05_PM.png)
    
6. From the ellipse drop-down, go to *Web Service → View URLs.*
    
    ![step4.png](Look%20up%20Birthdays%20ae22eca697bb41648f5201f85bb0fbea/step4.png)
    
7. You will see a dialog prompting you to sign in—press **Cancel** and copy the URL after [*wd2-impl-services1.workday.com](http://wd2-impl-services1.workday.com/) which should look something like this:* 'https://your-domain.com/*/ccx/service/customreport2/[your_tenant]/[your user_name]/Alert_-_Birthdays_for_this_week_and_next’.* This will be your API endpoint to fetch upcoming birthday data.
    
    ```bash
    curl 'https://your-domain.com/ccx/service/customreport2/<INSTANCE>/<your *user_name*>/Alert_-_Birthdays_for_this_week_and_next?format=json'
    --user '<api_key>:'
    ```
    
    ![step5.png](Look%20up%20Birthdays%20ae22eca697bb41648f5201f85bb0fbea/step5.png)