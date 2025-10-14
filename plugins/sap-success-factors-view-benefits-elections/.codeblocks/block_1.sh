curl --location 'https://<YOUR_INSTANCE>/odata/v2/BenefitEnrollment?$filter=workerIdNav/email eq '{{userEmail}}' and benefit eq '{{benefitId}}'&$orderby=createdDateTime desc&$top=1&$expand=benefitNav,workerIdNav,benefitInsurancePlanEnrollmentDetails,benefitInsurancePlanEnrollmentDetails/planNav,benefitInsurancePlanEnrollmentDetails/coverageNav,benefitInsurancePlanEnrollmentDetails/providerNav,schedulePeriodNav,currencyNav' \
--header 'Authorization: Bearer ACCESS_TOKEN' \
--header 'Accept: application/json'
