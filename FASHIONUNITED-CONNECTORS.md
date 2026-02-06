# FashionUnited Connector Mapping

This reference defines the canonical mapping from generic `~~` placeholders to FashionUnited-specific tools. All plugin refactoring tasks should follow this mapping.

## Summary

| Generic Placeholder | FashionUnited Tool | MCP Availability | Integration Approach |
|---------------------|-------------------|------------------|---------------------|
| `~~office suite` | Google Workspace | Self-hosted | Community MCP server |
| `~~email` | Google Workspace (Gmail) | Self-hosted | Community MCP server |
| `~~calendar` | Google Workspace (Calendar) | Self-hosted | Community MCP server |
| `~~cloud storage` | Google Workspace (Drive) | Self-hosted | Community MCP server |
| `~~CRM` | Vtiger CRM | Third-party | Pipedream MCP |
| `~~email marketing` | Mailchimp | Third-party | Zapier MCP |
| `~~marketing automation` | Mailchimp | Third-party | Zapier MCP |
| `~~product analytics` | Plausible Analytics | Self-hosted | Community MCP server |
| `~~project tracker` | GitHub | Self-hosted | Official MCP server |
| `~~knowledge base` | GitHub (Wiki/Discussions) | Self-hosted | Official MCP server |
| `~~chat` | Google Chat | Self-hosted | Google Workspace MCP |
| `~~social scheduling` | Social Champ | Third-party | Zapier MCP |
| `~~design` | Figma | Hosted | Vendor HTTP endpoint |

## Detailed Tool Mapping

### Google Workspace (replacing MS365)

**Replaces**: Microsoft 365 (`ms365`)

**Placeholders mapped**:
- `~~office suite` → Google Docs, Sheets, Slides
- `~~email` → Gmail
- `~~calendar` → Google Calendar
- `~~cloud storage` → Google Drive

**MCP Server Options** (all require self-hosting):

| Option | URL | Features |
|--------|-----|----------|
| taylorwilsdon/google_workspace_mcp | https://github.com/taylorwilsdon/google_workspace_mcp | Full suite: Gmail, Calendar, Drive, Docs, Sheets, Slides, Chat, Forms, Tasks. OAuth 2.1 support. |
| ngs/google-mcp-server | https://github.com/ngs/google-mcp-server | Calendar, Drive, Gmail, Sheets, Docs, Slides |
| aaronsb/google-workspace-mcp | https://github.com/aaronsb/google-workspace-mcp | Gmail, Calendar, Drive with authentication |

**Setup Requirements**:
1. Google Cloud Project with OAuth 2.0 credentials
2. Enable required APIs (Gmail, Calendar, Drive, Docs, Sheets, Slides)
3. Self-host MCP server (Docker or local process)

**Configuration** (example using taylorwilsdon):
```json
{
  "mcpServers": {
    "google-workspace": {
      "type": "stdio",
      "command": "uvx",
      "args": ["workspace-mcp"]
    }
  }
}
```

**Note**: Google has announced official MCP support for cloud services (BigQuery, GKE, GCE) but not yet for Workspace apps. Monitor https://cloud.google.com/blog for updates.

---

### Vtiger CRM (replacing HubSpot/Close)

**Replaces**: HubSpot, Close, Salesforce

**Placeholders mapped**:
- `~~CRM` → Vtiger CRM

**MCP Server Options**:

| Option | URL | Type | Features |
|--------|-----|------|----------|
| Pipedream MCP | https://mcp.pipedream.com/app/vtiger_crm | Hosted | Full CRUD via REST API |
| Zapier MCP | https://zapier.com/mcp/vtiger | Hosted | Cases, Contacts, Events, Leads, Opportunities |
| SyncHub | https://www.synchub.io/connectors/vtigercrm/mcp | Hosted | Read-only sync |
| harsh-softsolvers/mcp | https://glama.ai/mcp/servers/@harsh-softsolvers/mcp | Self-hosted | Full REST API |

**Recommended**: Pipedream MCP (hosted, full CRUD, easy setup)

**Configuration**:
```json
{
  "mcpServers": {
    "vtiger": {
      "type": "http",
      "url": "https://mcp.pipedream.com/app/vtiger_crm"
    }
  }
}
```

---

### Mailchimp (replacing Klaviyo)

**Replaces**: Klaviyo, HubSpot email marketing, Customer.io

**Placeholders mapped**:
- `~~email marketing` → Mailchimp
- `~~marketing automation` → Mailchimp

**MCP Server Options**:

| Option | URL | Type | Features |
|--------|-----|------|----------|
| Zapier MCP | https://zapier.com/mcp/mailchimp | Hosted | Campaigns, lists, templates, reports |
| Composio MCP | https://mcp.composio.dev/mailchimp | Hosted | 271+ tools |
| CData MCP | https://github.com/CDataSoftware/mailchimp-mcp-server-by-cdata | Self-hosted | Read-only |
| bryangsmith/mailchimp | https://playbooks.com/mcp/bryangsmith-mailchimp | Self-hosted | Full API |

**Recommended**: Zapier MCP (hosted, good free tier)

**Configuration**:
```json
{
  "mcpServers": {
    "mailchimp": {
      "type": "http",
      "url": "https://actions.zapier.com/mcp/mailchimp/v1"
    }
  }
}
```

**Free tier limits**: 40 tool calls/hour, 80/day, 160/month

---

### Plausible Analytics (replacing Amplitude)

**Replaces**: Amplitude, Mixpanel, Google Analytics

**Placeholders mapped**:
- `~~product analytics` → Plausible Analytics

**MCP Server Options**:

| Option | URL | Type | Features |
|--------|-----|------|----------|
| alexanderop/plausible-mcp | https://github.com/alexanderop/plausible-mcp | Self-hosted | Full API, real-time stats |
| AVIMBU/plausible-mcp-server | https://github.com/AVIMBU/plausible-mcp-server | Self-hosted | Full API |

**Setup Requirements**:
1. Plausible API key
2. Self-host MCP server

**Configuration**:
```json
{
  "mcpServers": {
    "plausible": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@alexanderop/plausible-mcp"],
      "env": {
        "PLAUSIBLE_API_KEY": "${PLAUSIBLE_API_KEY}",
        "PLAUSIBLE_SITE_ID": "${PLAUSIBLE_SITE_ID}"
      }
    }
  }
}
```

---

### Social Champ (new - social scheduling)

**New tool**: No existing placeholder

**Placeholders mapped**:
- `~~social scheduling` → Social Champ (new placeholder)

**MCP Server Options**:

| Option | URL | Type | Features |
|--------|-----|------|----------|
| Zapier MCP | https://zapier.com/mcp/social-champ | Hosted | Schedule, publish, manage posts |

**Note**: Social Champ only available via Zapier MCP. No self-hosted option.

**Configuration**:
```json
{
  "mcpServers": {
    "social-champ": {
      "type": "http",
      "url": "https://actions.zapier.com/mcp/social-champ/v1"
    }
  }
}
```

**Supported platforms**: Facebook, Instagram, X (Twitter), LinkedIn, YouTube, Pinterest, TikTok, Google Business, Discord, Bluesky, Mastodon, Threads

---

### GitHub (replacing Atlassian)

**Replaces**: Atlassian (Jira/Confluence), Linear, Asana

**Placeholders mapped**:
- `~~project tracker` → GitHub (Issues, Projects)
- `~~knowledge base` → GitHub (Wiki, Discussions)

**MCP Server**: Official from Model Context Protocol

| Option | URL | Type | Features |
|--------|-----|------|----------|
| Official | https://github.com/modelcontextprotocol/servers | Self-hosted | Repos, Issues, PRs, Files |

**Setup Requirements**:
1. GitHub Personal Access Token
2. Self-host MCP server

**Configuration**:
```json
{
  "mcpServers": {
    "github": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_TOKEN}"
      }
    }
  }
}
```

---

### Retained Tools (no change)

These tools have existing hosted MCP endpoints and remain unchanged:

| Tool | Placeholder | MCP Endpoint |
|------|-------------|--------------|
| Google Chat | `~~chat` | `workspace-mcp` (part of Google Workspace) |
| Figma | `~~design` | `https://mcp.figma.com/mcp` |
| Notion | `~~knowledge base` (alt) | `https://mcp.notion.com/mcp` |
| Canva | `~~design` (alt) | `https://mcp.canva.com/mcp` |

---

## Placeholder Reference

Complete list of `~~` placeholders used across plugins and their FashionUnited mappings:

| Placeholder | FashionUnited Tool | Notes |
|-------------|-------------------|-------|
| `~~analytics` | Plausible Analytics | BI/analytics |
| `~~calendar` | Google Calendar | Part of Workspace |
| `~~chat` | Google Chat | Part of Workspace |
| `~~cloud storage` | Google Drive | Part of Workspace |
| `~~CLM` | *Not used* | Legal plugin - manual placeholder |
| `~~conversation intelligence` | *Not used* | Consider Fireflies if needed |
| `~~CRM` | Vtiger CRM | |
| `~~data enrichment` | *Not used* | Consider Clay/ZoomInfo if needed |
| `~~data repository` | *Not used* | Bio-research specific |
| `~~data warehouse` | *Not used* | Data plugin - manual placeholder |
| `~~design` | Figma | Retained |
| `~~email` | Gmail | Part of Workspace |
| `~~email marketing` | Mailchimp | |
| `~~erp` | *Not used* | Finance plugin - manual placeholder |
| `~~e-signature` | *Not used* | Legal plugin - manual placeholder |
| `~~knowledge base` | GitHub Wiki/Notion | Use GitHub or retain Notion |
| `~~marketing automation` | Mailchimp | |
| `~~meeting transcription` | *Not used* | Consider Fireflies if needed |
| `~~notebook` | *Not used* | Data plugin - manual placeholder |
| `~~office suite` | Google Workspace | Docs, Sheets, Slides |
| `~~product analytics` | Plausible Analytics | |
| `~~project tracker` | GitHub | Issues + Projects |
| `~~SEO` | *Not used* | Consider Ahrefs if needed |
| `~~social scheduling` | Social Champ | **New** |
| `~~support platform` | *Not used* | Consider Intercom if needed |
| `~~user feedback` | *Not used* | Consider GitHub Issues |

---

## Integration Patterns

### Pattern 1: Hosted HTTP MCP (preferred)
```json
{
  "tool-name": {
    "type": "http",
    "url": "https://mcp.example.com/mcp"
  }
}
```
Used for: Figma, Notion, Canva, Pipedream-hosted tools

### Pattern 2: Self-hosted stdio MCP
```json
{
  "tool-name": {
    "type": "stdio",
    "command": "npx",
    "args": ["-y", "@package/mcp-server"],
    "env": {
      "API_KEY": "${API_KEY}"
    }
  }
}
```
Used for: Google Workspace, GitHub, Plausible

### Pattern 3: Zapier MCP (third-party hosted)
```json
{
  "tool-name": {
    "type": "http",
    "url": "https://actions.zapier.com/mcp/tool-name/v1"
  }
}
```
Used for: Mailchimp, Social Champ, Vtiger (alternative)

---

## Decision Log

| Decision | Rationale |
|----------|-----------|
| Google Workspace over MS365 | FashionUnited uses Google Workspace organization-wide |
| Google Chat over Slack | Google Chat is part of Google Workspace, consolidating on one platform |
| Vtiger over HubSpot/Salesforce | Existing CRM in use at FashionUnited |
| Mailchimp over Klaviyo | FashionUnited's email marketing platform |
| Plausible over Amplitude | Privacy-focused analytics, already in use |
| Social Champ (new) | Social media scheduling for fashion content |
| GitHub over Atlassian | Project tracking and documentation |

## Next Steps

For each plugin refactor task:
1. Replace `ms365` with appropriate Google Workspace configuration
2. Replace `hubspot`/`close` with `vtiger`
3. Replace `amplitude` with `plausible`
4. Replace `atlassian` with `github`
5. Replace `klaviyo` with `mailchimp`
6. Add `social-champ` where social media scheduling is needed
7. Update `CONNECTORS.md` with FashionUnited-specific examples
8. Keep tools with hosted MCP endpoints (Figma, Notion)
