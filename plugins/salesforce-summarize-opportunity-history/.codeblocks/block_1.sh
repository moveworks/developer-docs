Account.Name LIKE '%{{Account_Name}}%' AND CreatedDate >= {{from_date.$SPLIT("T")[0]}}T00:00:00Z AND CreatedDate <= {{to_date.$SPLIT("T")[0]}}T23:59:59Z
