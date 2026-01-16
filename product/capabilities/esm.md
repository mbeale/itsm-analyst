---
title: Enterprise Service Management (ESM) Capabilities
summary: Comprehensive documentation of SolarWinds Service Desk ESM capabilities, architecture, migration process, limitations, and product strategy for expanding service delivery beyond IT.
last_updated: 2025-01-16
status: Complete
---

## 1. Executive Summary
* **Elevator Pitch:** SolarWinds Service Desk ESM allows organizations to expand service delivery beyond IT to departments like HR, Legal, and Facilities using a single account with siloed, department-specific workspaces.
* **Value Proposition:**
    * **Efficiency:** Centralized portal for end-users to access all company services.
    * **Privacy/Security:** Strict data segregation ensures IT admins cannot see sensitive HR or Legal data unless granted specific permissions.
    * **Customization:** Each department can have its own ticket nomenclature (e.g., "Work Orders" for Facilities) and unique service portal designs.

## 2. Functional Capabilities
### Core Features
* **Service Providers:** Create dedicated tenants for different departments (HR, Facilities, etc.) within a single organization.
* **Shared Custom Forms & Logic:** Organization-level admins can build "master" forms and automation rules that push to all departments, ensuring standardization and reducing setup time.
* **Ticket Forwarding:** Seamlessly move an incident or service request from one provider to another if it was submitted to the wrong department.
* **Departmental Templates:** Pre-built templates (Blank, Sample, HR, Facilities) to jumpstart setup with relevant categories and fields.
* **Custom Subdomains:** Each provider gets a unique URL prefix (e.g., `company.solarwinds.com/hr`).

### User Experience (UX)
* **Requester View:** End-users see a unified landing page where they can choose the relevant department or search across all allowed providers.
* **Agent View:** Agents only see tickets and data for the service providers they are assigned to, preventing cross-departmental data leaks.
* **Mobile Support:** Full functionality for both requesters and agents via the SolarWinds Service Desk mobile app for all providers.

## 3. Technical Architecture & Limitations
### System Boundaries (Crucial)
| Metric | Limit | Consequence of Exceeding |
| :--- | :--- | :--- |
| Subdomain Prefix | 10 Characters (Alphanumeric) | Hard UI validation limit |
| Provider Access | Role-based | Requesters default to all; must be restricted manually if privacy is needed |
| Data Isolation | Logical Silos | Cross-provider reporting requires specific "Organization" level permissions |

### Data Segmentation
* **Organization Level:** Manages global resources (Users, Sites, Departments, Global Settings).
* **Service Provider Level:** Manages local resources (Roles, Categories, Custom Fields, Automation Rules, SLAs).

### API & Integration
* ESM introduces a split in setup; API integrations must now account for whether they are targeting Organization-level data or Service Provider-specific objects.

## 4. Migration & Compatibility
### Prerequisites
* **Account Owner:** Only the primary Account Owner can initiate the migration.
* **Plan:** Must be on Advanced or Premier tiers.

### Migration Path
1. **Activation:** Initiated via `Setup > Account > Account Summary`.
2. **Downtime:** The account will be **unavailable** during migration. Most take ~4 hours, but can take up to 12 hours for large datasets.
3. **Irreversibility:** Once migration is successful, the account **cannot** be reverted to single-tenant (ITSM) mode.
4. **Post-Migration:** The legacy IT account becomes the "IT Service Provider." A new "Organization" layer appears in the navigation dropdown.

#### Post-Migration Architecture Breakdown
1. **What is Shared (Organization Level)**
   These resources exist at the top "Organization" level and are shared or accessible across all Service Providers:
    * **Users:** Requesters and Agents are managed globally.
    * **Sites & Departments:** Location and organizational structure data.
    * **Global Settings:** Account-wide configurations.
        *   **Assets/CMDB:** While assets are siloed within providers for management/viewing (as noted in pain points), the underlying system manages them at a level that doesn't merge seamlessly (hence the exclusion in the "Merge" roadmap feature), but the "Organization" level is responsible for these global resources.
        *   **Shared Forms & Logic:** "Master" forms and automation rules defined at the Org level can be pushed to all providers.
        *   **Mobile App:** A single app provides access to all providers.
        *   **Unified Portal (Requester View):** End-users have a unified landing page to search or select providers.

    2. **What is Configurable (Per Service Provider)**
   Each Service Provider acts as a dedicated tenant with its own independent configurations:
    * **Ticket Nomenclature:** e.g., "Work Orders" for Facilities vs. "Incidents" for IT.
    * **Service Portal Design:** Unique look and feel for each department.
    * **Subdomain/URL Prefix:** e.g., `company.solarwinds.com/hr`.
    * **Roles & Permissions:** Roles are defined locally to control access within that specific provider.
    * **Categories:** Department-specific categorization trees.
    * **Custom Fields:** Fields specific to the provider's needs.
    * **Automation Rules:** Workflow logic specific to that department's processes.
    * **SLAs:** Service Level Agreements tailored to the department.
    * **Departmental Templates:** Pre-built setups (HR, Facilities, etc.).

3. **What is Isolated (Siloed)**
   Strict segregation ensures data privacy and operational independence:
    * **Ticket Data:** Incidents, Service Requests, and their related data (comments, attachments).
    * **Agent View:** Agents can only see tickets for the providers they are explicitly assigned to. IT admins cannot see HR tickets by default.
    * **Reporting:** Reports are typically scoped to the specific Service Provider (cross-provider reporting requires special Org-level permissions).
    * **API Integrations:** Integrations must target specific Service Provider objects separately from Organization-level data.
    * **Assets (Current State):** Assets are effectively siloed within providers, preventing a global view across boundaries (identified as a pain point).

## 5. Support & Troubleshooting
### 5.1 Assisted Migration & Infrastructure
*   **Assisted Migration:** Available on request. Initiated by Account Managers or customers via a support case.
    *   *Process:* Includes a pre-migration technical call to review prerequisites.
    *   *Duration:* Typically completes within minutes, rarely exceeding 1 hour.
*   **Infrastructure Requirements:**
    *   **SSL Certificates:** Custom domains *must* be updated to **Wildcard** or **Multi-domain** certificates before migration. This may incur additional costs.
    *   **SSO & Provisioning:** Requires significant post-migration reconfiguration.
        *   *Azure/Okta:* Often requires creating a new enterprise application or organization.
        *   *OneLogin:* Typically requires updating the API token and redirect URL.
    *   **DNS:** Customers must manage CN records for *all* service providers (IT, HR, etc.) and update them as new providers are added.

### Top Pain Points (The "Gotchas")
* **Permissions Gap:** By default, all "Requesters" can see all Service Provider portals. If a department (like HR) needs to be private, the admin *must* manually create a new role and restrict portal access.
* **Login Delays:** After migration completion, it may take up to 15 minutes for the login system to synchronize.
* **Migration Failure:** If the process fails, the system automatically reverts to the original state; users must wait for SolarWinds Support to resolve the infrastructure conflict before re-attempting.
* **Agent Cross-Provider Visibility:** Unlike requesters who have a unified "All My Tickets" view at the Org level, agents must switch between individual Service Provider accounts to view their assigned tickets. While the notification bell alerts agents to activity in other providers, there is currently no single pane of glass for all agent work items across the organization.
* **Manual Setup Duplication (Mitigated):** Previously, creating a new Service Provider required significant manual effort to recreate Service Catalogs, forms, and automation rules. The introduction of **Shared Custom Forms & Logic** now allows admins to push "master" configurations to all providers, significantly reducing this burden.
* **Data Mobility & Asset Silos:** Moving records (Incidents, Service Requests) and complex Service Catalog workflows between providers is often restricted. Additionally, assets are siloed within providers, making it difficult to maintain a global view or reference assets across department boundaries.
* **Integration Restrictions:** Many general integrations found in the "Setup" menu are restricted to the primary IT Service Provider, preventing departments like HR or Facilities from fully leveraging them.

### Diagnostic Toolkit
* **Email Notifications:** The Account Owner receives automated status emails for migration start/finish/failure.
* **Audit Logs:** Use Organization-level audit logs to track the creation and disabling of service providers.

## 6. Sales & Commercial Context
### Licensing Model
* **Flat Structure:** ESM is included in Advanced and Premier subscriptions.
* **User Tables:** The system uses two license tables: "Unique Licenses" (total seat count) and "All Licenses" (details on which users hold which specific roles).

### Competitive Analysis
* **Where we win:** High ease-of-use; "Template-based" setup for HR/Facilities is much faster than competitors like ServiceNow.
* **Where we struggle:** [Unknown - Internal Sales Data Required]

## 7. Q1 2026 Roadmap
*   **[ITSM-44439](https://swicloud.atlassian.net/browse/ITSM-44439) ESM data migration Phase 1: moving data from IT to a non-IT provider**
    *   **Status:** Ready for Engineering
    *   **Summary:** For customers who previously used ITSM to manage multiple service providers by utilizing categories and sub-categories, all records currently are under the IT SP (their legacy account). As customers transition to a ESM model, they require the ability to move existing records such as incidents, problems, and related data from their IT SP to the appropriate, dedicated SP.
*   **[ITSM-23172](https://swicloud.atlassian.net/browse/ITSM-23172) Merge ITSM account as SP into existing ESM Account**
    *   **Status:** Acceptance
    *   **Summary:** ESM mode does not support merging of an existing Service Desk account into an established ESM account. As a result, customers are either left managing several separate accounts or must create a new Service Provider (SP) to handle the external account to centralize all setup and configurations.
*   **[ITSM-25988](https://swicloud.atlassian.net/browse/ITSM-25988) Trial Accounts as ESM**
    *   **Status:** Ready for Engineering
    *   **Summary:** Currently, trial accounts require migration to ESM, which is good practice for existing customers before migration of their production accounts but creates a poor UX for prospects. This initiative aims to provision trial accounts as ESM by default.

## 8. Product Feature Strategy
### North Star: "Zero-Friction Service Expansion"
**Definition:** Empowering any business unit (HR, Legal, Facilities) to spin up a fully secure, compliant, and branded service workspace in under 15 minutes—without IT intervention.

### The 3 Pillars
1.  **The "Employee Center" UX:** A single, consumer-grade landing page where users don't need to know *who* fulfills the request, just *what* they need.
2.  **Templated Sovereignty:** Pre-packaged workflows (e.g., "Legal Contract Review") that deploy with correct permissions, SLAs, and forms instantly.
3.  **Invisible Governance:** Strict data boundaries that are enforced logically in the backend, requiring zero manual configuration to maintain privacy.

### The 10 Strategic Filter Questions
**The "ESM Reality" Filters**
1.  **The "Non-IT" Litmus Test:** Does this feature use terminology (e.g., 'Incident', 'SLA', 'Change') that will confuse HR or Legal users, or is it neutral/configurable?
2.  **The "Silo vs. Global" Check:** Does this feature inadvertently break the strict data isolation required between Service Providers (e.g., HR data leaking to IT admins)?
3.  **The "Setup Duplication" Tax:** Does this feature require a customer to manually configure it N times (once per Service Provider), or can it be managed globally?

**The "Value & Usability" Filters**
4.  **The "80/20" Complexity Test:** Are we building this for the 80% of standard multi-department needs, or are we complicating the UI for a 20% edge case?
5.  **The "Deflection vs. Frustration" Ratio:** Will this automation/rule genuinely resolve the issue for a non-technical user, or just add friction?
6.  **The "Requester vs. Agent" Impact:** Does this feature improve the 'Unified Portal' experience for the requester, or is it purely an agent-side optimization?

**The "Technical & Data" Filters**
7.  **The "Dirty Data" Dependency:** Does this feature rely on a unified view of Assets/CMDB to function? (Assets are currently siloed).
8.  **The "Integration Boundary" Check:** Does the API implementation correctly account for the split between Organization-level data and Service Provider-specific objects?
9.  **The "FTE Tax" Calculation:** Will maintaining this feature across multiple Service Providers require more admin headcount than our customers typically have?

**The "Commercial" Filter**
10. **The "Plan Requirement" Check:** Is this feature being built effectively for the 'Advanced' and 'Premier' plans where ESM lives?

---

## Information Required to Complete Analysis

1. **Competitive analysis data** — Where does ESM struggle vs. competitors (ServiceNow, Freshservice)?
2. **ESM adoption metrics** — What % of customers have migrated to ESM?
3. **ESM revenue impact** — Does ESM drive upsells to Advanced/Premier?
4. **Customer feedback** — Common feature requests and pain points from ESM users
5. **Win/loss data** — How often is ESM a deciding factor in deals?
