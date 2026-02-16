steps:
  # --- Generate Page Indices to Fetch Users ---
  - script:
      output_key: page_indices
      input_args:
        max_pages: data.max_pages
      code: |
        # Default to 2 if input is missing or 0
        limit = int(max_pages) if max_pages else 2
        return list(range(limit))  

  # 1. Fetch All Users via Pagination (200 per page)
  - parallel:
      for:
        each: page
        index: page_idx
        in: data.page_indices
        output_key: paginated_user_responses
        steps:
          - action:
              action_name: UKG_Get_All_Users
              input_args:
                index: $TEXT(page)
                count: "'200'"
                date: $TIME().$FORMAT_TIME('%Y-%m-%d')
              output_key: page_data

  # --- OUTER LOOP: BATCH PROCESSING LOOP ---
  - for:
      each: page_response
      in: data.paginated_user_responses.$FILTER(item => item != null)
      output_key: batch_response_data
      steps:
        # 2. Fetch Bulk Notifications for List of Employees
        - action:
            action_name: UKG_Fetch_Bulk_Notifications_For_Employee_List
            input_args:
              start_date_time: data.start_date
              end_date_time: data.end_date
              ids:
                EVAL():
                  expression: ids_list.$STRINGIFY_JSON()
                  args:
                    ids_list: page_response.page_data.records.$MAP(item => item.personId)
            output_key: bulk_notifications_response
            
        # --- INNER LOOP: Process Records ---
        - parallel:
            for:
              each: record
              in: data.bulk_notifications_response.notifications
              output_key: records_loop_result
              steps:
                # 3. Filter
                - switch:
                    cases:
                      # Logic: Check for Submitted PTOs that are actionable for managers/approvers
                      - condition: >-
                          record.type == 'TIME_OFF' AND record.reviewed == false AND record.status == 'Submitted' AND disableActions == false AND category == "REQUEST"
                        steps:
                          # 4a. Get User Details (The Manager/Approver)
                          - action:
                              action_name: UKG_Lookup_User_by_ID
                              input_args:
                                personId: record.receiverId
                              output_key: ukg_person_details

                          # 4b. Extract Work Email
                          - action:
                              action_name: UKG_Fetch_Email_Using_ID
                              input_args:
                                ukg_data: data.ukg_person_details
                              output_key: email_data

                          # 4c. Resolve Moveworks User
                          - action:
                              action_name: mw.batch_get_users_by_email
                              input_args:
                                user_emails:
                                  - data.email_data.work_email
                              output_key: batch_user_info
                          - for:
                              each: recipient
                              in: data.batch_user_info.user_records
                              output_key: batch_notification_results
                              steps:
                                # 6. Notify the Manager with Actions (Approve/Reject)
                                - notify:
                                    output_key: notification_result
                                    recipient_id: recipient.user.record_id
                                    message:
                                      RENDER():
                                        template: |
                                          *Approval Action Required: New PTO Request Submission*

                                          {{employee_name}} has submitted a request for {{leave_type}}.
                                                
                                          *Dates:* {{dates}}
                                          *Duration:* {{duration}}
                                          *Reason:* {{reason}}
                                          
                                          *Note:* If you want to reject this request, please provide a comment.
                                        args:
                                          employee_name: record.requesterName
                                          leave_type: record.subtype
                                          dates: record.requestedPeriods
                                          duration: record.duration
                                          reason: record.shortMessage
                                    actions:
                                      - key: approve
                                        label: "'Approve'"
                                        conversation_action:
                                          conversation_process_name: "UKG_Approve_Refuse_Pending_PTO_Requests_CP"
                                          input_args:
                                            ptos: 
                                              - pto_id: record.requestId
                                                pto_decision: '"Approved"'
                                      - key: reject
                                        label: "'Reject'"
                                        conversation_action:
                                          conversation_process_name: "UKG_Approve_Refuse_Pending_PTO_Requests_CP"
                                          input_args:
                                            ptos:
                                              - pto_id: record.requestId
                                                pto_decision: '"Refused"'

                                # 7. Auto-Acknowledge in UKG so that users don't receive the same notification again
                                - action:
                                    action_name: UKG_Acknowledge_Notifications
                                    input_args:
                                      ids: record.uuid
                                    output_key: ack_response
