steps:
  - action:
      output_key: get_cost_center_by_name_result
      action_name: get_cost_center_ID_by_name
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        cost_center_name: data.cost_center
  - return:
      output_mapper:
        cost_center_id: data.get_cost_center_by_name_result
