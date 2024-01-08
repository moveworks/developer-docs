---
id: 8
name: Filter Records by Name
description: Users can query multiple  using named slots and ids
workspace: queries
purple_chat_link: https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A750%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Who+is+the+current+on-call+for+the+%3Cb%3EInfrastructure%3C%2Fb%3E+team%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Moveworks+extracts+%5C%22Infrastructure%5C%22+and+maps+it+to+the+API+value%3A%5Cn%5Cn%7B%5C%22team_id%5C%22%3A+%5C%22team-728-infra%5C%22%7D%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Ci%3EOne+moment%2C+fetching+your+results.+This+may+take+%7E10+seconds%3C%2Fi%3E%5Cn%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E%3Cb%3EPaul+Brudebaker%3C%2Fb%3E%3A+%2B1+%28555%29+999-0000%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E%3Cb%3EDrew+Downs%3C%2Fb%3E%3A+%2B1+%28555%29+987-6543%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EShow+me+more+about+Paul%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure+thing%21+Here+is+the+current+on-call+details+for+the+Infrastructure+team%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22IT+Infrastructure%3A+Paul+Brudebaker%22%2C%22text%22%3A%22%3Cb%3ETitle%3C%2Fb%3E%3A+Director+of+Infrastructure%5Cn%3Cb%3EEmergency+Phone%3C%2Fb%3E%3A+%2B1+%28555%29+999-0000%5Cn%3Cb%3EOn-call+Since%3C%2Fb%3E%3A+July+1%2C+2023%22%7D%5D%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 45
difficulty_level: Intermediate
---

# What does this pattern do?

Convert names provided by users into API IDs before filtering a table to relevant rows. You can visualize this as a filter applied on a table like below:

[View Purple Chat](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+just+got+married+and+would+like+to+update+my+emergency+contact+to+my+spouse.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+I+can+help+you+update+your+emergency+contact.%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22What+is+your+emergency+contact%27s+full+name%3F%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22John+Doe%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22If+the+HRIS+requires+first+%26+last+name+to+be+stored+separately%2C+then+the+questions+must+be+split+up.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+their+full+name+is+%5C%22John+Doe%5C%22%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22What+is+your+emergency+contact%27s+phone+number%3F%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22123-456-7890%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Phone+numbers+are+not+validated.+They+must+be+validated+by+the+iPaaS.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Thank+you+for+providing+the+phone+number.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22API+Call%3A%5CnUpdate+Emergency+Contact%5Cn%5Cn%7B%5Cn++%5C%22new_contact_phone_number%5C%22%3A+%5C%22123-456-7890%5C%22%2C%5Cn++%5C%22new_contact_name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn++%5C%22for_user%5C%22%3A+%5C%22gwen%40moveworks.ai%5C%22%5Cn%7D%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D)

# Example Use Cases
1. **Engineering**: Find on-call by Team Name
2. **Sales**: Find Opportunities by Account Name
3. **Finance**: Find invoices by vendor name

# Design Considerations

## Design time
1. Must return non-200 status code if records are not found
2. Must provide a list of sample aliases for common names to Moveworks customer support.
3. Must return a JSON dictionary from the API. (No embedded lists)
4. Must display a single record of attributes & values. Multiple records, or related records are not supported in this design pattern.

```json
# Supported
{
  "attribute1": "value1",
  "attribute2": { 
    "nested_attribute_1": "value2" 
  }
}

# Not Supported
{
  "record": [
    { "attribute1": "value1" },
    { "attribute2": { "nested_attribute_1": "value2" }}
  ]
}
```
## Run time

1. Bot will make an API call for each possible ID detected. This will give your users a more robust experience.
2. Bot will not ask for the "name" if it is omitted from the utterance
