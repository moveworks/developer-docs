curl --location 'https://<API_SERVER_DOMAIN>/service/<TENANT>/Performance_Management/v44.1' \
--header 'Content-Type: application/xml' \
--data '<?xml version="1.0" encoding="UTF-8"?>
<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
              xmlns:wd="urn:com.workday/bsvc"
              xmlns:xsd="http://www.w3.org/2001/XMLSchema"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <env:Body>
    <wd:Manage_Goals_Request>
      <wd:Manage_Goals_Data>
        <wd:Worker_Reference>
          <wd:ID wd:type="WID">{{worker_id}}</wd:ID>
        </wd:Worker_Reference>
        <wd:Worker_Goal_Detail_Data>
          <wd:Name>{{goal_name}}</wd:Name>
          <wd:Description>{{goal_description}}</wd:Description>
          <wd:Due_Date>{{due_date}}</wd:Due_Date>
        </wd:Worker_Goal_Detail_Data>
      </wd:Manage_Goals_Data>
    </wd:Manage_Goals_Request>
  </env:Body>
</env:Envelope>'

