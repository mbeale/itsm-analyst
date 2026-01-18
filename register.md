---
title: Fact Register
summary: Inbox for new facts and information to be processed and distributed to appropriate files.
last_updated: 2026-01-16
status: Active
---

# Fact Register

This file captures new facts for later processing. Add facts here using "add a fact" or similar commands. Periodically process this register to update related files throughout the project.

## Unprocessed Facts

- [2026-01-16] Q1 Roadmap for AI features (Source: User):
    - ITSM-44479: new model Support PHI data masking (Released)
    - ITSM-53726: GenAI Operations Management (In Progress)
    - ITSM-54719: Extend Ticket Description for Resolutions (GenAI) to Advanced Customers (In Progress)
    - ITSM-47558: GenAI: Auto generate Process/Runbook from Solutions (Released)
    - ITSM-54674: Q1/Phase 1/ AI Tone Enhancer (Ready for Estimation)
    - Owners: @Ramana Valluri, @Rounak Khandelwal (Deactivated)

- [2026-01-16] Q1 Roadmap for Integrations and Automations (Source: User):
    - ITSM-52954: Variable replacement enhancements, Phase 1: Support var replacement for all custom fields and built-in fields in process integration, address top bugs (Released)
    - ITSM-54693: Variable Replacement Enhancements - Phase 2: Extend coverage to Automations, Runbooks, Change Processes, Service Request Titles and All Actions (In Progress)
    - ITSM-52262: Workflow Visualization and Augmentation (Ready For Testing)
    - ITSM-55743: Intune Integration - Fetch Software Assets to SWSD (Ready for Estimation)

- [2026-01-16] Q1 Roadmap for ITAM/CMDB (Source: User):
    - ITSM-48513: Computer redesign (In Progress) - Confirmed (Engg Team)
    - ITSM-54155: Intune - allow matching owner to email address field (Ready For Testing)
    - New agent release ITSM-56459: Go Linux Discovery Agent (Ready for Engineering)

- [2026-01-16] Top Pain Point Themes (Source: User):
    - **Theme 1: API authentication, tokens, and access enablement**
        - Customers struggle with generating/locating tokens, ownership, and frequent 401/403/404 responses.
        - Confusion about base URLs/headers for Power Automate, Power BI, Azure, etc.
        - Belief that API options have "disappeared" from the UI.
        - Representative cases: 01973321, 01974877, 01977914, 01990936, 01991217, 01996077, 02037209, 02039730, 02044886, 02051698, 02055428
    - **Theme 2: Data extraction, filtering, and reporting at scale**
        - Friction with 100-record limits, unreliable pagination, and missing fields (purchase lifecycle, solution state).
        - Filters (created_from, etc.) returning all records instead of subsets.
        - Representative cases: 01968274, 01972221, 01973707, 01982452, 01985685, 01998713, 01999972, 02000100, 02006154, 02006657, 02010723, 02036363, 02043850, 02046210
    - **Theme 3: API reliability, stability, and error handling**
        - Intermittent 504 Gateway Timeouts, 500 Errors, and 200 OK responses that fail to persist changes.
        - Automation receiving HTML login pages instead of JSON payloads.
        - Representative cases: 01979974, 01980832, 01988724, 01989433, 01991914, 01994159, 02000100, 02001146, 02004622, 02010723, 02012807, 02013081, 02018514, 02039882
    - **Theme 4: Process Integration and workflow automation via API**
        - Incidents/changes created via integration not matching templates.
        - Process steps showing "failed" even when partially updated.
        - Difficulty triggering other catalog items or attaching CIs based on user input.
        - Representative cases: 01972542, 01972701, 01980787, 02001146, 02002141, 02003723, 02004460, 02006657, 02015617, 02018292, 02019654, 02020571, 02030438, 02031326, 02041341
    - **Theme 5: Documentation gaps and discoverability**
        - API documentation site (apidoc.samanage.com) outages.
        - Insufficient examples for complex tasks (uploads, CI dependencies, filtering semantics).
        - Representative cases: 01972221, 01998713, 01999972, 02006154, 02039868, 02041405, 02041639, 02041736, 02041776, 02039730, 02042239

- [2026-01-16] Top Pain Point themes for Email Settings (Source: User):
    - **Theme 1: Email notifications blocked by suppression lists (SES) & bounces**
        - Individual users or domains stop receiving emails; audit trails show "sent" but logs note SES suppression.
        - Representative cases: 02018130, 02018324, 02018959, 02019143, 02019303, 02019641, 02020378, 02021804, 02021977, 02022284, 02023159, 02023872, 02024292, 02024326, 02027473, 02028043, 02030076, 02030100
    - **Theme 2: Email-to-ticket creation failures, duplicates, or merges**
        - Emails delivered but no tickets created; unexpected merging of distinct threads; duplicate tickets on replies.
        - Representative cases: 02018708, 02018921, 02019303, 02019811, 02019815, 02021036, 02021243, 02022715, 02026825, 02027406, 02028041, 02028370, 02033667, 02033790, 02033852
    - **Theme 3: External domains blocked / constant whitelist and SPF/Spam tuning**
        - Vendor/system addresses bounced by antispamcloud.com/spamrl.com; SPF alignment failures.
        - Representative cases: 02018966, 02019147, 02019211, 02019777, 02019798, 02021946, 02023257, 02023259, 02023743, 02024292, 02025294, 02026172, 02027637, 02028348, 02029689, 02029797, 02032533, 02032756, 02032806, 02032869, 02033757, 02033794
    - **Theme 4: Notification coverage, routing, and template behavior**
        - Partial receipt of notifications in groups; automatic approval declines; missing context in approval emails.
        - Representative cases: 02019575, 02020051, 02020884, 02021036, 02021688, 02023192, 02024219, 02027473, 02028693, 02028808, 02029572, 02030569, 02031196
    - **Theme 5: Branding, compliance & policy constraints in email channel**
        - Desire for full sender domain control; hiding "Download SWSD" footers; adjusting secure email/attachment behavior for compliance (Saudi NCA, etc.).
        - Representative cases: 02019009, 02019888, 02021688, 02023161, 02023936, 02026139, 02026879, 02027406, 02028716, 02028724, 02030848, 02031614, 02031963, 02032533, 02032944

<!-- New facts go here. Format: - [DATE] FACT (Source: X) -->

## Processed Facts

- [2026-01-16] Q1 2026 Business OKR - Global SWSD bookings target: $2.96M with regional breakdown → updated `customers/overview.md` (bookings section, implied metrics), `business/go-to-market.md` (regional targets, bookings mix)
- [2025-01-16] The AU data center serves APAC customers; we sell to the APAC segment → updated `market/size.md`, `business/go-to-market.md`, `questions/question_1.md`, `questions/question_2.md`

