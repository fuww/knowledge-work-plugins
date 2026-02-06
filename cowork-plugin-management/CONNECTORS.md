# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. This plugin helps customize other plugins by replacing those placeholders with organization-specific values.

## Connectors for this plugin

This plugin uses **user-level knowledge connections** rather than plugin-specific MCP servers. The knowledge sources used for gathering context are:

| Category | What it searches | Examples |
|----------|------------------|----------|
| Chat | Tool mentions, integrations, workflow discussions | Google Chat, Microsoft Teams |
| Documents | Onboarding docs, tool guides, setup instructions | Google Drive, Notion, Confluence |
| Email | License notifications, admin emails, setup invitations | Gmail, Outlook |

**No additional MCP servers are required** — the plugin uses whatever knowledge sources are already connected in your Cowork environment.

## How context gathering works

When customizing a plugin, Claude searches your connected knowledge sources for:

- **Tool names** — What project tracker, CRM, data warehouse, etc. your organization uses
- **Organizational processes** — How your team names projects, tracks work, and runs meetings
- **Team conventions** — Status labels, estimation scales, channel names
- **Configuration values** — Workspace IDs, project names, team identifiers

If a knowledge source isn't connected, Claude will ask you directly for customization values.

## MCP registry integration

This plugin uses Cowork's built-in MCP registry functions to discover and connect MCP servers for tools identified during customization:

- `search_mcp_registry()` — Find MCP servers by category or tool name
- `suggest_connectors()` — Initiate OAuth connection flow for a discovered MCP

These functions are part of Cowork's core capabilities and don't require separate configuration.

## First-party integrations

First-party integrations (Gmail, Google Calendar, Google Drive) are connected at the user level and don't need plugin `.mcp.json` entries. They're available automatically when you connect them in Cowork settings.

## FashionUnited tool stack reference

When customizing plugins for FashionUnited, use these standard tool mappings:

| Placeholder | FashionUnited tool | MCP package |
|-------------|-------------------|-------------|
| `~~CRM` | Vtiger CRM | `@anthropic/vtiger-mcp` |
| `~~data warehouse` | BigQuery | Google BigQuery API |
| `~~analytics` | Plausible Analytics | `@alexanderop/plausible-mcp` |
| `~~email marketing` | Mailchimp | `@anthropic/mailchimp-mcp` |
| `~~social scheduling` | Social Champ | `@anthropic/socialchamp-mcp` |
| `~~chat` | Google Chat | `@anthropic/google-workspace-mcp` |
| `~~documents` | Google Workspace | `@anthropic/google-workspace-mcp` |
| `~~project tracker` | GitHub | `@modelcontextprotocol/server-github` |
| `~~design tool` | Figma | `@anthropic/figma-mcp` |

### FashionUnited GraphQL API

For plugins that need FashionUnited product data (jobs, marketplace, editorial), configure the GraphQL API:

```json
{
  "fashionunited-api": {
    "type": "http",
    "url": "https://api.fashionunited.com/graphql",
    "headers": {
      "Authorization": "Bearer ${FASHIONUNITED_API_KEY}"
    }
  }
}
```

### Knowledge sources for FashionUnited

When customizing plugins, Claude searches these FashionUnited sources:

| Source | What it finds |
|--------|---------------|
| Google Chat | Team discussions, tool mentions, #editorial, #sales, #product channels |
| Google Drive | Handbooks, process docs, style guides |
| Gmail | Admin notifications, vendor communications |
| GitHub | Code patterns, README files, documentation |
