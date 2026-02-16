curl --request POST \
  --url https://<tenantUrl>/ccx/service/<tenantName>/Absence_Management/v45.1 \
  --header 'Content-Type: text/xml; charset=utf-8' \
  --header 'SOAPAction: Get_Workers_Request' \
  --data '<?xml version="1.0" encoding="UTF-8"?>
<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <env:Header>
        <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
            <wsse:UsernameToken wsu:Id="UsernameToken-{{USERNAME_PLACEHOLDER_TOKEN}}">
                <wsse:Username>ISU_TimeOffCorrections@{{TENANT}}</wsse:Username>
                <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">{{PASSWORD}}</wsse:Password>
            </wsse:UsernameToken>
        </wsse:Security>
    </env:Header>
    <env:Body>
        <bsvc:Adjust_Time_Off_Request xmlns:bsvc="urn:com.workday/bsvc" bsvc:version="v45.1">
            <bsvc:Business_Process_Parameters>
                <bsvc:Auto_Complete>true</bsvc:Auto_Complete>
                <bsvc:Run_Now>true</bsvc:Run_Now>
            </bsvc:Business_Process_Parameters>
            <bsvc:Adjust_Time_Off_Data>
                <bsvc:Worker_Reference bsvc:Descriptor="string">
                    <bsvc:ID bsvc:type="WID">{{worker_wid}}</bsvc:ID>
                </bsvc:Worker_Reference>
                <bsvc:Adjust_Time_Off_Entry_Data>
                    <bsvc:Time_Off_Entry_ID></bsvc:Time_Off_Entry_ID>
                    <bsvc:Time_Off_Entry_Reference bsvc:Descriptor="string">
                        <bsvc:ID bsvc:type="WID">{{event_entry_wid}}</bsvc:ID>
                    </bsvc:Time_Off_Entry_Reference>
                    <bsvc:Adjustment_to_Requested>{{duration}}</bsvc:Adjustment_to_Requested>
                </bsvc:Adjust_Time_Off_Entry_Data>
            </bsvc:Adjust_Time_Off_Data>
        </bsvc:Adjust_Time_Off_Request>
    </env:Body>
</env:Envelope>
'
