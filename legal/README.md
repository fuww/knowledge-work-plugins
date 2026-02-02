# Legal Plugin

A legal plugin primarily designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application — though it also works in Claude Code. Automates contract review, NDA triage, compliance workflows, legal briefings, and templated responses.

This plugin is configured for **FashionUnited** legal operations, including media law, advertising regulations, GDPR/privacy compliance across 30+ markets, employment law for the international team, and IP/content licensing.

> **Disclaimer:** This plugin assists with legal workflows but does not provide legal advice. Always verify conclusions with qualified legal professionals. AI-generated analysis should be reviewed by licensed attorneys before being relied upon for legal decisions.

## What It Does

This plugin gives you an AI-powered legal assistant that can help with:

- **Contract Review** — Review advertising agreements, media partnerships, employer branding contracts, and content licensing deals against FashionUnited's negotiation playbook. Flags deviations, generates redlines, and provides business impact analysis.
- **NDA Triage** — Rapid screening of incoming NDAs from trade fair partners, advertising clients, and technology vendors. Categorizes as GREEN (standard approval), YELLOW (counsel review), or RED (significant issues).
- **Compliance** — GDPR compliance across 30+ markets, cookie consent, newsletter compliance, job board privacy, and data subject request handling.
- **Legal Briefings** — Daily briefs, topic research, and incident response briefings drawing from connected sources.
- **Templated Responses** — Generate responses for DSARs, advertising inquiries, partnership questions, and editorial matters.

## Installation

```bash
claude plugins add knowledge-work-plugins/legal
```

## Commands

| Command | Description |
|---|---|
| `/review-contract` | Review advertising, partnership, employer branding, or licensing contracts against FashionUnited playbook |
| `/triage-nda` | Rapid NDA screening for trade fair, advertising, or vendor relationships |
| `/vendor-check` | Check agreement status with a vendor across connected systems |
| `/brief` | Generate daily briefs, topic research, or incident response briefings |
| `/respond` | Generate templated responses for DSARs, advertising inquiries, and common questions |

## Skills

| Skill | Description |
|---|---|
| `contract-review` | FashionUnited contract types, playbook positions, redline generation |
| `nda-triage` | NDA screening for media partnerships, advertising clients, technology vendors |
| `compliance` | GDPR across 30+ markets, cookie consent, newsletter compliance, job board privacy |
| `canned-responses` | Templates for DSARs, advertising inquiries, editorial matters, partnership questions |
| `legal-risk-assessment` | Media law, advertising, privacy, employment, and IP risk frameworks |
| `meeting-briefing` | Briefings for trade fair partnerships, advertising negotiations, vendor evaluations |

## Example Workflows

### Reviewing an Advertising Agreement

```
> /review-contract
Type: Advertising agreement
Counterparty: Major fashion brand
Your side: FashionUnited (publisher)
Focus: Payment terms, creative approval, exclusivity
```

Claude will review the agreement against FashionUnited's advertising playbook, flag deviations from standard terms, and generate redlines for negotiation.

### Triaging a Trade Fair Partnership NDA

```
> /triage-nda
[paste or upload NDA from trade fair organizer]
```

Claude will classify the NDA as GREEN (use standard delegation), YELLOW (specific issues to review), or RED (requires full legal review or counterproposal with FashionUnited standard form).

### GDPR Data Subject Request

```
> /respond dsr
Type: Deletion request
Requester: Newsletter subscriber
Market: Germany
```

Claude will generate a GDPR-compliant response acknowledging the request, with appropriate language for the German market and FashionUnited's standard response timeline.

### Daily Legal Brief

```
> /brief daily
```

Claude will scan connected sources (Google Workspace, Slack, Vtiger CRM, GitHub) for contract requests, compliance questions, approaching deadlines, and meetings needing legal prep.

## Configuration

### Connect your tools

The plugin works best when connected to FashionUnited's tools via MCP. Pre-configured servers include Slack, Google Workspace, Vtiger CRM, and GitHub. See [CONNECTORS.md](CONNECTORS.md) for the full list of supported categories and options.

## Data Sources

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

This plugin is configured for FashionUnited's legal tool stack:

**Included MCP connections:**
- Chat (Slack) for team communication and contract request channels
- Google Workspace for documents (contracts, templates, legal memos), email, and calendar
- Vtiger CRM for partner and advertiser relationship context
- GitHub for matter tracking and legal knowledge base

**Additional options:**
- See [CONNECTORS.md](CONNECTORS.md) for alternative tools in each category

## FashionUnited Legal Context

This plugin includes context for FashionUnited's legal operations:

| Area | Purpose | Key Activities |
|------|---------|----------------|
| Media Law | Publishing rights, editorial liability | Press law compliance, right of reply, source protection |
| Advertising | Ad standards, native content | Advertising agreement review, disclosure compliance |
| GDPR/Privacy | Data protection across 30+ markets | Cookie consent, DSARs, newsletter compliance, job board privacy |
| Employment | International team management | Employment contracts, contractor agreements, works council |
| IP/Content | Content licensing, image rights | Photography licenses, syndication, user-generated content |

### Primary Contract Types

| Contract Type | Description | Review Focus |
|---------------|-------------|--------------|
| Advertising Agreements | Display ads, sponsored content, native advertising | Payment, creative approval, exclusivity, make-goods |
| Media Partnerships | Trade fair coverage, federation relationships | Exclusivity, content rights, revenue share |
| Employer Branding | Company profiles, recruitment packages | Content approval, performance metrics, duration |
| Content Licensing | Photography, editorial syndication, API access | Scope, territory, attribution, indemnification |
| Employment Contracts | Full-time, contractors, freelancers | Jurisdiction, IP assignment, non-compete |
| Data Processing Agreements | Vendor and partner DPAs | GDPR Article 28, SCCs, breach notification |

### Multi-Market Compliance

FashionUnited operates in 30+ markets with an EU focus:

| Region | Key Jurisdictions | Primary Legal Considerations |
|--------|-------------------|------------------------------|
| EU Core | Netherlands (HQ), Germany, France, UK | GDPR, Digital Services Act, local press law |
| EU Extended | Italy, Spain, Belgium, Austria, Switzerland | Advertising codes, consumer protection |
| Americas | US, Brazil | CCPA/CPRA, LGPD |
| Asia Pacific | China, India, Japan | PIPL, local data protection |

### Standard Playbook Positions

FashionUnited's default negotiating positions (configured in skills):

| Term | Standard Position | Escalation Trigger |
|------|------------------|-------------------|
| Liability Cap | 12 months fees | Uncapped liability |
| Indemnification | Mutual IP and data breach | Unilateral broad indemnification |
| Payment | Net 30 | Prepayment requirements |
| Governing Law | Netherlands | Non-standard jurisdictions |
| Data Protection | GDPR-compliant DPA required | No DPA when personal data processed |

## File Structure

```
legal/
├── .claude-plugin/plugin.json
├── .mcp.json
├── README.md
├── CONNECTORS.md
├── commands/
│   ├── review-contract.md
│   ├── triage-nda.md
│   ├── vendor-check.md
│   ├── brief.md
│   └── respond.md
└── skills/
    ├── contract-review/SKILL.md
    ├── nda-triage/SKILL.md
    ├── compliance/SKILL.md
    ├── canned-responses/SKILL.md
    ├── legal-risk-assessment/SKILL.md
    └── meeting-briefing/SKILL.md
```
