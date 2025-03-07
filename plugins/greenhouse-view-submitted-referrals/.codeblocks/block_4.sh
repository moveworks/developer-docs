steps:
  - action:
      action_name: fetch_all_applications
      input_args:
        last_activity_after: data.last_activity_after
      output_key: fetch_all_applications_result
  - script:
      output_key: filtered_referrals
      input_args:
        applications: data.fetch_all_applications_result
      code: >
        filtered_referrals = []

        for application in applications:
          source_name = application.get("source", {}).get("public_name", "N/A")
          credited_to = application.get("credited_to", {})

          if source_name == "Referral":
            filtered_referrals.append({
              "candidate_id": application["candidate_id"],
              "referrer_name": application.get("credited_to", {}).get("name", "N/A"),
              "job_name": application["jobs"][0]["name"] if application.get("jobs") else "N/A",
              "last_activity_at": application.get("last_activity_at", "N/A"),
              "status": application.get("status", "N/A"),
              "current_stage": application.get("current_stage", {}).get("name", "N/A")
            })
        return filtered_referrals
  - for:
      each: referral
      steps:
        - action:
            action_name: fetch_candidate_details
            input_args:
              candidate_id: referral.candidate_id
            output_key: fetch_candidate_details_result
        - script:
            output_key: enriched_referral
            input_args:
              referral: referral
              candidate: data.fetch_candidate_details_result
            code: |
              candidate = candidate or {}

              first_name = candidate.get("first_name", "Unknown")
              last_name = candidate.get("last_name", "Unknown")

              return {
                "first_name": first_name,
                "last_name": last_name,
                "referrer_name": referral["referrer_name"],
                "job_name": referral["job_name"],
                "last_activity_at": referral["last_activity_at"],
                "status": referral["status"],
                "current_stage": referral["current_stage"]
              }
      index: referral_index
      in: data.filtered_referrals
      output_key: final_referral_statuses
  - for:
      each: referral_entry
      steps:
        - try_catch:
            catch:
              on_status_code:
                - 500
              steps:
                - script:
                    output_key: merged_referral
                    input_args:
                      enriched_referral: referral_entry.enriched_referral
                    code: |
                      enriched_referral["first_name"] = "Unknown"
                      enriched_referral["last_name"] = "Unknown"
                      return enriched_referral
            try:
              steps:
                - script:
                    output_key: merged_referral
                    input_args:
                      candidate_details: referral_entry.fetch_candidate_details_result
                      enriched_referral: referral_entry.enriched_referral
                    code: >
                      enriched_referral["first_name"] = candidate_details["first_name"]

                      enriched_referral["last_name"] = candidate_details["last_name"]

                      attachments = candidate_details.get("attachments", [])

                      resume_url = "Not Available"

                      for attachment in attachments:
                        if attachment.get("type") == "resume":
                          resume_url = attachment.get("url", "Not Available")
                      enriched_referral["resume_url"] = resume_url

                      return enriched_referral
      index: merged_index
      in: data.final_referral_statuses
      output_key: fully_merged_referrals
  - return:
      output_mapper:
        Referred_Candidate_Updates: data.fully_merged_referrals
