steps:
  - action:
      output_key: get_software_license_details
      action_name: get_software_license_inventory_servicenow
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
            total_allocations: item.rights
            allocations_available: item.allocations_available
          items: data.get_software_license_details.result
