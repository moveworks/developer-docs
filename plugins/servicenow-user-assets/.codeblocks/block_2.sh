steps:
  - action:
      output_key: get_my_assets_details_servicenow_result
      action_name: get_my_assets_details_servicenow
      progress_updates:
        on_complete: Completed fetching asset details for user
        on_pending: Fetching asset details for user
      input_args:
        email_addr: meta_info.user.email_addr
  - return:
      output_mapper:
        MAP():
          converter:
            display_name: item.display_name
            model_category.name: item.model_category.name
            asset_tag: item.asset_tag
          items: data.get_my_assets_details_servicenow_result.result
