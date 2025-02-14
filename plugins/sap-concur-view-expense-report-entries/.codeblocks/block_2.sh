steps:
  - action:
      action_name: fetch_all_expense_entries_of_a_specific_report
      input_args:
        user_email: meta_info.user.email_addr
        report_id: data.report_id
      output_key: fetch_all_expense_entries_of_a_specific_report_result
  - script:
      output_key: expense_report_entries
      input_args:
        res: data.fetch_all_expense_entries_of_a_specific_report_result
      code: |
        expense_report_entries = []
        for item in res.get("Items", []):
          details = {
            "ExpenseID": item.get("ExpenseID"),
            "ID": item.get("ID"),
            "ExpenseTypeName": item.get("ExpenseTypeName"),
            "TransactionAmount": item.get("TransactionAmount"),
            "TransactionDate": item.get("TransactionDate"),
            "ExchangeRate": item.get("ExchangeRate")
            }
          expense_report_entries.append(details)
        expense_report_entries
  - return:
      output_mapper:
        all_expense_entries: data.expense_report_entries
