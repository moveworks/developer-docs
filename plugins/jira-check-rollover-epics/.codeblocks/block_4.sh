steps:
  - action:
      action_name: search_for_inprogress_epic_issues
      output_key: search_result
  - script:
      output_key: filtered_epics
      input_args:
        issues: data.search_result.issues
      code: >
        filtered = []

        for issue in issues:
          summary = issue["fields"]["summary"]
          key = issue["key"]
          duedate = issue["fields"].get("duedate")
          if duedate:
            filtered.append({"epic_name": summary, "key": key, "current_duedate": duedate})
        return filtered
  - for:
      each: epic
      steps:
        - action:
            action_name: fetch_changelog_for_inprogress_epic_issues
            input_args:
              issue_key: epic.key
            output_key: changelog_result
      index: epic_index
      in: data.filtered_epics
      output_key: changelog_data
  - script:
      output_key: extracted_changelog_data
      input_args:
        changelog_data: data.changelog_data
      code: |
        return [entry["changelog_result"] for entry in changelog_data]
  - script:
      output_key: rolled_over_epics
      input_args:
        changelog_data: data.extracted_changelog_data
        filtered_epics: data.filtered_epics
      code: |
        rolled_over = []
        for i in range(len(changelog_data)):
          changelog = changelog_data[i]
          epic = filtered_epics[i]
          issue_details = changelog.get("values", [])
          if not issue_details:
            continue
          latest_due_date_change = None
          for values in issue_details:
            for item in values.get("items", []):
              if item.get("field") == "duedate" and item.get("from"):
                latest_due_date_change = item.get("from")
          if latest_due_date_change:
            rolled_over.append({
              "epic_name": epic["epic_name"],
              "key": epic["key"],
              "previous_due_date": latest_due_date_change,
              "current_due_date": epic["current_duedate"]
            })
        return rolled_over
  - return:
      output_mapper:
        Delayed_epics: data.rolled_over_epics
