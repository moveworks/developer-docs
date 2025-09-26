curl --location 'https://<API_SERVER_DOMAIN>/ccx/service/<TENANT>/Recruiting/v44.1' \
--header 'Content-Type: text/xml' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data-raw '<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:wd="urn:com.workday/bsvc">
    <env:Header/>
    <env:Body>
      <wd:Get_Job_Postings_Request wd:version="v44.1">
        <wd:Request_Criteria>
          <wd:Job_Posting_Site_Reference>
            <wd:ID wd:type="Job_Posting_Site_ID">INT</wd:ID>
          </wd:Job_Posting_Site_Reference>
          <wd:Show_Only_Active_Job_Postings>true</wd:Show_Only_Active_Job_Postings>
        </wd:Request_Criteria>  
        <wd:Response_Filter>
          <wd:Page>1</wd:Page>
          <wd:Count>30</wd:Count>
        </wd:Response_Filter>       
        <wd:Response_Group>
          <wd:Include_Reference>true</wd:Include_Reference>
        </wd:Response_Group>
      </wd:Get_Job_Postings_Request>
    </env:Body>
  </env:Envelope>'
