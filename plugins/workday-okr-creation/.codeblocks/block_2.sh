curl --request POST \
--location 'https://<DOMAIN>.myworkday.com/service/{{TENANT}}/Performance_Management/v42.1' \
--header 'Authorization: Bearer <ACCESS TOKEN>' \
--header 'Content-Type: text/xml' \
--data '<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
              xmlns:wd="urn:com.workday/bsvc"
              xmlns:xsd="http://www.w3.org/2001/XMLSchema"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <env:Body>
    <wd:Manage_Goals_Request>
      <wd:Manage_Goals_Data>
        <wd:Worker_Reference>
          <wd:ID wd:type="WID">{{WORKER_ID}}</wd:ID>
        </wd:Worker_Reference>
        <wd:Worker_Goal_Detail_Data>
          <wd:Name>{{GOAL_NAME}}</wd:Name>
          <wd:Description>{{GOAL_DESCRIPTION}}</wd:Description>
          <wd:Due_Date>{{DUE_DATE}}</wd:Due_Date >
        </wd:Worker_Goal_Detail_Data>
      </wd:Manage_Goals_Data>
    </wd:Manage_Goals_Request>
  </env:Body>
</env:Envelope>'
