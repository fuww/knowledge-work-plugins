# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~project tracker` might mean GitHub, Asana, or any other project tracker with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (chat, project tracker, knowledge base, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Slack | Microsoft Teams, Discord |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Office suite | `~~office suite` | Google Workspace (Docs, Sheets, Slides) | Microsoft 365 |
| Cloud storage | `~~cloud storage` | Google Workspace (Drive) | Microsoft 365, Dropbox |
| Project tracker | `~~project tracker` | GitHub (Issues + Projects) | Linear, Jira, Asana |
| Knowledge base | `~~knowledge base` | GitHub (Wiki, Discussions) | Notion, Confluence |
| CRM | `~~CRM` | Vtiger CRM | HubSpot, Salesforce |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's tool stack:

- **Google Workspace** provides email, calendar, documents, and cloud storage
- **GitHub** provides project tracking (Issues), roadmap management (Projects with Now-Next-Later columns), and knowledge base (Wiki, Discussions)
- **Vtiger CRM** provides customer and contact management
- **Slack** provides team chat and notifications

## Setup requirements

1. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and enabled APIs
2. **GitHub**: Requires Personal Access Token with appropriate repo permissions
3. **Vtiger**: Requires Pipedream account for hosted MCP access
4. **Slack**: Works with hosted MCP endpoint (no additional setup)
