# MSP Capabilities

## Overview
SolarWinds Service Desk for Managed Service Providers (MSPs) enables MSPs to offer ITSM (IT Service Management) and ITAM (IT Asset Management) services to their clients. This solution allows MSPs to provide enterprise-class support services, leveraging core Service Desk features such as:
- Incident Management
- Service Request Fulfillment
- Change Management
- Configuration Management Database (CMDB)
- Asset Management

## Architecture & Tenant Management
The MSP architecture is designed to ensure data isolation and simplified management:
- **Client Separation:** A fully licensed Service Desk tenant is created for each client and attached to the main MSP account. This ensures strict data separation between different clients.
- **Client Access:** Each client has their own specific URL to access their Service Desk instance, providing them with a branded and personalized experience.

## Key Features for MSPs
- **Unified Portal:** MSP accounts provide a centralized view of all client incidents, allowing technicians to monitor and manage workload across multiple clients from a single interface.
- **Aggregated Dashboards:** MSPs can view high-level dashboards that aggregate Key Performance Indicators (KPIs) across their client base, facilitating better performance tracking and reporting.
- **Global Search:** Capability to search across all managed tenants to quickly locate incidents, assets, or users.

## Access & Security
- **Administrative Access:** Administrators in the MSP account are automatically granted administrative access to all attached client accounts, streamlining configuration and maintenance.
- **Technician Access:** Non-admin MSP users (technicians) do not have automatic access to client data. Access must be explicitly granted, ensuring that technicians only see data for the clients they are assigned to support.
- **Data Privacy:** The multi-tenant architecture ensures that data from one client is never accessible to another client.
