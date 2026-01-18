# IT Asset Management (ITAM) Capabilities

## Overview
SolarWinds Service Desk offers a comprehensive ITAM solution designed to manage an organization's entire asset lifecycle, from procurement to disposal. It integrates seamlessly with ITSM processes, ensuring a unified view of hardware, software, and non-IT assets.

## Discovery & Inventory
The platform employs a multi-faceted approach to asset discovery, ensuring high visibility across the network:

### Discovery Methods
- **Discovery Agent:** A lightweight agent installed on computing devices (Windows, Apple, macOS) that collects over 200 data points, including detailed hardware and software specifications. It supports mobile devices (iOS and Android) via the SolarWinds mobile app.
- **Discovery Scanner:** An agentless technology that scans the network for IP-connected devices. It's ideal for printers, network gear, and unmanaged devices.
- **Integrations:** Native connectors with major endpoint management and cloud providers, including:
    - Microsoft SCCM & Intune
    - JAMF
    - VMware vCenter
    - AWS & Azure/Entra ID
    - Google Chrome OS (via Google Workspace)
- **Manual/Import:** Support for manual entry and CSV imports for legacy or non-discoverable assets.

### Asset Classes
- **Computers:** Detailed views including hardware specs (CPU, RAM, HDD), installed software, lifecycle status (warranty, lease), and associated incidents/changes.
    - **Warranty Sync:** Automatic warranty information syncing for Dell and Lenovo devices.
    - **Patch Management:** Integration with Automox for patch status and deployment.
- **Software:** Automated software recognition and normalization.
    - **Normalization:** Merges version variations (e.g., "Adobe Acrobat 10.1" and "10.2") into a single "Software Title" for cleaner reporting.
    - **Compliance:** Tracks installation counts against purchased license seats to identify risks or waste.
- **Network Devices:** Inventories routers, switches, servers, and firewalls, primarily via the Discovery Scanner.
- **Printers:** Captures printer details including driver, port, and network address.
- **Mobile Devices:** Inventory of smartphones and tablets, viewable by location, model, and OS.
- **Other Assets:** Flexible category for non-IT items like monitors, furniture, vehicles, and accessories.

## Asset Maps & Location
- **Geolocation:** The **Assets Map** visualizes the approximate physical location of assets based on their public IP address (using latitude/longitude coordinates).
- **Site Association:** Assets can be manually or automatically assigned to specific sites and departments for granular reporting.

## Lifecycle & Procurement
The ITAM module includes robust procurement features to manage the financial and contractual aspects of assets:

- **Contracts:** Central repository for managing:
    - Software Licenses
    - Hardware Leases
    - Maintenance & Support Agreements
    - *Features:* Renewal reminders, financial cost tracking, and attachment of contracts to specific assets.
- **Purchase Orders (POs):** Complete lifecycle management for POs:
    - Creation and approval workflows.
    - Itemized asset lists.
    - Tracking of "Received" vs. "Ordered" quantities (partial fulfillment support).
- **Vendors:** Database of vendor contact details and performance history, linked directly to POs and assets.

## Software Reconciliation & Compliance
The **Software Reconcile** engine is a critical tool for audit defense and cost optimization:
- **Compliance Calculation:** Automatically compares discovered installations against valid license contracts.
- **Risk Identification:** Highlights "Under-licensed" (compliance risk) and "Over-licensed" (shelfware/waste) software titles.
- **Unlicensed Software:** Flags software found on the network that has no associated contract.

## Reporting & Risk Analysis
- **Risk Detection:** The "Risks" dashboard proactively identifies issues such as:
    - Unauthorized software installations (e.g., games, P2P tools).
    - Computers that have stopped reporting (broken agents).
    - Hard drives reaching capacity limits.
    - Contracts expiring soon.
- **Reporting:** Out-of-the-box reports for asset distribution, software compliance, and contract value.
    - **Export:** Data can be exported to CSV, XML, or PDF for external analysis.
