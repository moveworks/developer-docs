steps:
  - action:
      output_key: search_for_specificed_issue_result
      action_name: search_for_specificed_issue
      progress_updates:
        on_complete: Completed fetching all related issues
        on_pending: Fetching all related issues
      input_args:
        keyword: data.keyword
  - return:
      output_mapper:
        results: data.search_for_specificed_issue_result.issues
