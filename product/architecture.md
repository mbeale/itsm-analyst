---
title: Product Architecture
summary: Technical architecture overview including deployment model, infrastructure, integrations, client-side components, and technical constraints that impact market positioning and SAM calculations.
last_updated: 2025-01-16
status: In Progress - deployment model and certifications documented, additional technical details needed
---

# Product Architecture

## Deployment Model

### Primary Deployment
- **Model:** Cloud-only (SaaS)
- **Multi-tenancy:** TBD (single-tenant vs. multi-tenant)
- **On-premise option:** Not available

### Client-Side Components

| Component | Purpose | Deployment Location | Requirements |
|-----------|---------|---------------------|--------------|
| Discovery Scanner | Collects network infrastructure information | Customer premises | TBD (OS, network access, ports) |

#### Discovery Scanner Details
- **Function:** Network discovery and asset collection
- **Deployment:** Client-side (on-premise at customer location)
- **Data flow:** Scanner → Cloud platform (outbound)
- **Requirements:** TBD
  - Supported operating systems:
  - Network access requirements:
  - Firewall/port requirements:
  - Authentication method:
  - Update mechanism:

### SAM Implications
- Cloud-only model excludes customers requiring full on-premise deployment (~29% of market)
- Discovery scanner enables hybrid data collection without full on-prem requirement
- Air-gapped environments: TBD (can scanner operate in disconnected mode?)

---

## Infrastructure

### Data Centers

| Location | Region Served | Data Residency | Capabilities |
|----------|---------------|----------------|--------------|
| United States (AWS) | North America, Latin America | US | Full platform |
| Europe (AWS) | Europe | EU | Full platform |
| Australia (AWS) | Australia/NZ | AU | Full platform |

- **Hosting Provider:** Amazon Web Services (AWS)
- **AWS Certifications (Infrastructure):** PCI DSS Level 1, ISO 27001, FISMA Moderate, FedRAMP, HIPAA, SOC 1, SOC 2

*Sources: `business/go-to-market.md`, [SolarWinds Service Desk - Data Security](https://www.solarwinds.com/service-desk/data-security-certifications-accreditations)*

### Architecture Characteristics
- **Separation:** Completely separate infrastructure per region
- **Data isolation:** TBD (logical vs. physical tenant isolation)
- **Failover/DR:** TBD
- **SLA commitment:** TBD (uptime guarantee)

---

## Platform Components

### Core Modules
| Module | Description | Status |
|--------|-------------|--------|
| | | |

### Technology Stack
- **Frontend:** TBD
- **Backend:** TBD
- **Database:** TBD
- **Search/Analytics:** TBD
- **Queue/Messaging:** TBD
- **Caching:** TBD

### Scalability
- **Current capacity:** TBD (users, tickets, assets)
- **Scaling model:** TBD (horizontal/vertical)
- **Performance benchmarks:** TBD

---

## Integration Architecture

### Integration Methods
| Method | Availability | Use Cases |
|--------|--------------|-----------|
| REST API | TBD | |
| Webhooks | TBD | |
| Pre-built connectors | TBD | |
| iPaaS support | TBD | |
| SSO/SAML | TBD | |
| SCIM provisioning | TBD | |

### Key Integrations
| Category | Integrations Available |
|----------|----------------------|
| Identity/SSO | |
| Monitoring/Observability | |
| CMDB/Asset Management | |
| Communication (Slack, Teams) | |
| DevOps (Jira, GitHub, etc.) | |
| Cloud providers (AWS, Azure, GCP) | |

---

## Security Architecture

### Certifications & Compliance

| Certification | Status | Notes |
|---------------|--------|-------|
| SOC 2 | ✓ Certified | Regularly refreshed |
| ISO 27001 | ✓ Certified | Covers all products and major locations |
| HIPAA/HITECH | ✓ Compliant | Signs BAAs since 2014; meets HIPAA Omnibus ruling |
| GDPR | ✓ Compliant | Applied globally, not just EU |
| TRUSTe | ✓ Certified | Privacy certification |
| Skyhigh Enterprise-Ready | ✓ Certified | Cloud security rating |
| FedRAMP | ⚠️ Infrastructure only | AWS hosting is FedRAMP certified; product-level not held |
| PCI DSS | ⚠️ Infrastructure only | AWS hosting is PCI DSS Level 1; product-level not held |

*Sources:*
- *[SolarWinds Service Desk - Data Security Certifications](https://www.solarwinds.com/service-desk/data-security-certifications-accreditations)*
- *[SolarWinds Service Desk - HIPAA Overview](https://www.solarwinds.com/zh/service-desk/hipaa)*

### SAM Implications of Certifications

| Certification | Market Segment Enabled | Estimated Value |
|---------------|----------------------|-----------------|
| SOC 2 + ISO 27001 | Enterprise (table stakes) | Required for most enterprise deals |
| HIPAA w/ BAA | U.S. Healthcare | ~$1.2-1.4B in served regions |
| FedRAMP (not held) | U.S. Federal | ~$400-500M **not accessible** |
| GDPR | EU customers | Required for EU market |

**Key Differentiator:** HIPAA BAA availability — few cloud ITSM providers sign Business Associate Agreements.

**Gap:** No product-level FedRAMP certification excludes U.S. federal government segment.

### Security Features
- **Encryption in transit:** 2048-bit SSL encryption
- **Encryption at rest:** TBD
- **Key management:** TBD (customer-managed keys?)
- **Audit logging:** TBD
- **Data retention controls:** TBD
- **RBAC/permissions model:** TBD

---

## Localization

### Supported Languages (44 Total)

| Region | Languages |
|--------|-----------|
| **Western Europe** | English, French, German, Spanish, Italian, Dutch, Portuguese (Portugal), Catalan |
| **Northern Europe** | Swedish, Norwegian, Danish, Finnish, Estonian, Latvian, Lithuanian |
| **Eastern Europe** | Polish, Czech, Slovak, Hungarian, Romanian, Bulgarian, Croatian, Serbian, Slovenian, Macedonian, Russian, Belarusian, Ukrainian |
| **Southern Europe** | Greek, Italian, Spanish, Portuguese |
| **Asia-Pacific** | Japanese, Korean, Chinese (Simplified), Chinese (Traditional), Thai, Vietnamese, Indonesian, Malay, Hindi |
| **Middle East** | Arabic, Hebrew, Persian, Turkish |
| **Americas** | English, Spanish, Spanish (Latin America), Portuguese (Brazil) |

### SAM Implications
- Full language coverage for all served regions (NA, EU, LATAM, AU)
- No SAM reduction due to language barriers
- Competitive advantage: Many competitors offer fewer languages

---

## Technical Debt & Constraints

### Known Limitations
| Area | Constraint | Impact | Remediation Plan |
|------|------------|--------|------------------|
| | | | |

### Architectural Risks
| Risk | Severity | Mitigation |
|------|----------|------------|
| | | |

---

## Extensibility

### Customization Options
- **Custom fields:** TBD
- **Custom workflows:** TBD
- **Custom forms:** TBD
- **Scripting/automation:** TBD
- **Custom reports:** TBD

### Developer Platform
- **API documentation:** TBD
- **SDK availability:** TBD
- **Sandbox environment:** TBD
- **App marketplace:** TBD

---

## Information Required to Complete Analysis

### Deployment & Infrastructure
1. Multi-tenancy model (single vs. multi-tenant architecture)
2. Discovery scanner technical requirements (OS, network, ports)
3. Air-gapped/disconnected operation capability for scanner
4. Failover and disaster recovery architecture
5. SLA commitments (uptime percentage)

### Platform Details
6. Core module inventory and descriptions
7. Technology stack details
8. Current scalability limits and benchmarks
9. Roadmap for architectural improvements

### Integrations
10. Complete list of pre-built integrations
11. API capabilities and rate limits
12. iPaaS partnerships (Workato, Tray.io, etc.)

### Security & Compliance
13. ~~Current certifications held~~ ✓ SOC 2, ISO 27001, HIPAA, GDPR, TRUSTe, Skyhigh
14. ~~FedRAMP status~~ ✓ Infrastructure only (AWS); product-level not held
15. ~~HIPAA compliance status~~ ✓ Compliant; signs BAAs since 2014
16. Security feature inventory (encryption at rest, audit logs, RBAC details)

### Technical Debt
17. Known architectural limitations
18. Technical debt inventory and remediation plans
19. Performance bottlenecks

### Extensibility
20. Customization capabilities inventory
21. Developer platform/marketplace status
