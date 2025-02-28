steps:
  - action:
      output_key: get_license_renewal_date_servicenow_result
      action_name: get_license_renewal_date_servicenow
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        software_license_name: data.software_license_name
  - return:
      output_mapper:
        MAP():
          converter:
            software_name: item.display_name
            end_date: item.end_date
          items: data.get_license_renewal_date_servicenow_result.result
