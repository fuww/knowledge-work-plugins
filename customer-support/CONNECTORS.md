# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~CRM` might mean Vtiger, HubSpot, or any other CRM with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (CRM, chat, email, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Google Chat | Microsoft Teams |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| CRM | `~~CRM` | Vtiger CRM | HubSpot, Salesforce |
| Knowledge base | `~~knowledge base` | GitHub (Wiki, Discussions) | Notion, Confluence |
| Project tracker | `~~project tracker` | GitHub (Issues, Projects) | Jira, Linear |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited Customer Service team workflows:

- **Vtiger CRM** provides customer records, ticket history, and account context for job board clients
- **Google Workspace** provides email (Gmail) for jobs@fashionunited.com managed inbox and calendar
- **GitHub** provides issue tracking for bug reports and knowledge base for internal documentation
- **Google Chat** provides team communication and client escalation channels

## Setup requirements

1. **Vtiger CRM**: Requires Pipedream account for hosted MCP access
2. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials
3. **GitHub**: Requires Personal Access Token with repo access
4. **Google Chat**: Accessed via Google Workspace MCP (included in google-workspace configuration)

## FashionUnited customer service context

The customer-support plugin is optimized for FashionUnited's customer service operations:

- **Job posting support**: Dashboard submissions, feed/scraper issues, XML integrations with ATS systems
- **Employer branding**: Company page setup, content updates, branding asset management
- **Advertising clients**: Banner campaigns, advertorials, campaign performance issues
- **Client types**: Fashion brands, retailers, recruitment agencies, trade fairs, federations
- **Communication channels**: jobs@fashionunited.com, Google Chat, Vtiger cases

## FashionUnited platform knowledge

Common support topics requiring product knowledge:

| Area | Common Issues | Typical Resolution |
|------|---------------|-------------------|
| Job posting dashboard | Login issues, posting errors, credit balance | Account reset, manual posting, credit adjustment |
| XML feeds | Feed not updating, parsing errors, missing fields | Feed validation, ATS coordination, field mapping |
| Scraper integration | Jobs not appearing, duplicate postings, stale listings | Scraper configuration, URL verification, cache refresh |
| Employer branding | Page not visible, content not updating, asset issues | CDN cache, CMS sync, asset re-upload |
| Advertising | Banner not showing, wrong targeting, reporting issues | Ad server check, targeting audit, reporting sync |
