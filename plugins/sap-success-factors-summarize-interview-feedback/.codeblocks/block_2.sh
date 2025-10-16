curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/JobApplication?$filter=(candidateId eq {{CANDIDATE_ID}} and jobReqId eq {{JOB_REQ_ID}})&$select=firstName,lastName,currentTitle,candidateId,jobReqId,applicationId,jobApplicationComments,rating,averageRating,managerRating&$expand=jobRequisition/jobReqLocale,jobApplicationComments/commentatorNav/competencyRatingNav,managerRating&$format=json' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>'
