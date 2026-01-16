# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Purpose

This repository serves as a strategic intelligence system for an ITSM platform company. The goal is to maintain organized, up-to-date data that enables answering the strategic questions defined in `questions.md`. This supports decision-making for VP of Strategy and VP of Operations roles.

## Directory Structure

```
analyst/
├── market/          # Broader market intelligence and competitive landscape
│                    # TAM/SAM/SOM, market trends, growth rates, regional data
├── product/         # Internal product information
│                    # Pricing, architecture, roadmap, capabilities, technical debt
├── business/        # Company strategy and goals
│                    # OKRs, product strategy, go-to-market, financial targets
├── projects/        # Internal initiatives
│                    # Active projects solving specific problems, status, owners
├── customers/       # Customer intelligence
│                    # Target segments, personas, pain points, key accounts, metrics
├── competitors/     # Competitive intelligence
│                    # Pricing, positioning, target segments, strategic moves, investments
├── questions/       # Strategic questions and answers
│   ├── questions.md # Numbered index of all 53 strategic questions
│   └── question_N.md # Individual answer files (e.g., question_1.md)
└── register.md      # Inbox for new facts awaiting processing
```

## File Standards

### Front Matter Requirements

Every `.md` file must include YAML front matter:

```yaml
---
title: [Descriptive title]
summary: [1-2 sentence description of file contents]
last_updated: YYYY-MM-DD
status: [Draft | In Progress | Complete | Needs Review]
---
```

### Missing Information Section

Every file must end with a section titled `## Information Required to Complete Analysis` or `## Missing Information` that lists:
- Specific data points that are not publicly available
- Internal company data needed to complete the analysis
- Questions that need answers from subject matter experts

### Update Protocol

When updating any file:
1. Update the `last_updated` field in front matter
2. Update the `status` field if applicable
3. Revise the missing information section if gaps have been filled

## Answering Questions

When asked a question:

1. **Check `questions.md`** to understand if it maps to a known strategic question
2. **Search relevant folders** for existing data that provides context
3. **Synthesize available information** into a response
4. **State what's missing** if the available data is insufficient to fully answer
5. **Recommend data collection** if critical gaps exist

### Response Format for Questions

```
## Answer
[Response based on available data]

## Data Sources Used
- [List of files referenced]

## Confidence Level
[High | Medium | Low] - based on data completeness

## Missing Context
[List specific data that would improve the answer, if any]
```

## Data Collection Guidelines

### Public Data Sources
- Market research reports (Gartner, Forrester, IDC)
- Competitor websites and press releases
- SEC filings for public companies
- Industry analyst reports
- News and trade publications

### Internal Data (Requires Access)
- CRM exports (Salesforce, HubSpot)
- Product analytics (Pendo, Amplitude)
- Financial systems
- Support ticket data
- Win/loss analysis reports

## Fact Register Workflow

`register.md` serves as an inbox for quick fact capture.

### Adding Facts

When the user says "add a fact", "note this", "remember that", or similar:
1. Add the fact to the `## Unprocessed Facts` section in `register.md`
2. Format: `- [YYYY-MM-DD] FACT (Source: X if provided)`
3. Do NOT update other files at this time

### Processing the Register

When the user says "process the register", "update files from register", or similar:
1. Read each unprocessed fact
2. Identify the appropriate file(s) to update
3. Update those files with the new information
4. Move the fact to `## Processed Facts` with notation: `→ updated FILE`
5. Update `last_updated` in any modified files

## Key Files

- `questions/questions.md` - Numbered index of 53 strategic questions
- `questions/question_N.md` - Individual answer files with sources and confidence levels
- `market/size.md` - TAM/SAM/SOM analysis with market sizing data
- `register.md` - Inbox for new facts awaiting processing
