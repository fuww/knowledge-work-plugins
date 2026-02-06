# Customer Support Plugin

A customer support plugin for FashionUnited's Customer Service team, designed for [Cowork](https://claude.com/product/cowork) and Claude Code. Optimized for fashion recruitment platform support: job posting issues, XML feed troubleshooting, employer branding page management, and advertising client support.

## FashionUnited Configuration

This plugin is customized for FashionUnited's customer service workflows:
- **Vtiger CRM** for ticket management and client history
- **Google Workspace** for jobs@fashionunited.com managed inbox
- **GitHub** for bug reports and internal knowledge base
- **Google Chat** for team communication and escalations

**Client Types**: Fashion brands, retailers, recruitment agencies, trade fairs, federations

**Products Supported**: Job board, employer branding pages, advertising (banner/advertorial)

**Common Issues**: Dashboard login, XML feed parsing, scraper integration, employer page updates, ad delivery

## Installation

```bash
claude plugins add knowledge-work-plugins/customer-support
```

## Commands

Explicit workflows you invoke with a slash command:

| Command | Description |
|---|---|
| `/triage` | Categorize, prioritize, and route a support ticket or customer issue |
| `/research` | Multi-source research on a customer question or platform topic |
| `/draft-response` | Draft a customer-facing response for any situation |
| `/escalate` | Package an escalation for engineering, product, or leadership |
| `/kb-article` | Draft a knowledge base article from a resolved issue |

All commands work **standalone** (paste ticket text, describe the issue) and get **supercharged** with MCP connectors.

## Skills

Domain knowledge Claude uses automatically when relevant:

| Skill | Description |
|---|---|
| `ticket-triage` | Category taxonomy for job posting issues, priority framework (P1-P4), routing rules |
| `customer-research` | Multi-source research methodology, source prioritization, answer synthesis |
| `response-drafting` | Communication best practices for recruitment platform clients, tone guidelines |
| `escalation` | Escalation tiers for product/engineering, structured escalation format, impact assessment |
| `knowledge-management` | Article structure standards for job board documentation, writing for searchability |

## Example Workflows

### Triaging a Job Posting Issue

```
You: /triage Client says their XML feed jobs aren't appearing on the site —
     they submitted 50 jobs yesterday but only 12 are showing

Claude: Analyzing the issue...

## Triage: XML feed partial import — jobs missing

**Category:** Integration / Data
**Priority:** P2 — High (core functionality, partial data loss)
**Product area:** Job Feed / XML Integration

### Routing Recommendation
Route to: Tier 2 Support (investigate feed validation logs,
check for parsing errors or field mapping issues)

### Suggested Initial Response
[Draft acknowledging the issue, asking for feed URL and
sample of missing jobs, offering to check import logs]
```

### Researching a Platform Question

```
You: /research Does our XML feed support custom fields for
     tracking applicant sources?

Claude: Let me check across available sources...

[Searches internal docs, GitHub wiki, previous tickets —
 synthesizes answer with confidence level and source attribution]
```

### Packaging an Escalation

```
You: /escalate Scraper is creating duplicate job postings —
     3 recruitment agencies reported this week

Claude: I'll gather context and build the escalation brief...

[Pulls ticket history, identifies affected accounts,
 structures reproduction steps, assesses business impact,
 and generates a structured escalation for engineering]
```

### Drafting a Response

```
You: /draft-response Client escalation — their employer branding
     page hasn't updated in 2 weeks despite multiple submissions

Claude: [Generates empathetic, professional response acknowledging
 the frustration, taking ownership, providing a clear action
 plan with timeline, and offering a call]
```

### Writing a KB Article

```
You: /kb-article How to troubleshoot XML feed validation errors —
     resolved this for the fourth client this month

Claude: [Generates a structured how-to article with prerequisites,
 step-by-step validation process, common error codes, and
 troubleshooting tips — optimized for search]
```

## Standalone + Supercharged

Every command and skill works without any integrations:

| What You Can Do | Standalone | Supercharged With |
|-----------------|------------|-------------------|
| Triage tickets | Paste ticket text | CRM MCP |
| Research issues | Web search + your context | Knowledge base, Email MCPs |
| Draft responses | Describe situation | CRM, Email history MCPs |
| Package escalations | Describe issue | CRM, Issue tracker MCPs |
| Write KB articles | Describe resolution | Knowledge base MCP |

## MCP Integrations

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

**Configured integrations:**

| Category | Tool | What It Enables |
|---|---|---|
| **CRM** | Vtiger CRM | Client records, ticket history, account context |
| **Email** | Google Workspace (Gmail) | jobs@fashionunited.com inbox, correspondence history |
| **Project Tracker** | GitHub | Bug reports, feature requests, internal issues |
| **Knowledge Base** | GitHub (Wiki) | Internal documentation, runbooks, troubleshooting guides |
| **Chat** | Google Chat | Team discussions, client escalation spaces |

See [CONNECTORS.md](CONNECTORS.md) for setup requirements.

## FashionUnited Platform Knowledge

### Job Posting Products

| Product | Description | Common Support Topics |
|---------|-------------|----------------------|
| **Dashboard** | Self-service job posting interface | Login, credits, posting errors, edit requests |
| **XML Feed** | Automated job import from ATS systems | Feed validation, field mapping, missing jobs, duplicates |
| **Scraper** | Automated job collection from client websites | URL configuration, job detection, stale listings |
| **Employer Branding** | Company profile pages with culture content | Page setup, content updates, asset management |
| **Advertising** | Banner and advertorial campaigns | Targeting, delivery, reporting |

### XML Feed Integration

Common ATS systems with XML feed integrations:
- Workday
- Greenhouse
- Lever
- SmartRecruiters
- Taleo
- iCIMS
- Bullhorn

Feed issues typically involve: field mapping, character encoding, missing required fields, feed URL changes, authentication.

### Priority Guidelines for FashionUnited

| Priority | Criteria | Examples |
|----------|----------|----------|
| **P1** | All jobs down, data loss, security breach | Site-wide feed failure, scraper deleting live jobs |
| **P2** | Major client blocked, significant data issue | XML feed not importing, employer page broken |
| **P3** | Single client inconvenienced, workaround exists | Dashboard UI bug, minor display issue |
| **P4** | Feature request, minor issue, general question | Enhancement ideas, how-to questions |
