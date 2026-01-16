---
title: AI Ticket Summaries Capability
summary: Documentation of SolarWinds Service Desk GenAI Ticket Summaries feature that automatically generates summaries from ticket conversations to accelerate resolution and handovers.
last_updated: 2025-01-16
status: Complete
---

# AI Ticket Summaries

## 1. Executive Summary

**Elevator Pitch:** GenAI Ticket Summaries automatically generate concise summaries from ticket conversations, providing key insights in a format that requires minimal editing when logging resolutions.

**Value Proposition:**
- **Faster Handovers:** New assignees quickly understand ticket context
- **Reduced Reading Time:** Condense lengthy conversations into key points
- **Resolution Quality:** Pre-drafted summaries improve documentation consistency
- **Knowledge Building:** Facilitates creation of reusable resolution content

---

## 2. Core Capabilities

### What Gets Summarized
GenAI analyzes ticket content and generates summaries that capture:
- Key conversation points
- Problem description and context
- Actions taken
- Resolution-ready format

### Knowledge Sources
The system searches across internal sources to inform summaries:
1. **Closed Tickets** — Previously resolved incidents within tenant
2. **Internal & Approved Solutions** — Documented resolution procedures
3. **Knowledge Base Articles** — Relevant reference content

### Auto-Regeneration
Summaries regenerate automatically when:
- Ticket details change
- Category is modified
- Content continues to meet generation criteria

---

## 3. Generation Criteria

Summaries are **only generated** when all conditions are met:

| Criterion | Threshold |
|-----------|-----------|
| **Ticket Status** | Not in Resolved status |
| **Comment Count** | More than 3 comments |
| **Comment Length** | Each comment has 3+ rows |
| **Word Count** | Content exceeds 100 words (excluding HTML) |
| **Priority** | Not set to Low |

**Strategic Note:** These thresholds ensure AI resources are applied to substantive tickets where summaries provide meaningful value, not simple quick-resolution tickets.

---

## 4. Plan Requirements & Scope

### Availability

| Requirement | Details |
|-------------|---------|
| **Plan Tier** | Premier plan only |
| **Configuration** | Must be enabled through Global Settings |
| **Mobile** | Not available in mobile app |

### Scope Limitations

| Boundary | Behavior |
|----------|----------|
| **Tenant** | Searches limited to currently selected tenant account |
| **Category** | Searches scoped to defined category |
| **ESM** | For ESM customers, restricted to specific service provider's tickets only |

---

## 5. Use Cases

### Primary Applications

| Use Case | Benefit |
|----------|---------|
| **Agent Handovers** | New assignees understand context without reading entire history |
| **Extended Tickets** | Teams quickly grasp lengthy, complex resolution processes |
| **High-Volume Content** | Accelerate agent comprehension of detailed conversations |
| **Resolution Documentation** | Streamline logging of resolution descriptions |
| **Escalations** | Provide senior agents/managers with quick context |

### Workflow Integration
1. **Ticket Activity** — Conversation accumulates (>3 comments, >100 words)
2. **Threshold Met** — System detects criteria satisfaction
3. **Summary Generated** — AI creates draft summary
4. **Agent Reviews** — Summary available within ticket view
5. **Resolution Logged** — Agent uses/edits summary for resolution notes

---

## 6. Strategic Implications

### Competitive Positioning

| Aspect | Assessment |
|--------|------------|
| Premier-Only | Drives upsell to highest tier |
| Threshold-Based | Efficient resource usage — AI applied where valuable |
| ESM-Aware | Maintains data isolation across service providers |

### Market Alignment
- **AI/ML Integration Trend:** Aligns with industry push toward AI-assisted agent workflows
- **Resolution Time Reduction:** Reduces time-to-context for complex tickets
- **Documentation Quality:** Addresses common gap in resolution documentation

### Adoption Considerations
- Value scales with ticket complexity and conversation length
- Low-priority quick tickets excluded by design
- Teams with high escalation rates see most benefit

---

## 7. Information Required to Complete Analysis

1. **Adoption metrics** — What % of Premier customers have summaries enabled?
2. **Generation volume** — How many tickets meet the generation thresholds?
3. **Usage rate** — How often do agents use generated summaries vs. ignore?
4. **Time savings** — Measured reduction in time-to-resolution or handover time?
5. **Quality metrics** — Agent satisfaction with summary accuracy?
6. **Mobile roadmap** — When will summaries be available in mobile app?
7. **Threshold configurability** — Can customers adjust the 100-word or 3-comment thresholds?

---

## External Sources

- [SolarWinds Service Desk - GenAI Ticket Summaries Documentation](https://documentation.solarwinds.com/en/success_center/swsd/content/completeguidetoswsd/genai-ticketsummaries.htm)
