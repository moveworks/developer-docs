curl -X POST "<tenantUrl>/ccx/service/<tenantName>/Integrations/v41.2" \
  -H "Content-Type: text/xml" \
  -d "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' 
  xmlns:bsvc='urn:com.workday/bsvc'><soapenv:Body><bsvc:Deny_Business_Process_Request 
  bsvc:version='v41.2'><bsvc:Event_Reference><bsvc:ID bsvc:type='WID'>{{event_wid}}</bsvc:ID></bsvc:Event_Reference><bsvc:Deny_Business_Process_Data><bsvc:Comment>{{comment}}</bsvc:Comment></bsvc:Deny_Business_Process_Data></bsvc:Deny_Business_Process_Request></soapenv:Body></soapenv:Envelope>"
