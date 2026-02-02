---
description: Package an escalation for engineering, product, or leadership with full context
argument-hint: "<issue summary> [customer name]"
---

# Escalate

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Package a support issue into a structured escalation brief for engineering, product, or leadership. Gathers context, structures reproduction steps, assesses business impact, and identifies the right escalation target. Optimized for FashionUnited's job board, feed integrations, and platform issues.

## Usage

```
/escalate <issue description> [client name or account]
```

Examples:
- `/escalate XML feed validation failing for all Greenhouse clients since this morning`
- `/escalate Scraper creating duplicate jobs — 5 recruitment agencies affected this week`
- `/escalate Employer branding pages not updating — CDN cache issue suspected`
- `/escalate Banner ads not delivering for fashion week campaign — client deadline Friday`
- `/escalate Major client threatening to switch to LinkedIn Jobs over missing analytics feature`

## Workflow

### 1. Understand the Issue

Parse the input and determine:

- **What's broken or needed**: The core technical or product issue
- **Product area**: Job posting, XML feed, scraper, employer branding, or advertising?
- **Who's affected**: Specific client(s), segment (all Workday feeds), or all users
- **How long**: When did this start? How long has the client been waiting?
- **What's been tried**: Any troubleshooting or workarounds attempted
- **Why escalate now**: What makes this need attention beyond normal support

Use the "When to Escalate vs. Handle in Support" criteria from the **escalation** skill to confirm this warrants escalation.

### 2. Gather Context

Pull together relevant information from available sources:

- **~~CRM** (if connected): Account details, key contacts, previous escalations, contract value
- **~~chat**: Internal discussions about this issue, similar reports from other clients
- **~~project tracker** (if connected): Related bug reports or feature requests, engineering status
- **~~knowledge base**: Known issues or workarounds, relevant documentation
- **~~email**: Client correspondence, timeline of communications

### 3. Assess Business Impact

Using the impact dimensions from the **escalation** skill, quantify:

- **Breadth**: How many clients/jobs affected? Growing?
- **Depth**: Jobs not appearing vs. minor display issue?
- **Duration**: How long has this been going on?
- **Revenue**: ARR at risk? Pending renewals affected?
- **Time pressure**: Campaign deadline? Fashion week? Hiring freeze ending?

### 4. Determine Escalation Target

Using the escalation tiers from the **escalation** skill, identify the right target:

| Target | When |
|--------|------|
| **L2 Support** | Complex troubleshooting, feed validation, client-specific config |
| **Engineering** | Confirmed bugs, feed parser issues, scraper problems, infrastructure |
| **Product** | Feature requests with business pressure, design decisions |
| **Leadership** | High-value client at risk, SLA breach, competitive threat |

### 5. Structure Reproduction Steps (for bugs)

If the issue is a bug, document clear repro steps with:
- Feed URL or scraper configuration
- Specific jobs or job IDs affected
- Error messages or log entries
- Browser/environment details if relevant
- What's been ruled out

### 6. Generate Escalation Brief

```
## ESCALATION: [One-line summary]

**Severity:** [Critical / High / Medium]
**Target team:** [Engineering / Product / Leadership]
**Product area:** [Job Posting / XML Feed / Scraper / Employer Branding / Advertising]
**Reported by:** [Your name/team]
**Date:** [Today's date]

### Impact
- **Clients affected:** [Who and how many]
- **Jobs/campaigns affected:** [Number and type]
- **Revenue at risk:** [If applicable]
- **Time in queue:** [How long this has been an issue]

### Issue Description
[Clear, concise description of the problem — 3-5 sentences]

### What's Been Tried
1. [Troubleshooting step and result]
2. [Troubleshooting step and result]
3. [Troubleshooting step and result]

### Reproduction Steps
[If applicable — feed URL, job IDs, configuration details]

### Client Communication
- **Last update to client:** [Date and what was communicated]
- **Client expectation:** [What they're expecting and by when]
- **Escalation risk:** [Will they escalate further if not resolved by X?]

### What's Needed
- [Specific ask — "investigate feed parser", "prioritize fix",
  "make product decision on X", "approve exception for Y"]
- **Deadline:** [When this needs resolution or an update]

### Supporting Context
- [Related tickets or links]
- [Internal discussion threads]
- [Feed validation logs or error messages]
```

### 7. Offer Next Steps

After generating the escalation:
- "Want me to post this in a ~~chat channel for the target team?"
- "Should I update the client with an interim response?"
- "Want me to set a follow-up reminder to check on this?"
- "Should I draft a client-facing update with the current status?"
