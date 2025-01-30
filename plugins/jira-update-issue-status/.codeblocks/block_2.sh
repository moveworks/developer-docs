steps:
  - action:
      output_key: update_the_issue_status_result
      action_name: update_the_issue_status
      progress_updates:
        on_complete: Completed updating the issue status
        on_pending: Updating the issue status
      input_args:
        issue_key: data.issue_key
        status_id: data.status_id
  - return:
      output_mapper:
        result: data.update_the_issue_status_result
