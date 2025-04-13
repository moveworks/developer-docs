steps:
  - action:
      action_name: fetch_user_details
      input_args:
        email: meta_info.user.email_addr
      output_key: fetch_user_details_result
  - action:
      action_name: get_candidate_details_by_email
      input_args:
        candidate_email: data.candidate_email
      output_key: get_candidate_details_by_email_result
  - script:
      output_key: filtered_referrals
      input_args:
        user_id: data.fetch_user_details_result.id
        candidate_data: data.get_candidate_details_by_email_result
      code: >
        filtered_referrals = []

        candidate_data = candidate_data[0] if candidate_data and ("applications" in candidate_data[0]) else candidate_data or {}

        applications = candidate_data.get("applications",[])

        for application in applications:
          source_name = application.get("source", {}).get("public_name", "N/A")
          credited_to = application.get("credited_to", {}).get("id", None)
          first_name = candidate_data.get("first_name", "Unknown")
          last_name = candidate_data.get("last_name", "Unknown")

          if source_name == "Referral" and credited_to == user_id:
            filtered_referrals.append({
              "first_name": first_name,
              "last_name": last_name,
              "job_name": application["jobs"][0]["name"] if application.get("jobs") else "N/A",
              "last_activity_at": application.get("last_activity_at", "N/A"),
              "status": application.get("status", "N/A"),
              "current_stage": application.get("current_stage", {}).get("name", "N/A")
            })
        return filtered_referrals
  - return:
      output_mapper:
        Referred_Candidate_Updates: data.filtered_referrals
