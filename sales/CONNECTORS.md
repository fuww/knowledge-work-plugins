# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~CRM` might mean Vtiger, HubSpot, or any other CRM with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (CRM, chat, email, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Chat | `~~chat` | Slack | Microsoft Teams |
| CRM | `~~CRM` | Vtiger CRM | HubSpot, Salesforce, Close |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Knowledge base | `~~knowledge base` | GitHub (Wiki, Discussions) | Notion, Confluence |
| Project tracker | `~~project tracker` | GitHub (Issues, Projects) | Jira, Linear |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's commercial team workflows:

- **Vtiger CRM** provides pipeline management, contact tracking, and deal history
- **Google Workspace** provides email (Gmail) and calendar for scheduling and follow-ups
- **GitHub** provides project tracking and knowledge base for sales materials
- **Slack** provides team communication and deal discussions

## Setup requirements

1. **Vtiger CRM**: Requires Pipedream account for hosted MCP access
2. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials
3. **GitHub**: Requires Personal Access Token with repo access
4. **Slack**: Works with hosted MCP endpoint (no additional setup)

## FashionUnited commercial context

The sales plugin is optimized for FashionUnited's B2B fashion industry sales:

- **Products**: Job board, advertising (banner, advertorial), employer branding, B2B marketplace
- **Client types**: Fashion brands, retailers, trade fairs, federations, recruitment agencies
- **TOP 200 accounts**: Strategic fashion brands requiring Key Account Manager focus
- **Revenue model**: Subscription-based with upsells (employer branding, campaigns)
