# PR #4: Deprecated Fields Cleanup Summary

## Overview
This document summarizes the deprecated fields that need to be removed during the V2 to V3 schema migration. These fields are no longer supported in V3 and will cause validation failures.

## Deprecated Fields Summary

### Total Files Affected: 889 unique files

| Field | Count | Notes |
|-------|-------|-------|
| `domain` | 729 | Migrated to `solution_tags` in config.yaml |
| `fidelity` | 889 | V2 field being removed entirely |
| `difficulty_level` | 282 | V2 field being removed entirely |
| `time_in_minutes` | 282 | V2 field being removed entirely |
| `accreditations` | 44 | V2 field being removed entirely |
| `custom_tags` | 28 | **Needs migration** to `agent_capabilities` |
| `design_pattern_id` | 8 | Internal field no longer used |
| `drop_accreditations` | 0 | Not found in current files |
| `installation_link` | 0 | Not found in current files |
| `num_implementations` | 0 | Not found in current files |

## Custom Tags Migration Analysis

**CRITICAL**: All 28 files with `custom_tags` use the SAME value: **"Polling Required"**

### Migration Action Required
For each file with `custom_tags: ["Polling Required"]`:
1. Remove the `custom_tags` field entirely
2. Add `"Ambient Agent"` to the `agent_capabilities` array
3. If `agent_capabilities` doesn't exist, create it: `agent_capabilities: ["Ambient Agent"]`

### Files Requiring Custom Tags Migration (28 total)

#### Polling-Based Notification/Approval Plugins:
- `./plugins/clari-forecast-reminder-updates/README.md`
- `./plugins/coupa-purchase-request-approval-action/README.md`
- `./plugins/github-public-outage/README.md`
- `./plugins/jira-agent-nudge/README.md`
- `./plugins/jira-approvals/README.md`
- `./plugins/jira-notify-feature-release/README.md`
- `./plugins/manage-engine-sdp-ticket-approvals/README.md`
- `./plugins/microsoft-entra-contractor-expiry-reminders/README.md`
- `./plugins/sailpoint-iiq-approve-role-entitlement-requests/README.md`
- `./plugins/salesforce-renewal-notifications/README.md`
- `./plugins/sap-ariba-act-on-project-notifications/README.md`
- `./plugins/sap-ariba-purchase-order-approval-notifications/README.md`
- `./plugins/sap-concur-approve-expense-report/README.md`
- `./plugins/sap-concur-notify-purchase-order-approval/README.md`
- `./plugins/sap-concur-send-expense-report-approvals/README.md`
- `./plugins/sap-success-factors-training-reminders/README.md`
- `./plugins/servicenow-approval-reminders/README.md`
- `./plugins/servicenow-notify-assigned-hr-case/README.md`
- `./plugins/servicenow-notify-hardware-refresh/README.md`
- `./plugins/smartsheet-get-comment-notifications/README.md`
- `./plugins/workday-direct-deposit-notification/README.md`
- `./plugins/workday-employee-transfer/README.md`
- `./plugins/workday-payroll-case-notification/README.md`
- `./plugins/workday-renew-a-contractor/README.md`
- `./plugins/workday-time-off-approved-notification/README.md`
- `./plugins/workday-time-off-request-approval/README.md`
- `./plugins/workday-training-due/README.md`
- `./plugins/workday-training-reminders/README.md`

## Implementation Strategy

### Option 1: Manual Cleanup (Original Plan)
Manually edit each file to remove deprecated fields. This is EXTREMELY tedious given 889 files are affected.

**Pros**:
- Full control over each change
- Can review each file individually

**Cons**:
- 889 files to manually edit
- High chance of human error
- Very time consuming
- Doesn't scale

### Option 2: Automated Migration Script (RECOMMENDED)
Create `ci/migrate_to_v3.py` script that automatically removes deprecated fields and migrates custom_tags.

**Pros**:
- Fast and consistent
- Can be tested on dry-run mode first
- Scales to all 889 files
- Can be re-run if needed
- Will be needed for PR #7 anyway

**Cons**:
- Need to carefully test before applying

## Recommendation

**SKIP manual cleanup in PR #4** and proceed directly to **PR #5: Create Migration Script**.

The migration script will handle:
- Removing all deprecated fields automatically
- Migrating `custom_tags: ["Polling Required"]` → `agent_capabilities: ["Ambient Agent"]`
- Preserving existing `agent_capabilities` when present
- Other auto-fix capabilities (description format, YAML formatting, etc.)

Then in PR #7, we'll run the migration script across all 889 files in one go (big bang approach).

## Next Steps

1. ✅ **PR #4 Part 1**: Create `generate_cleanup_report.py` (DONE)
2. ✅ **PR #4 Part 2**: Document findings in this summary (DONE)
3. ⏭️ **Skip to PR #5**: Create `ci/migrate_to_v3.py` with automated fixes
4. ⏭️ **PR #6**: Run big bang migration on all 889 files
5. ⏭️ **PR #7**: Create auto-fix GitHub workflow (after migration is complete)
6. ⏭️ **PR #8**: Update documentation and templates

This approach is more efficient and less error-prone than manual cleanup. The auto-fix workflow (PR #7) comes AFTER the big bang migration (PR #6) so it can help maintain the v3 schema going forward.
