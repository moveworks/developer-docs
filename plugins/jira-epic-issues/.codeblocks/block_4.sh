steps:
  - action:
      action_name: get_epic_key_id
      input_args:
        EPIC_NAME: data.EPIC_NAME
      output_key: get_epic_key_id_result
  - action:
      action_name: fetch_linked_jira_issues_by_epic
      input_args:
        EPIC_KEY: data.get_epic_key_id_result.issues[0].key
      output_key: fetch_linked_jira_issues_by_epic_result
  - return:
      output_mapper:
        results: data.fetch_linked_jira_issues_by_epic_result.issues
