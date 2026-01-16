---
title: Runbooks Capability
summary: Documentation of SolarWinds Service Desk Runbooks feature for automated incident resolution workflows, including AI-powered generation capabilities.
last_updated: 2025-01-16
status: Complete
---

# Runbooks

## 1. Executive Summary

**Elevator Pitch:** Runbooks are step-by-step workflow documents that guide agents through incident resolution processes, ensuring consistent and efficient handling of common issues.

**Value Proposition:**
- **Consistency:** Standardized resolution procedures across all agents
- **Efficiency:** Reduce resolution time with pre-defined steps
- **Knowledge Capture:** Document tribal knowledge in reusable formats
- **Audit Trail:** Track execution progress and outcomes

---

## 2. Core Capabilities

### Runbook Structure
- **Steps:** Sequential instructions for incident resolution
- **Attachments:** Supporting documents and resources
- **Custom Fields:** Configurable fields for specific use cases
- **Audit Trail:** Tracks when runbooks are attached and executed

### Key Features

| Feature | Description |
|---------|-------------|
| Attach to Incidents | Link runbooks to incidents for guided resolution |
| Clone Runbooks | Duplicate existing runbooks as templates |
| Delete Runbooks | Remove outdated or unused runbooks |
| Step Tracking | Mark steps complete as agents progress |
| Attachments | Include supporting files and documentation |

### Limitations
| Constraint | Description |
|------------|-------------|
| One per Incident | Only one runbook can be attached to an incident at a time |
| No Mid-Process Replace | Cannot swap runbooks once resolution has started |

---

## 3. AI-Powered Runbook Generation (GenAI)

### Plan Requirement
**Premier Plan Only** — AI-powered runbook generation is exclusive to Premier tier customers.

### Generation Methods

| Method | Description | Use Case |
|--------|-------------|----------|
| **From Documents** | Upload Word or PDF files to auto-generate runbooks | Migrate existing SOPs and procedures |
| **From Free Text** | Describe the process in natural language | Quick creation from verbal knowledge |
| **From Existing Solutions** | Convert resolved incident solutions to runbooks | Capture proven resolution steps |

### How It Works
1. **Input:** Provide source material (document, text, or solution)
2. **Processing:** AI analyzes and structures the content
3. **Output:** Generated runbook with logical steps
4. **Review:** Agent reviews and edits before publishing

### Best Practices for AI Generation
- Provide clear, detailed source material
- Review generated steps for accuracy
- Add organization-specific context as needed
- Test runbooks before broad deployment

---

## 4. Operational Use Cases

### Common Applications
1. **Password Reset Procedures** — Standardized steps for account recovery
2. **New Employee Onboarding** — IT setup checklist for new hires
3. **Software Installation** — Approved installation procedures
4. **Hardware Troubleshooting** — Diagnostic workflows for common issues
5. **Security Incident Response** — Structured response protocols

### Integration Points
- **Incidents:** Primary attachment point for runbooks
- **Knowledge Base:** Runbooks can reference KB articles
- **Automation Rules:** Potential for auto-attachment based on incident type

---

## 5. Strategic Implications

### Competitive Positioning
| Aspect | Assessment |
|--------|------------|
| AI Generation | Differentiator vs. competitors without GenAI capabilities |
| Premier-Only | Drives upsell to highest tier |
| Document Import | Reduces migration friction from existing SOPs |

### Market Alignment
- **AI/ML Integration Trend:** Runbook AI generation aligns with the 60% of enterprises using AI-driven ITSM
- **Knowledge Management:** Addresses need for capturing and standardizing institutional knowledge

---

## 6. Information Required to Complete Analysis

1. **Usage metrics** — What % of customers actively use runbooks?
2. **AI generation adoption** — How many Premier customers use GenAI generation?
3. **Competitive comparison** — How does this compare to ServiceNow's workflow automation?
4. **Roadmap items** — Any planned enhancements to runbook capabilities?
5. **Customer feedback** — Common feature requests for runbooks?

---

## External Sources

- [SolarWinds Service Desk - Runbooks Documentation](https://documentation.solarwinds.com/en/success_center/swsd/content/completeguidetoswsd/runbooks.htm)
