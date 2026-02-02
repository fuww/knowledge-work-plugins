# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~project tracker` might mean GitHub, Asana, or any other project tracker with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (chat, project tracker, knowledge base, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Slack | Microsoft Teams |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Office suite | `~~office suite` | Google Workspace (Docs, Sheets, Slides) | Microsoft 365 |
| Cloud storage | `~~cloud storage` | Google Workspace (Drive) | Microsoft 365, Dropbox |
| Project tracker | `~~project tracker` | GitHub (Issues + Projects) | Linear, Jira, Asana |
| Knowledge base | `~~knowledge base` | GitHub (Wiki, Discussions) | Notion, Confluence |
| CRM | `~~CRM` | Vtiger CRM | HubSpot, Salesforce |
| Issue tracking | `~~issue tracking` | beads (bd) | GitHub Issues, Linear |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's product management workflows:

- **GitHub Projects** provides roadmap management using Now-Next-Later columns for planning and prioritization
- **GitHub Issues + beads** provides issue tracking and task management (beads syncs with git for distributed workflow)
- **Google Workspace** provides documents (specs, research), spreadsheets (metrics), and presentations (stakeholder updates)
- **Vtiger CRM** provides customer context and feedback history
- **Slack** provides team communication and stakeholder channels

## Setup requirements

1. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and enabled APIs
2. **GitHub**: Requires Personal Access Token with appropriate repo permissions
3. **Vtiger**: Requires Pipedream account for hosted MCP access
4. **Slack**: Works with hosted MCP endpoint (no additional setup)
5. **beads**: Install via `cargo install bd` (local CLI, no external dependencies)

## FashionUnited product context

The product-management plugin is optimized for FashionUnited's platform:

### Products

| Product | Description | Key Stakeholders |
|---------|-------------|------------------|
| News Platform | Fashion industry news and editorial content | Publishers, fashion professionals |
| Job Board | Fashion industry job listings and career services | Recruiters, job seekers, HR teams |
| B2B Marketplace | Fashion wholesale and trade platform | Brands, retailers, buyers |
| Company Directory | Fashion company profiles and discovery | Brands, retailers, trade professionals |

### Architecture

- **Tech stack**: Elixir/Phoenix backend, GraphQL API, React frontend
- **Infrastructure**: Cloud-native, managed services
- **Data**: PostgreSQL, Elasticsearch, CDN-delivered assets

### 2025-2026 Strategic Initiatives

| Initiative | Status | Impact Area |
|------------|--------|-------------|
| Subscriptions/Paywall | In development | News Platform monetization |
| Store Locator | Planned | Retail discovery, brand visibility |
| AI-First Strategy | In development | Content creation, job matching, search |

## FashionUnited user research context

Key stakeholder groups for user research:

| Stakeholder | Primary Needs | Research Focus |
|-------------|---------------|----------------|
| Fashion publishers | Content reach, monetization, editorial tools | Publishing workflow, audience engagement |
| Recruiters | Candidate reach, employer branding, ATS integration | Job posting efficiency, applicant quality |
| Fashion brands | B2B visibility, wholesale connections, company presence | Discovery, lead generation, brand control |
| Job seekers | Job discovery, application process, career content | Search experience, application funnel |
| Retailers | Supplier discovery, trend information, wholesale sourcing | Sourcing workflow, supplier evaluation |
