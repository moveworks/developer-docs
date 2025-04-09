steps:
  - action:
      output_key: edit_expense_entry_details_result
      action_name: edit_expense_entry_details
      progress_updates:
        on_complete: Updated the expense entry with requested details
        on_pending: Updating the specified expense entry
      input_args:
        user_email: meta_info.user.email_addr
        expenseID: data.expenseID
        TransactionDate: data.TransactionDate
        BusinessPurpose: data.BusinessPurpose
        TransactionCurrencyCode: data.TransactionCurrencyCode
        TransactionAmount: data.TransactionAmount
        ExchangeRate: data.ExchangeRate
  - return:
      output_mapper:
        update_expense_entries: data.edit_expense_entry_details_result
