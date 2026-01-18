# Configuration Management Database (CMDB)

## Overview
The SolarWinds Service Desk CMDB serves as the centralized repository for all IT infrastructure components, known as Configuration Items (CIs). It maps the relationships and dependencies between CIs to support critical ITSM processes such as Change, Problem, and Incident Management.

## CMDB Administration & Data Model
The CMDB is built on a flexible, hierarchical data model that can be customized to reflect any organization's specific infrastructure.

-   **Hierarchy:** Uses a Parent/Child structure. Child CI types inherit layouts and fields from their parents, ensuring consistency and reducing administrative overhead.
-   **CI Types:**
    -   **Out-of-the-Box:** Comes with standard pre-defined CI types (e.g., Servers, Applications, Routers).
    -   **Custom Types:** Administrators can create unlimited custom CI types to track unique assets.
    -   **Customization:** Admin can add, remove, or modify fields on any CI layout. Fields added to a parent type automatically cascade to all child types.
-   **Population:** CIs can be manually created, imported via CSV/XML, or automatically populated and updated via **SolarWinds Discovery** integration.

## Relationships & Dependencies
Understanding how CIs interact is the core value of the CMDB.

-   **Dependency Types:** Relationships are defined with bi-directional logic (Forward/Inverse).
    -   *Example:* "Application A" -> *Run On* -> "Server B" (Inverse: "Server B" -> *Hosts* -> "Application A").
-   **Impact Analysis:** By defining these relationships, IT teams can predict the downstream impact of a failure or a planned change.
-   **Custom Dependencies:** Administrators can define custom relationship types beyond the defaults to match specific business logic.

## CMDB Visual Map
*Available in Premier Plan*

The Visual Map transforms the text-based list of dependencies into an interactive graphical representation.

-   **Visualization:** Displays CIs in a horizontal tree structure, with the "Root" CI on the left and all dependencies branching out to the right.
-   **Interactive:**
    -   **Hover Details:** Mouse over any connection to see the specific dependency type (e.g., "Connected To", "Installed On").
    -   **Drill Down:** Click on any node to refocus the map on that specific CI and see its own set of dependencies.
    -   **Filtering:** Filter the view by specific dependency types or CI classes to reduce noise in complex maps.

## Agent Capabilities
Agents interacting with the CMDB have a robust set of tools to maintain data accuracy and utilize CI context for support:

-   **View & Filter:** Full access to search, filter, and view the CI index.
-   **Creation & Editing:** Permission to create new CIs or update existing ones as infrastructure changes.
-   **Linking:** Agents can attach CIs directly to:
    -   Incidents (for faster troubleshooting)
    -   Problems (for root cause analysis)
    -   Changes (for impact assessment)
    -   Releases (for deployment tracking)
-   **Exporting:** Capability to export CI lists to CSV, XML, or PDF for external reporting or auditing.
