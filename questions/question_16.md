---
title: "Question 16: Platform Feature Inventory"
summary: Complete feature inventory of SolarWinds Service Desk platform, organized by functional area, plan tier, and competitive positioning.
last_updated: 2026-01-16
status: Answered
confidence: 85%
---

# Question 16: What is the complete feature inventory of the platform?

## Answer

SolarWinds Service Desk is a **cloud-only SaaS ITSM platform** with three pricing tiers (Essentials, Advanced, Premier). The platform offers ITIL-aligned service management (Incident, Problem, Change, Release), IT Asset Management, CMDB, Enterprise Service Management (ESM), and AI capabilities. Key differentiators include **HIPAA compliance with BAA**, **44-language support**, and **Premier-tier GenAI features**.

---

## Executive Summary

| Attribute | Details |
|-----------|---------|
| **Deployment** | Cloud-only (SaaS) on AWS |
| **Pricing Tiers** | Essentials ($39/tech/mo), Advanced ($79), Premier ($99) |
| **Data Centers** | US, EU, Australia |
| **Languages** | 44 languages supported |
| **Certifications** | SOC 2, ISO 27001, HIPAA (with BAA), GDPR |
| **ITIL Alignment** | Incident, Problem, Change, Release, Service Catalog |

---

## Pricing Tiers & Feature Access

### Plan Comparison

| Plan | Price | Target Segment | Key Inclusions |
|------|-------|----------------|----------------|
| **Essentials** | $39/tech/mo + $0.30/device | SMB, basic needs | Core ITSM, Asset Mgmt, KB |
| **Advanced** | $79/tech/mo + $0.50/device | Mid-market | ESM, Virtual Agent, Automation |
| **Premier** | $99/tech/mo + $0.70/device | Enterprise | GenAI, Visual CMDB, Runbooks |

### Feature Availability by Plan

| Feature Category | Essentials | Advanced | Premier |
|-----------------|------------|----------|---------|
| **Incident Management** | ✓ | ✓ | ✓ |
| **Problem Management** | ✓ | ✓ | ✓ |
| **Change Management** | ✓ | ✓ | ✓ |
| **Service Catalog** | ✓ | ✓ | ✓ |
| **Knowledge Base** | ✓ | ✓ | ✓ |
| **Asset Management** | ✓ | ✓ | ✓ |
| **SLA Management** | ✓ | ✓ | ✓ |
| **Custom Roles** | ✓ | ✓ | ✓ |
| **Custom Fields** | — | ✓ | ✓ |
| **Advanced Automation** | — | ✓ | ✓ |
| **Virtual Agent** | — | ✓ | ✓ |
| **Network Discovery** | — | ✓ | ✓ |
| **ESM (Multi-Provider)** | — | ✓ | ✓ |
| **Visual CMDB** | — | — | ✓ |
| **Dependency Mapping** | — | — | ✓ |
| **Automated Runbooks** | — | — | ✓ |
| **SolarWinds AI (GenAI)** | — | — | ✓ |
| **Data Masking** | — | — | ✓ |
| **API Rate Limit** | Standard | Standard | 1,500/user/min |

---

## Feature Inventory by Functional Area

### 1. Incident Management

| Feature | Description | Plan |
|---------|-------------|------|
| **Ticket Creation** | Multi-channel (email, portal, chat, phone) | All |
| **Priority/Impact Matrix** | Rank by urgency and impact | All |
| **Smart Ticket Routing** | AI-powered auto-assignment | All |
| **Automatic Classification** | ML-based categorization | All |
| **SLA Tracking** | Response/resolution time monitoring | All |
| **Escalation Rules** | Time-based and conditional escalation | All |
| **Related Asset Suggestions** | AI identifies related CIs | All |
| **Similar Incident Detection** | Surface past related incidents | All |
| **Sentiment Analysis** | Flag negative requester comments | Advanced+ |
| **AI Suggested Solutions** | GenAI-generated agent suggestions | Premier |
| **AI Draft Responses** | GenAI-generated reply drafts | Premier |
| **AI Ticket Summaries** | Auto-generated conversation summaries | Premier |

### 2. Problem Management

| Feature | Description | Plan |
|---------|-------------|------|
| **Problem Records** | Create and track problems | All |
| **Incident Linking** | Associate multiple incidents to one problem | All |
| **Root Cause Analysis** | Document and track RCA | All |
| **Known Error Database** | Track known errors and workarounds | All |
| **Problem Workarounds** | Document temporary fixes | All |
| **AI Problem Linking** | Suggest creating/linking problem tickets | Premier (Labs) |

### 3. Change Management

| Feature | Description | Plan |
|---------|-------------|------|
| **Change Records** | Create and track changes | All |
| **Change Types** | Standard, Normal, Emergency | All |
| **Approval Workflows** | Multi-stage approvals | All |
| **Change Calendar** | Visual change schedule | All |
| **Risk Assessment** | Impact and risk scoring | All |
| **CAB Support** | Change Advisory Board workflows | All |
| **Service Statistics for Changes** | Track lifecycle metrics | All (2025) |
| **CMDB Impact Analysis** | Dependency-aware risk assessment | Premier |

### 4. Service Catalog

| Feature | Description | Plan |
|---------|-------------|------|
| **Service Request Forms** | Customizable request forms | All |
| **Request Workflows** | Multi-step fulfillment | All |
| **Approval Chains** | Configurable approval routing | All |
| **SLA per Service** | Service-specific SLAs | All |
| **Catalog Categories** | Organize by category/department | All |
| **AI Catalog Suggestions** | Recommend appropriate items | All |
| **Workflow Steps Replacement** | Replace steps in catalog items | Premier (2025) |

### 5. Knowledge Base

| Feature | Description | Plan |
|---------|-------------|------|
| **Article Creation** | Rich text editor for articles | All |
| **Article Categorization** | Organize by topic/category | All |
| **Article Search** | Full-text search | All |
| **AI Article Suggestions** | Suggest relevant articles to users/agents | All |
| **Article Feedback** | User ratings and feedback | All |
| **Linked Articles** | Attach articles to tickets | All |
| **Public/Private Articles** | Control visibility | All |

### 6. Self-Service Portal

| Feature | Description | Plan |
|---------|-------------|------|
| **End-User Portal** | Branded self-service interface | All |
| **Ticket Submission** | Create and track own tickets | All |
| **Knowledge Search** | Search KB articles | All |
| **Service Catalog Access** | Request services | All |
| **Custom Branding** | Logo, colors, themes | All |
| **Mobile Support** | Mobile-responsive portal | All |
| **Virtual Agent** | AI chatbot for self-service | Advanced+ |
| **Live Agent Escalation** | Escalate from Virtual Agent to human | Advanced+ |

### 7. Asset Management (ITAM)

| Feature | Description | Plan |
|---------|-------------|------|
| **Asset Records** | Track hardware, software, other assets | All |
| **Asset Lifecycle** | Procurement to retirement | All |
| **Asset Discovery** | Network discovery scanner | Advanced+ |
| **Software Inventory** | Installed software tracking | All |
| **License Management** | Track software licenses | All |
| **Compliance Reports** | License compliance visibility | All |
| **Warranty Tracking** | Warranty status and expiration | All |
| **Asset Relationships** | Link to incidents, changes, users | All |
| **Unknown Warranty Mapping** | Identify and map unknown warranties | All (2025) |
| **Audit History** | Full asset change log | All |

### 8. CMDB

| Feature | Description | Plan |
|---------|-------------|------|
| **Configuration Items (CIs)** | Store and manage CIs | All |
| **CI Types** | Hardware, Software, Service, etc. | All |
| **CI Relationships** | Parent-child, dependency relationships | All |
| **CI Attributes** | Custom fields per CI type | All |
| **CI Lifecycle States** | In Use, In Stock, Retired, etc. | All |
| **Extensible Data Model** | Parent-child hierarchy for CI types | All |
| **Visual CMDB Map** | Graphical dependency visualization | Premier |
| **Dependency Mapping** | Auto-discovered relationships | Premier |
| **Impact Analysis** | Change impact based on dependencies | Premier |

### 9. Enterprise Service Management (ESM)

| Feature | Description | Plan |
|---------|-------------|------|
| **Service Providers** | Create departmental workspaces (HR, Facilities, Legal) | Advanced+ |
| **Data Isolation** | Strict silos between providers | Advanced+ |
| **Departmental Templates** | Pre-built HR, Facilities templates | Advanced+ |
| **Custom Ticket Names** | "Work Orders" for Facilities, etc. | Advanced+ |
| **Custom Subdomains** | company.solarwinds.com/hr | Advanced+ |
| **Shared Custom Forms** | Push forms to all providers | Advanced+ |
| **Unified Requester Portal** | Single entry point for all services | Advanced+ |
| **Ticket Forwarding** | Route between providers | Advanced+ |
| **Provider-Specific Branding** | Unique look per department | Advanced+ |

### 10. AI & Automation

#### Traditional AI (ML-based)

| Feature | Description | Plan |
|---------|-------------|------|
| **Automatic Routing** | Route to appropriate team/agent | All |
| **Automatic Classification** | ML-based categorization | All |
| **KB Article Suggestions** | Recommend articles to users | All |
| **Service Catalog Suggestions** | Recommend catalog items | All |
| **Related Asset Suggestions** | Identify related CIs | All |
| **Similar Incident Detection** | Surface past incidents | All |
| **Sentiment Analysis** | Detect negative comments | Advanced+ |

#### Generative AI (LLM-based) — Premier Only

| Feature | Description | Plan |
|---------|-------------|------|
| **AI Suggested Solutions** | GenAI agent suggestions from closed tickets | Premier |
| **AI Draft Responses** | Pre-written replies with info requests | Premier |
| **AI Ticket Summaries** | Auto-generated conversation summaries | Premier |
| **AI Problem Linking** | Suggest creating/linking problems (Labs) | Premier |
| **AI Runbook Generation** | Create runbooks from documents/text | Premier |

#### Automation

| Feature | Description | Plan |
|---------|-------------|------|
| **Workflow Automation** | Trigger-based automated actions | Advanced+ |
| **Business Rules** | Conditional logic for ticket handling | Advanced+ |
| **Approval Workflows** | Automated approval routing | All |
| **Escalation Rules** | Time-based escalations | All |
| **Automated Runbooks** | Step-by-step automated procedures | Premier |
| **JSON Response Analysis** | Parse API responses for automation | Advanced+ |

### 11. Reporting & Analytics

| Feature | Description | Plan |
|---------|-------------|------|
| **Standard Reports** | Pre-built ITSM reports | All |
| **Custom Reports** | Build custom reports | All |
| **Dashboards** | Configurable dashboards | All |
| **SLA Reports** | SLA compliance tracking | All |
| **Trend Analysis** | Ticket volume trends | All |
| **Agent Performance** | Agent productivity metrics | All |
| **Service Statistics** | Lifecycle event tracking | All |
| **Cross-Provider Reports** | Org-level ESM reporting | Advanced+ |

### 12. Integrations

| Category | Integrations |
|----------|-------------|
| **Identity/SSO** | SAML, Azure AD, Okta, OneLogin |
| **Communication** | Slack, Microsoft Teams, Email |
| **Monitoring** | SolarWinds suite integration |
| **CMDB/Discovery** | Network discovery scanner |
| **Procurement** | Purchase order management |
| **API** | REST API for custom integrations |
| **Webhooks** | Outbound event notifications |

### 13. Administration & Security

| Feature | Description | Plan |
|---------|-------------|------|
| **Role-Based Access Control** | Custom roles and permissions | All |
| **Custom Roles** | Create role definitions | All |
| **SSO/SAML** | Single sign-on support | All |
| **Audit Logs** | Track system changes | All |
| **Data Masking** | Mask sensitive custom fields | Premier (Labs) |
| **2048-bit SSL** | Encryption in transit | All |
| **Data Residency** | US, EU, AU data center choice | All |

### 14. MSP Capabilities

| Feature | Description | Plan |
|---------|-------------|------|
| **Multi-Tenant Management** | Manage multiple client accounts | MSP tier |
| **Unified Portal** | Single view of all client incidents | MSP tier |
| **Aggregated Dashboards** | KPIs across client base | MSP tier |
| **Global Search** | Search across all tenants | MSP tier |
| **Client Data Isolation** | Strict separation between clients | MSP tier |

---

## Platform Characteristics

### Deployment

| Attribute | Value |
|-----------|-------|
| **Model** | Cloud-only SaaS |
| **Hosting** | Amazon Web Services (AWS) |
| **On-Premise Option** | Not available |
| **Data Centers** | US, EU (Germany), Australia |
| **Multi-Tenancy** | Shared infrastructure, logical isolation |

### Compliance & Certifications

| Certification | Status |
|---------------|--------|
| **SOC 2 Type II** | ✓ Certified |
| **ISO 27001** | ✓ Certified |
| **HIPAA** | ✓ Compliant (BAA available since 2014) |
| **GDPR** | ✓ Compliant |
| **TRUSTe** | ✓ Certified |
| **Skyhigh Enterprise-Ready** | ✓ Certified |
| **FedRAMP** | ⚠️ Infrastructure only (AWS) |

### Localization

| Attribute | Value |
|-----------|-------|
| **Languages Supported** | 44 |
| **Regions** | Western/Northern/Eastern/Southern Europe, APAC, Middle East, Americas |

---

## Recent Feature Additions (2024-2025)

### 2025 Releases

| Feature | Description |
|---------|-------------|
| **Data Masking** | Mask sensitive custom fields (Premier, Labs) |
| **Service Statistics for Changes** | Lifecycle tracking for change records |
| **Group Assignment Toggle** | Enable/disable group assignment account-wide |
| **Warranty Lifecycle Visibility** | Map and track unknown warranties |
| **Workflow Steps Replacement** | Replace process steps in catalog items |

### 2024 Releases

| Feature | Description |
|---------|-------------|
| **Approval Workflow Enhancements** | Approvers view comments in portal |
| **JSON Response Analysis** | Parse API responses for automation |
| **Virtual Agent Improvements** | Request live agent chat anytime |
| **Service Provider Duplication** | Duplicate enabled/disabled providers |

---

## Competitive Feature Comparison

### vs. ServiceNow

| Feature Area | SolarWinds SD | ServiceNow |
|--------------|---------------|------------|
| ITSM Core | ✓ Complete | ✓ Complete |
| ESM | ✓ Advanced+ | ✓ Full platform |
| AI/GenAI | Premier only | Now Assist |
| Visual CMDB | Premier only | ✓ All tiers |
| Low-Code Development | Limited | Full platform |
| HIPAA BAA | ✓ Available | Varies |
| Complexity | Low | High |
| Cost | $39-99/user | $100+/user |

### vs. Freshservice

| Feature Area | SolarWinds SD | Freshservice |
|--------------|---------------|--------------|
| ITSM Core | ✓ Complete | ✓ Complete |
| ESM | ✓ Advanced+ | ✓ Available |
| AI/GenAI | Premier only | Freddy AI |
| HIPAA BAA | ✓ Available | Limited |
| Languages | 44 | Fewer |
| MSP Mode | ✓ Available | ✓ Available |

### vs. Jira Service Management

| Feature Area | SolarWinds SD | Jira SM |
|--------------|---------------|---------|
| ITSM Core | ✓ Complete | ✓ Complete |
| ESM | ✓ Advanced+ | Limited |
| AI/GenAI | Premier only | Atlassian Intelligence |
| CMDB | ✓ Visual (Premier) | Assets (add-on) |
| DevOps Integration | Limited | ✓ Native |
| Standalone ITSM | ✓ Yes | Better with Atlassian ecosystem |

---

## Key Differentiators

| Differentiator | Details |
|----------------|---------|
| **HIPAA with BAA** | Signs Business Associate Agreements since 2014 — rare in cloud ITSM |
| **44 Languages** | Comprehensive localization |
| **ESM Templates** | Pre-built HR, Facilities templates accelerate deployment |
| **Premier GenAI** | AI features drive upsell to highest tier |
| **Reasonable Pricing** | 10x less than ServiceNow |
| **Cloud Simplicity** | No on-prem complexity |

---

## Feature Gaps (vs. Competition)

| Gap | Impact | Competitors With Feature |
|-----|--------|-------------------------|
| **No on-premises option** | Excludes ~29% of market requiring on-prem | BMC, Ivanti |
| **No FedRAMP certification** | Excludes US federal government | ServiceNow |
| **Limited low-code platform** | Less extensibility than competitors | ServiceNow, Freshworks |
| **ESM asset silos** | Assets not shared across providers | — |
| **Agent single pane of glass** | Agents must switch between providers | ServiceNow |

---

## Information Required to Complete Analysis

1. **Complete API documentation** — Full API capabilities and limits
2. **Integration marketplace** — Complete list of pre-built integrations
3. **Feature roadmap** — Planned features for 2025-2026
4. **Feature adoption metrics** — Which features customers actually use
5. **Competitive feature matrix** — Detailed comparison vs. each competitor
6. **Technical architecture** — Scalability limits, performance benchmarks

---

## Data Sources Used

| Source | Data Provided |
|--------|---------------|
| `product/architecture.md` | Deployment, security, localization |
| `product/capabilities/esm.md` | ESM features and architecture |
| `product/capabilities/ai/general.md` | AI capabilities overview |
| `product/capabilities/msp.md` | MSP capabilities |
| External research | Pricing, features, competitive context |

---

## Confidence Level: 85%

| Component | Confidence | Reason |
|-----------|------------|--------|
| Core ITSM features | 95% | Well-documented publicly |
| Plan tier features | 85% | Based on public pricing pages |
| AI features | 90% | Documented in internal files |
| ESM features | 95% | Detailed internal documentation |
| Competitive comparison | 75% | High-level; needs detailed validation |

---

## External Sources

- [SolarWinds Service Desk - Compare Plans](https://www.solarwinds.com/service-desk/compare)
- [SolarWinds Service Desk - Pricing](https://www.solarwinds.com/service-desk/pricing)
- [SolarWinds Service Desk - Features](https://www.solarwinds.com/service-desk/use-cases)
- [SolarWinds Service Desk - 2025 Release Notes](https://documentation.solarwinds.com/en/success_center/swsd/content/release_notes/swsd_2025_release_notes.htm)
- [SolarWinds Service Desk - 2024 Release Round-up](https://thwack.solarwinds.com/products/solarwinds-service-desk-swsd/b/news/posts/solarwinds-service-desk-2024-release-round-up)
- [SolarWinds Service Desk - CMDB Software](https://www.solarwinds.com/service-desk/use-cases/cmdb-software)
- [SolarWinds Service Desk - Problem Management](https://www.solarwinds.com/service-desk/use-cases/it-problem-management)
- [SolarWinds Service Desk - ITAM](https://www.solarwinds.com/service-desk/use-cases/itam-software)
- [Research.com - SolarWinds Service Desk Review 2025](https://research.com/software/reviews/solarwinds-service-desk)
- [TechRadar - SolarWinds Service Desk Review](https://www.techradar.com/reviews/solarwinds-service-desk)
- [G2 - SolarWinds Service Desk Pricing](https://www.g2.com/products/solarwinds-service-desk/pricing)
