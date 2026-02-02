---
description: Triage and prioritize a support ticket or customer issue
argument-hint: "<ticket or issue description>"
---

# Triage

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Categorize, prioritize, and route an incoming support ticket or customer issue. Produces a structured triage assessment with a suggested initial response. Optimized for FashionUnited's job board, employer branding, and advertising support.

## Usage

```
/triage <ticket text, customer message, or issue description>
```

Examples:
- `/triage Client says their XML feed jobs aren't appearing — submitted 50 jobs but only 12 showing`
- `/triage Employer branding page shows old logo despite updating it twice this week`
- `/triage Recruitment agency can't log into the job posting dashboard — getting a 403 error`
- `/triage Banner campaign not delivering impressions — client spent their budget but low reach`
- `/triage Feature request: they want to export job performance metrics as CSV`

## Workflow

### 1. Parse the Issue

Read the input and extract:

- **Core problem**: What is the client actually experiencing?
- **Product area**: Dashboard, XML feed, scraper, employer branding, or advertising?
- **Client context**: Who is this? Account type, plan level, or history available?
- **Urgency signals**: Are jobs not appearing? Is a campaign deadline approaching?
- **Emotional state**: Frustrated, confused, matter-of-fact, escalating?

### 2. Categorize and Prioritize

Using the category taxonomy and priority framework from the **ticket-triage** skill:

- Assign a **primary category** (job posting, feed/integration, employer branding, advertising, account, billing) and an optional secondary category
- Assign a **priority** (P1–P4) based on impact and urgency
- Identify the **product area** the issue maps to

### 3. Check for Duplicates and Known Issues

Before routing, check available sources:

- **~~CRM**: Search for similar open or recently resolved tickets for this client
- **~~knowledge base**: Check for known issues or existing documentation
- **~~project tracker**: Check if there's an existing bug report or feature request

### 4. Determine Routing

Using the routing rules from the **ticket-triage** skill, recommend which team or queue should handle this based on category and complexity.

### 5. Generate Triage Output

```
## Triage: [One-line issue summary]

**Category:** [Primary] / [Secondary if applicable]
**Priority:** [P1-P4] — [Brief justification]
**Product area:** [Dashboard / XML Feed / Scraper / Employer Branding / Advertising]

### Issue Summary
[2-3 sentence summary of what the client is experiencing]

### Key Details
- **Client:** [Name/account if known]
- **Impact:** [Jobs affected, campaign status, page visibility]
- **Workaround:** [Available / Not available / Unknown]
- **Related tickets:** [Links to similar issues if found]
- **Known issue:** [Yes — link / No / Checking]

### Routing Recommendation
**Route to:** [Team or queue]
**Why:** [Brief reasoning]

### Suggested Initial Response
[Draft first response to the client — acknowledge the issue,
set expectations, provide workaround if available.
Use the auto-response templates from the ticket-triage skill
as a starting point.]

### Internal Notes
- [Any additional context for the agent picking this up]
- [Feed URL, scraper config, or account details if relevant]
- [Escalation triggers to watch for]
```

### 6. Offer Next Steps

After presenting the triage:
- "Want me to draft a full response to the client?"
- "Should I search for more context on this issue?"
- "Want me to check if this is a known issue in the tracker?"
- "Should I escalate this? I can package it with /escalate."
