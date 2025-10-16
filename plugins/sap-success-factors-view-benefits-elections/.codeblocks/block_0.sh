curl --location 'https://<YOUR_INSTANCE>/odata/v2/BenefitEnrollment?$expand=benefitNav,workerIdNav&$select=id,effectiveStartDate,effectiveStatus,benefit,externalName,benefitNav/benefitType,workerIdNav/email&$orderby=effectiveStartDate desc&$filter=workerIdNav/email eq '{{userEmail}}' and substringof(tolower('{{benefitType}}'), tolower(benefitNav/benefitType))' \
--header 'Authorization: Bearer ACCESS_TOKEN' \
--header 'Accept: application/json'
