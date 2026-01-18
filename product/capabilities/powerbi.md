# Power BI Integration

## Overview
The SolarWinds Service Desk Power BI integration enables organizations to visualize and analyze their ITSM and ITAM data using Microsoft Power BI. It provides customizable dashboard templates that offer deep insights into key performance indicators (KPIs) for tickets and assets, helping teams make data-driven decisions.

## Key Capabilities

### Dashboard Templates
The integration includes pre-built templates covering critical service management areas:
-   **Ticket Overview:** High-level view of CSAT, SLA compliance, Mean Time To Resolve (MTTR), and backlog volume.
-   **Demand Pressure:** Analysis of ticket volume trends (created vs. resolved) over time and by category.
-   **Team Scorecard:** Performance metrics broken down by team and individual agent.
-   **Open Ticket Management:** Detailed list of active tickets filterable by age, priority, and status.
-   **Asset Management:** Inventory summary including total counts, operational status, manufacturer distribution, and location.

### Data Retrieval & Customization
-   **SolarWinds Custom Connector:** A dedicated connector simplifies importing data into Power BI.
-   **Incremental Refresh:** Supports incremental data refreshes (using `RangeStart` and `RangeEnd` parameters) to optimize performance and reduce download times for large datasets.
-   **Custom Fields:** Organizations can pull specific custom fields from Service Desk tickets into their Power BI models by configuring query parameters.

## Configuration & Setup

### Prerequisites
-   **Power BI Desktop:** The latest version of Microsoft Power BI Desktop must be installed.
-   **User Role:** Access requires a Service Desk user account. For ESM (Enterprise Service Management) accounts, a Service Provider Administrator must generate the authentication token.

### Authentication
Authentication relies on a **JSON Web Token (JWT)**, which is valid for 24 hours.
-   **Generation:** Users generate the token within the Service Desk portal under `Setup > Users`.
-   **Token Refresh:** For continuous data refresh, the JWT must be updated/renewed daily.

### Deployment Options
There are two primary ways to deploy the integration:
1.  **Plug-and-Play App (Microsoft AppSource):** Download the "SolarWinds Service Desk Dashboard" app directly from AppSource for a quick start. Connect using the generated JWT.
2.  **Power BI Desktop (Customizable):** Obtain the `.pbix` template file from a Service Desk Account Manager. This method allows for deeper customization of reports and data models within Power BI Desktop.

## Data Filtering
To manage data volume and load times, users can configure parameters in the Power Query Editor:
-   `RangeStart` and `RangeEnd`: Filters data import based on the `updated_at` timestamp.
-   `CustomFieldName`: Specifies which custom fields to include in the dataset.

## Metrics Tracked
**Ticket Metrics:**
-   CSAT Score %
-   SLA Breach/Compliance %
-   Mean Time To Resolve (MTTR)
-   Backlog Size (Open Tickets)
-   Average Ticket Age

**Asset Metrics:**
-   Total Asset Count
-   Operational vs. Broken Status
-   Breakdown by Manufacturer, Type, Site, and State
