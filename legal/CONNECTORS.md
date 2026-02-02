# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~cloud storage` might mean Google Drive, Box, or any other storage provider with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (cloud storage, chat, office suite, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Slack | Microsoft Teams |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Office suite | `~~office suite` | Google Workspace (Docs, Sheets, Slides) | Microsoft 365 |
| Cloud storage | `~~cloud storage` | Google Workspace (Drive) | Microsoft 365, Dropbox |
| CRM | `~~CRM` | Vtiger CRM | HubSpot, Salesforce |
| Project tracker | `~~project tracker` | GitHub (Issues + Projects) | Jira, Linear |
| Knowledge base | `~~knowledge base` | GitHub (Wiki, Discussions) | Notion, Confluence |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's legal operations across media, advertising, and international employment:

- **Google Workspace** provides document management (contracts, templates, legal memos), email (legal inbox), and calendar for FashionUnited's legal workflows
- **Vtiger CRM** provides partner and advertiser relationship context, contract history, and account information
- **GitHub** provides matter tracking via Issues and legal knowledge base documentation
- **Slack** provides team communication, contract request channels, and stakeholder coordination

## Setup requirements

1. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and enabled APIs (Gmail, Calendar, Drive, Docs, Sheets)
2. **Vtiger CRM**: Requires Pipedream account for hosted MCP access
3. **GitHub**: Requires Personal Access Token with repo access
4. **Slack**: Works with hosted MCP endpoint (no additional setup)

## FashionUnited legal context

The legal plugin is optimized for FashionUnited's legal needs as an international media company operating in 30+ markets:

### Primary Legal Areas

| Area | Description | Key Considerations |
|------|-------------|-------------------|
| Media Law | Publishing rights, editorial liability, source protection | Multi-jurisdiction press law, right of reply, content liability |
| Advertising Regulations | Advertising standards, disclosure requirements | EU Advertising Directive, national advertising codes, influencer disclosure |
| GDPR/Privacy | Data protection compliance across EU and global markets | Cookie consent, newsletter subscriptions, user data, job applicant data |
| Employment Law | International team employment, contractor relationships | EU employment directives, local labor laws, remote work policies |
| IP/Content Licensing | Content licensing, image rights, syndication | Photography licensing, agency agreements, user-generated content |

### Contract Types

| Contract Type | Description | Key Clauses |
|---------------|-------------|-------------|
| Advertising Agreements | Display advertising, sponsored content, native advertising | Placement, creative approval, performance metrics, payment terms |
| Media Partnerships | Trade fair coverage, federation relationships, content syndication | Exclusivity, content rights, branding requirements, revenue share |
| Employer Branding | Company profiles, employer branding packages, recruitment campaigns | Content creation, logo usage, duration, performance reporting |
| Content Licensing | Photography, editorial content, API access | License scope, attribution, territorial rights, usage restrictions |
| Employment Contracts | Full-time employment, contractor agreements, freelance arrangements | Jurisdiction, notice periods, IP assignment, non-compete (where permitted) |
| Data Processing Agreements | Vendor DPAs, advertising partner DPAs, analytics DPAs | GDPR Article 28, SCCs, sub-processor management, breach notification |

### Multi-Jurisdiction Compliance

FashionUnited operates across 30+ markets with an EU focus:

| Region | Key Jurisdictions | Primary Legal Considerations |
|--------|-------------------|------------------------------|
| EU Core | Netherlands (HQ), Germany, France, UK | GDPR, EU e-Privacy, Digital Services Act, local press law |
| EU Extended | Italy, Spain, Belgium, Austria, Switzerland | Language requirements, local advertising codes, consumer protection |
| Americas | US, Brazil, Mexico | CCPA/CPRA, LGPD, local advertising standards |
| Asia Pacific | China, India, Japan, Australia | PIPL, local data protection, content restrictions |

### Regulatory Landscape

| Regulation | Scope | FashionUnited Impact |
|------------|-------|----------------------|
| GDPR | EU/EEA personal data | Newsletter subscriptions, job board users, analytics |
| Digital Services Act | Online platforms in EU | Content moderation, advertising transparency, user reporting |
| EU Copyright Directive | Digital content | News snippets, image licensing, content aggregation |
| e-Privacy Directive | Electronic communications | Cookies, email marketing, tracking |
| National Press Laws | Country-specific | Right of reply, journalist privilege, publication liability |
| Advertising Standards | Self-regulatory + statutory | Native advertising disclosure, sponsored content labeling |

### Standard Legal Positions

FashionUnited's standard negotiating positions for common contract terms:

| Term | Standard Position | Acceptable Range | Escalation Trigger |
|------|------------------|------------------|-------------------|
| Liability Cap | 12 months fees paid/payable | 6-24 months | Uncapped liability |
| Indemnification | Mutual IP and data breach | Mutual for core areas | Unilateral broad indemnification |
| Payment Terms | Net 30 | Net 14-45 | Prepayment requirements |
| Term | Annual with 30-day termination for convenience | Multi-year with termination after Year 1 | No termination for convenience |
| Governing Law | Netherlands | Major EU jurisdictions, UK, US (NY, DE) | Non-standard jurisdictions |
| Data Protection | GDPR-compliant DPA required | — | No DPA when personal data processed |
| IP Ownership | FashionUnited retains editorial IP; client retains brand assets | Clear ownership split | Broad IP assignment claims |

### FashionUnited Contract Templates

Standard templates maintained in Google Drive:

| Template | Use Case | Review Requirement |
|----------|----------|-------------------|
| Advertising Insertion Order | Standard display advertising | Self-service below threshold |
| Sponsored Content Agreement | Native advertising, advertorials | Legal review required |
| Media Partnership Agreement | Trade fair and federation partnerships | Legal review required |
| Employer Branding Agreement | Company profiles, recruitment packages | Self-service below threshold |
| Content License Agreement | Inbound and outbound content licensing | Legal review required |
| Freelance Agreement | Contributor and freelance arrangements | Template use, legal review for modifications |
| Standard DPA | Data processing addendum for vendors and partners | Legal review for modifications |
| Standard NDA | Mutual confidentiality agreement | Self-service using standard form |
