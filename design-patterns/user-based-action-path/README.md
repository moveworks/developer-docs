---
id: 2
name: User-Based Action Path
description: Users need to update or submit information using their context.
workspace: paths
purple_chat_link: https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+just+got+married+and+would+like+to+update+my+emergency+contact+to+my+spouse.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+I+can+help+you+update+your+emergency+contact.%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22What+is+your+emergency+contact%27s+full+name%3F%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22John+Doe%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22If+the+HRIS+requires+first+%26+last+name+to+be+stored+separately%2C+then+the+questions+must+be+split+up.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+their+full+name+is+%5C%22John+Doe%5C%22%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22What+is+your+emergency+contact%27s+phone+number%3F%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22123-456-7890%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Phone+numbers+are+not+validated.+They+must+be+validated+by+the+iPaaS.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Thank+you+for+providing+the+phone+number.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22API+Call%3A%5CnUpdate+Emergency+Contact%5Cn%5Cn%7B%5Cn++%5C%22new_contact_phone_number%5C%22%3A+%5C%22123-456-7890%5C%22%2C%5Cn++%5C%22new_contact_name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn++%5C%22for_user%5C%22%3A+%5C%22gwen%40moveworks.ai%5C%22%5Cn%7D%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 30
difficulty_level: Intermediate
---

# What does this pattern do?

Change personal structured data within a system, and inform the user if it succeeded or failed based on the user details.

[View Purple Chat](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+just+got+married+and+would+like+to+update+my+emergency+contact+to+my+spouse.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+I+can+help+you+update+your+emergency+contact.%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22What+is+your+emergency+contact%27s+full+name%3F%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22John+Doe%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22If+the+HRIS+requires+first+%26+last+name+to+be+stored+separately%2C+then+the+questions+must+be+split+up.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+their+full+name+is+%5C%22John+Doe%5C%22%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22What+is+your+emergency+contact%27s+phone+number%3F%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22123-456-7890%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Phone+numbers+are+not+validated.+They+must+be+validated+by+the+iPaaS.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Thank+you+for+providing+the+phone+number.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22API+Call%3A%5CnUpdate+Emergency+Contact%5Cn%5Cn%7B%5Cn++%5C%22new_contact_phone_number%5C%22%3A+%5C%22123-456-7890%5C%22%2C%5Cn++%5C%22new_contact_name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn++%5C%22for_user%5C%22%3A+%5C%22gwen%40moveworks.ai%5C%22%5Cn%7D%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D)

# Example Use Cases

1. **HR**: Update my emergency contacts
2. **Operations**: Register myself for a company event
3. **Sales**: Create a new lead assigned to me
4. **Security**: Reset MFA for user

# Design Considerations

## Design time

1. May collect any amount of either [text](https://developer.moveworks.com/creator-studio/paths/question-configuration/#1-free-input-question) or [multiple choice questions](https://developer.moveworks.com/creator-studio/paths/question-configuration/#2-multiple-choices-question) (less than 12 options)
2. May [consume user's email address](https://developer.moveworks.com/creator-studio/api-configuration/#paths-access-user-email-in-api) in the Path.
3. Must handle any validation in [automation tools](https://developer.moveworks.com/creator-studio/automation-tools). Free text will be provided.

## Run time

- Bot will ask all questions sequentially & will not "shortcut"
- Bot will only inform the user if the API action succeeded or failed.
