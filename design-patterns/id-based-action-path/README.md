---
id: 20
name: Id-Based Action Path
description: Take an action on a business object, referencing the ID of the object.
workspace: paths
purple_chat_link: https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+just+got+off+a+call+with+a+vendor+and+we+need+to+add+some+funds+to+their+PO.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Which+PO+do+you+need+to+add+funds+to%3F%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22PO123%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22What%27s+the+new+dollar+value+of+the+PO%3F%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%244567.89%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EInbound+Request+to+Middleware%3A%3Cbr%3E%3Cbr%3E%7B%3Cbr%3E%5C%22purchase_order%5C%22%3A+%5C%22PO123%5C%22%2C%3Cbr%3E%5C%22funds%5C%22%3A+%5C%22%244567.89%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EProcess%3A%3Cbr%3E1.+Validate+PO123+exists+in+System+X%3Cbr%3E2.+Parse+%5C%22funds%5C%22+as+cents%3Cbr%3E3.+Add+the+funds+to+PO123%3Cbr%3E%3Cbr%3EOutbound+Response%3A%3Cbr%3E%7B%5C%22status%5C%22%3A+%5C%22ok%5C%22%7D%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Thanks.+I%27ve+submitted+your+request+for+more+funds+to+be+added+to+that+purchase+order.%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 15
difficulty_level: Beginner
---

# What does this pattern do?

Update specific business records within a system by specifying their ID & the details of the change. Inform the user about any success or fail.

[View Purple Chat](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+just+got+off+a+call+with+a+vendor+and+we+need+to+add+some+funds+to+their+PO.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Which+PO+do+you+need+to+add+funds+to%3F%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22PO123%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22What%27s+the+new+dollar+value+of+the+PO%3F%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%244567.89%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EInbound+Request+to+Middleware%3A%3Cbr%3E%3Cbr%3E%7B%3Cbr%3E%5C%22purchase_order%5C%22%3A+%5C%22PO123%5C%22%2C%3Cbr%3E%5C%22funds%5C%22%3A+%5C%22%244567.89%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EProcess%3A%3Cbr%3E1.+Validate+PO123+exists+in+System+X%3Cbr%3E2.+Parse+%5C%22funds%5C%22+as+cents%3Cbr%3E3.+Add+the+funds+to+PO123%3Cbr%3E%3Cbr%3EOutbound+Response%3A%3Cbr%3E%7B%5C%22status%5C%22%3A+%5C%22ok%5C%22%7D%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Thanks.+I%27ve+submitted+your+request+for+more+funds+to+be+added+to+that+purchase+order.%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D)

# Example Use Cases

1. **Finance**: Add funds to a purchase order
2. **T&E**: Cancel a flight booking
3. **Project Management**: Mark Jira ticket as complete

# Design Considerations

## Design time

1. Start in the Paths workspace.
2. Start collecting slots from your user. You can collect any of our [slot types](https://developer.moveworks.com/creator-studio/paths/slot-types/)
3. Set up an [API Action](https://developer.moveworks.com/creator-studio/api-configuration/). All your slots and any [user attributes](https://developer.moveworks.com/creator-studio/user-attributes-reference/) will be available.
4. Run any additional validation in your [automation tools](https://developer.moveworks.com/creator-studio/automation-tools).
5. Set up your generative intent & launch rules.


## Run time

- Your copilot will assume the name or ID is an exact match
- Your copilot will ask all questions sequentially & will not "shortcut"
- Your copilot will only inform the user if the API action succeeded or failed.
