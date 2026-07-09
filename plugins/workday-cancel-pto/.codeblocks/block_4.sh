curl \
  -X POST \
  -H 'Content-Type: text/xml; charset=utf-8' \
  -H 'SOAPAction: Get_Workers_Request' \
  -d '<?xml version="1.0" encoding="UTF-8"?>
<env:Envelope
	xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<env:Header>
		<wsse:Security
			xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
			xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
			<wsse:UsernameToken wsu:Id="UsernameToken-{{USERNAME_PLACEHOLDER_TOKEN}}">
				<wsse:Username>ISU_TimeOffCorrections@{{TENANT}}</wsse:Username>
				<wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">{{PASSWORD}}</wsse:Password>
			</wsse:UsernameToken>
		</wsse:Security>
	</env:Header>
	<env:Body>
		<bsvc:Cancel_Business_Process_Request
			xmlns:bsvc="urn:com.workday/bsvc" bsvc:version="v45.1">
			<bsvc:Event_Reference bsvc:Descriptor="string">
				<!-- Zero or more repetitions: -->
				<bsvc:ID bsvc:type="WID">{{event_wid}}</bsvc:ID>
			</bsvc:Event_Reference>
			<!-- Optional: -->
			<bsvc:Cancel_Business_Process_Data>
				<!-- Optional: -->
				<bsvc:Comment>{{comment}}</bsvc:Comment>
				<!-- Optional: -->
				<bsvc:Suppress_Notifications>false</bsvc:Suppress_Notifications>
			</bsvc:Cancel_Business_Process_Data>
		</bsvc:Cancel_Business_Process_Request>
	</env:Body>
</env:Envelope>' \
  'https://<tenantUrl>/ccx/service/<tenantname>/Integrations/v45.1'
