curl --location --request POST 'https://<YOUR_DOMAIN>/service/<INSTANCE_ID>/Recruiting/v42.1' \
--header 'Content-Type: application/xml' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '<env:Envelope xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:wsdl="urn:com.workday/bsvc"
    xmlns:env="http://schemas.xmlsoap.org/soap/envelope/">
    <env:Body>
        <wsdl:Get_Candidates_Request>
            <wsdl:Request_Criteria>
                <wsdl:First_Name>{{FIRST_NAME}}</wsdl:First_Name>
                <wsdl:Last_Name>{{LAST_NAME}}</wsdl:Last_Name>
            </wsdl:Request_Criteria>
        </wsdl:Get_Candidates_Request>
    </env:Body>
</env:Envelope>'

