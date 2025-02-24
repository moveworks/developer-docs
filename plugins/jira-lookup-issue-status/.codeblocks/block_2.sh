steps:
  - action:
      action_name: get_available_transitions
      input_args:
        issue_key: data.issue_key
      output_key: get_available_transitions_result
  - script:
      output_key: OUTPUT_KEY
      input_args:
        res: data.get_available_transitions_result
      code: >
        filtered_transitions = []

        filtered_transitions = [{"name": transition["name"], "id": transition["id"]} for transition in res["transitions"]]

        return filtered_transitions
  - return:
      output_mapper:
        results: data.OUTPUT_KEY
