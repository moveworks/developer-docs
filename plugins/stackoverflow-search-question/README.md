---
availability: INSTALLABLE
description: A plugin that allows the user to look for questions on Stack overflow
  directly through chat interface.
installation_asset_uuid: c58b6d4e-c694-449d-875b-036c8986414a
name: Search for a question
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22search+for+%5C%22duplicate+records%5C%22+on+stackoverflow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27m+currently+searching+for+information+on+%3Cstrong%3E%5C%22duplicate+records%5C%22%3C%2Fstrong%3E+on+Stack+Overflow.%26nbsp%3B%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThis+process+is+ongoing%2C+and+I%27ll+update+you+once+I+have+the+results.%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+some+solutions+related+to+handling+%3Cstrong%3Eduplicate+records%3C%2Fstrong%3E%3A+%3Cbr%3E%5Cn1.+%3Cstrong%3EHow+to+Delete+Duplicate+Records+in+a+SQL+Table%3C%2Fstrong%3E%3A+If+you+need+to+remove+duplicate+records+while+keeping+only+one+instance+of+each%2C+you+can+refer+to+this+%3Ca+href%3D%5C%22%23%5C%22+target%3D%5C%22_blank%5C%22%3EStack+Overflow+question%3C%2Fa%3E+for+guidance.%3Cbr%3E%5Cn%3Cbr%3E%5Cn+2.+%3Cstrong%3EHow+to+Write+a+SQL+Query+to+Find+Duplicate+Records+in+a+Table%3C%2Fstrong%3E%3A+If+you+want+to+identify+duplicate+entries+based+on+a+specific+column%2C+such+as+the+email+column%2C+you+can+check+out+this+%3Ca+href%3D%5C%22%23%5C%22+target%3D%5C%22_blank%5C%22%3EStack+Overflow+question%3C%2Fa%3E+for+a+detailed+explanation.%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3EAdditionally%2C+I+can+access+more+information+on+these+questions+if+needed.+Let+me+know+if+you+need+further+assistance%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- stackoverflow
---

# **Introduction**

The **Search a Question on StackOverflow for Teams** plugin enhances the Moveworks AI Assistant by allowing users to search through their organization’s private Stack Overflow for Teams knowledge base directly from their chat interface. This integration empowers team members to quickly access proprietary programming solutions, best practices, and expert advice tailored specifically to their organization, all without leaving the Moveworks environment.

# Prerequisites

- Access to Agent Studio
- [Stackoverflow Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=stackoverflow) set up in Creator Studio.

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22search+for+%5C%22duplicate+records%5C%22+on+stackoverflow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27m+currently+searching+for+information+on+%3Cstrong%3E%5C%22duplicate+records%5C%22%3C%2Fstrong%3E+on+Stack+Overflow.%26nbsp%3B%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThis+process+is+ongoing%2C+and+I%27ll+update+you+once+I+have+the+results.%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+some+solutions+related+to+handling+%3Cstrong%3Eduplicate+records%3C%2Fstrong%3E%3A+%3Cbr%3E%5Cn1.+%3Cstrong%3EHow+to+Delete+Duplicate+Records+in+a+SQL+Table%3C%2Fstrong%3E%3A+If+you+need+to+remove+duplicate+records+while+keeping+only+one+instance+of+each%2C+you+can+refer+to+this+%3Ca+href%3D%5C%22%23%5C%22+target%3D%5C%22_blank%5C%22%3EStack+Overflow+question%3C%2Fa%3E+for+guidance.%3Cbr%3E%5Cn%3Cbr%3E%5Cn+2.+%3Cstrong%3EHow+to+Write+a+SQL+Query+to+Find+Duplicate+Records+in+a+Table%3C%2Fstrong%3E%3A+If+you+want+to+identify+duplicate+entries+based+on+a+specific+column%2C+such+as+the+email+column%2C+you+can+check+out+this+%3Ca+href%3D%5C%22%23%5C%22+target%3D%5C%22_blank%5C%22%3EStack+Overflow+question%3C%2Fa%3E+for+a+detailed+explanation.%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3EAdditionally%2C+I+can+access+more+information+on+these+questions+if+needed.+Let+me+know+if+you+need+further+assistance%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our [**Stackoverflow Connector Guide**](https://developer.moveworks.com/creator-studio/resources/connector/?id=stackoverflow) to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

# Appendix

```bash
curl --request GET "https://{your_organisation}.stackenterprise.co/api/2.3/search?filter=!6WPIomnMOOD*e&intitle={{question}}&sort={{sort_type}}&order={{desc}}&tags={{tags}}&key={{your_api_key}}" \
     --header "Authorization: Bearer {{access_token}}"
```

- **URL and Query Parameters:**
    - **`https://{your_organisation}.stackenterprise.co/api/2.3/search`**: The base URL for the search API endpoint, customized with your organization's Stack Overflow for Teams subdomain.
    - **`filter=!6WPIomnMOOD*e`**: Specifies a filter to adjust the fields included in the results.
        - How to create your ow filter :
            - Step 1 : Go on [https://api.stackexchange.com/docs/search](https://api.stackexchange.com/docs/search) and click on the default filter [edit].
                
                ![image.png](Search%20for%20a%20question%201d2588d8909f80539f43db80a636d7a7/image.png)
                
            - Step 2: Select the field you want to include in your json response.
                
                ![image.png](Search%20for%20a%20question%201d2588d8909f80539f43db80a636d7a7/image%201.png)
                
            - Step 3: Click on Save.
            - Step 4: Copy the filter value.
                
                ![image.png](Search%20for%20a%20question%201d2588d8909f80539f43db80a636d7a7/image%202.png)
                
            
    - **`intitle={{question}}`**: The title or part of the title of the question you're searching for. Replace **`{{question}}`** with your query string.
    - **`sort={{sort_type}}`**: Sorts the results based on the specified type. Replace **`{{sort_type}}`** with a sorting option (e.g., activity, votes, creation, relevance).
    Relevance is the default type.
    - **`order=desc`**: Specifies the order of sorting, typically **`asc`** for ascending or **`desc`** for descending.
    - **`tags={{tags}}`**: Filters results to only those with specific tags. Replace **`{{tags}}`** with a semi-colon-separated list of tags eg (knn;python).
    - **`key={{your_api_key}}`**: Your API key for authenticating the request. Replace **`{{your_api_key}}`** with your actual API key.
- **Header:**
    - **`Authorization: Bearer {{access_token}}`**: Uses a bearer token for authentication. Replace **`{{access_token}}`** with your actual access token.