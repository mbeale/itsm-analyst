---
title: AI Suggested Solutions Capability
summary: Documentation of SolarWinds Service Desk GenAI Suggested Solutions feature that provides agents with AI-generated solutions, draft responses, and problem linking recommendations.
last_updated: 2025-01-16
status: Complete
---

# AI Suggested Solutions

## 1. Executive Summary

**Elevator Pitch:** GenAI Suggested Solutions provides agents with AI-generated actionable information within incident tickets, including solutions, draft responses, and summaries drawn from existing knowledge sources.

**Value Proposition:**
- **Faster Resolution:** Surface relevant solutions without manual searching
- **Knowledge Leverage:** Automatically utilize closed tickets, solutions, and KB articles
- **Consistency:** Standardized response quality across all agents
- **Pattern Detection:** Identify problem ticket opportunities from incident patterns

---

## 2. Core Capabilities

### What GenAI Provides

| Capability | Description |
|------------|-------------|
| **Suggested Solutions** | Displays missing information and recommended agent actions |
| **Draft Responses** | Pre-written replies including requests for missing details and suggested requester actions |
| **Draft Summaries** | AI-generated summaries for comments and resolutions |
| **Problem Linking** | Suggests creating problem tickets or linking incidents to existing problems (Labs feature) |

### Knowledge Sources Searched
The system searches across multiple internal knowledge sources:
1. **Closed Tickets** — Previously resolved incidents with similar characteristics
2. **Internal Solutions** — Documented resolution procedures
3. **Approved Solutions** — Vetted and published resolution content
4. **Knowledge Base Articles** — Prioritized by number of attached incidents

### Prioritization Logic
- KB articles are ranked by the **number of incidents attached** to determine suggestion relevance
- Solutions regenerate automatically when ticket details or categories change

---

## 3. Plan Requirements & Scope

### Availability

| Requirement | Details |
|-------------|---------|
| **Plan Tier** | Premier plan only |
| **Configuration** | Must be enabled through system settings |
| **Mobile** | Not available in mobile app |

### Scope Limitations

| Boundary | Behavior |
|----------|----------|
| **Tenant** | Searches limited to currently selected tenant account |
| **Category** | Searches scoped to defined category in tickets and solutions |
| **ESM** | For ESM customers, searches restricted to specific service provider's data |

**Strategic Note:** ESM data isolation is maintained — HR service provider AI suggestions won't surface IT solutions and vice versa.

---

## 4. Agent Experience

### Agent Controls
Agents have full control over AI-generated content:

| Action | Description |
|--------|-------------|
| **Use As-Is** | Apply suggested solution directly |
| **Edit** | Modify suggestion before applying |
| **Ignore/Delete** | Dismiss irrelevant suggestions |
| **Modify** | Adjust to fit specific incident context |

### Workflow Integration
1. **Incident Created/Updated** — GenAI analyzes ticket details and category
2. **Suggestions Generated** — System searches knowledge sources
3. **Agent Reviews** — Suggestions displayed within incident view
4. **Agent Decides** — Use, edit, or dismiss suggestions
5. **Auto-Regenerate** — New suggestions when ticket details change

---

## 5. Problem Management Integration (Labs)

### Pattern Detection
GenAI can identify when multiple incidents suggest:
- **New Problem Ticket** — Pattern of similar incidents indicates underlying issue
- **Link to Existing Problem** — Incident matches characteristics of known problem

**Status:** Available in Labs — indicates this is an emerging/beta capability.

---

## 6. Strategic Implications

### Competitive Positioning

| Aspect | Assessment |
|--------|------------|
| Premier-Only | Drives upsell to highest tier |
| ESM-Aware | Maintains data isolation across service providers |
| Knowledge Leverage | Differentiator for orgs with mature KB content |

### Market Alignment
- **AI/ML Integration Trend:** Direct alignment with 60% of enterprises using AI-driven ITSM
- **Resolution Time Reduction:** Supports industry benchmark of ~50% incident resolution improvement with AI
- **Knowledge Management:** Incentivizes KB article creation and maintenance

### Adoption Considerations
- Value increases with knowledge base maturity
- Organizations with sparse KB content will see limited benefit initially
- Closed ticket history provides immediate value without KB investment

---

## 7. Information Required to Complete Analysis

1. **Adoption metrics** — What % of Premier customers have GenAI enabled?
2. **Effectiveness data** — Average resolution time improvement with suggestions?
3. **Suggestion acceptance rate** — How often do agents use vs. dismiss suggestions?
4. **KB correlation** — Is there data showing suggestion quality vs. KB article count?
5. **Problem detection accuracy** — How effective is the Labs problem linking feature?
6. **Mobile roadmap** — When will GenAI be available in mobile app?
7. **Competitive comparison** — How does this compare to ServiceNow Virtual Agent or Freshservice Freddy?

---

## External Sources

- [SolarWinds Service Desk - GenAI Suggested Solutions Documentation](https://documentation.solarwinds.com/en/success_center/swsd/content/completeguidetoswsd/genai-suggestedsolutions.htm)
