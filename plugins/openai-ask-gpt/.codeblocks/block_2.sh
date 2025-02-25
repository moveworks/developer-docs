steps:
  - action:
      output_key: search_openai_based_on_query_result
      action_name: search_openai_based_on_query
      progress_updates:
        on_complete: Completed fetching required information
        on_pending: Fetching required information
      input_args:
        user_query: data.value
  - return:
      output_mapper:
        result: data.search_openai_based_on_query_result
