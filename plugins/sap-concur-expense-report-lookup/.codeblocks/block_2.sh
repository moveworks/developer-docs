steps:
  - action:
      action_name: fetch_all_expense_reports_for_a_user
      input_args:
        user_email: meta_info.user.email_addr
      output_key: fetch_all_expense_reports_for_a_user_result
  - script:
      output_key: expense_reports
      input_args:
        res: data.fetch_all_expense_reports_for_a_user_result
      code: |
        expense_reports = []
        for item in res["Items"]:
                details = {
                    "Expense Report Name": item["Name"],
                    "Total Amount": f"${item['Total']:.2f}",
                    "Approval Status": item["ApprovalStatusName"],
                    "Date": item["SubmitDate"],
                    "ExpenseID": item["ID"]
                }
                expense_reports.append(details)
        return expense_reports
  - return:
      output_mapper:
        all_expense_reports: data.expense_reports
