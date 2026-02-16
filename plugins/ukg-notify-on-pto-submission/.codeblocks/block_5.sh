# 1. Initialize variables
# 'ukg_data' is injected automatically because you defined it in Input Args
safe_data = ukg_data if ukg_data else {}

# 2. Navigate to the email list safely
person_info = safe_data.get("personInformation", {})
emails = person_info.get("emailAddresses", [])

# 3. Find the email where contactTypeName == 'Work'
work_email = None

if isinstance(emails, list):
    for email_obj in emails:
        if email_obj.get("contactTypeName") == "Work":
            work_email = email_obj.get("address")
            break

# 4. The last line is the Return Value
{"work_email": work_email}
