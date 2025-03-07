steps:
  - action:
      output_key: get_expense_report_details_of_user_result
      action_name: get_expense_report_details_of_user
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        user_email_id: meta_info.user.email_addr
  - return:
      output_mapper:
        MAP():
          converter:
            total: item.total
            id: item.id
            expense_lines: item["expense-lines"]
            expense_report_created_at: item["created-at"]
            title: item.title
            expense_report_updated_at: item["updated-at"]
            status: item.status
            expense_type: item["type-of-expense"]
          items: data.get_expense_report_details_of_user_result
