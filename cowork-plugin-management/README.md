# Cowork Plugin Management

A plugin for creating and customizing other plugins, designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application. Adapt generic plugin templates to your organization's specific tools, workflows, and terminology.

This plugin is configured for **FashionUnited**, with knowledge of the FashionUnited tool stack, GraphQL API, and fashion industry domain.

**Note:** This plugin requires Cowork desktop app mode with access to mounted plugin directories. It will not work in remote containers or standard CLI sessions.

## What It Does

This plugin helps you customize generic plugins for your organization by:

- **Finding customization points** — Identifies `~~`-prefixed placeholders that mark where organization-specific values should go
- **Gathering context automatically** — Searches Google Chat, documents, and email for tool names, processes, and team conventions
- **Applying customizations** — Replaces placeholders with your actual tool names, workspace IDs, and team identifiers
- **Connecting MCP servers** — Discovers and configures MCP servers for the tools identified during customization

## How Customization Works

Generic plugins use `~~` prefixes to mark customization points:

| Placeholder | FashionUnited replacement |
|-------------|--------------------------|
| `~~CRM` | `Vtiger CRM` |
| `~~data warehouse` | `BigQuery` |
| `~~analytics` | `Plausible Analytics` |
| `~~email marketing` | `Mailchimp` |
| `~~chat` | `Google Chat` |
| `~~project tracker` | `GitHub` |
| `~~documents` | `Google Workspace` |

When you customize a plugin, Claude:

1. Searches your company's knowledge sources (Google Chat, docs, email) for relevant context
2. Creates a todo list of customization points found in the plugin
3. Applies gathered context automatically, asking you only when unclear
4. Searches for and connects MCP servers for identified tools
5. Packages the customized plugin for installation

## Skills

| Skill | Description |
|-------|-------------|
| `cowork-plugin-customizer` | Customize plugins by replacing `~~`-prefixed placeholders with organization-specific values and configuring MCP servers |

## Example Workflow

### Customizing the Data Plugin

```
You: I want to customize the data plugin for our company

Claude: I'll help you customize the data plugin. Let me first search your company's
knowledge sources to learn about your tools and processes.

[Searches Google Chat, documents, email for data tool mentions]

From searching Google Chat:
- You use BigQuery for your data warehouse
- Analytics queries go to the data-team channel

From searching documents:
- Dataset naming convention is {team}_{purpose}_{version}

I found 8 customization points in the data plugin. Let me apply what I've learned...

[Applies customizations, asks about unclear items]

Done! Here's your customized plugin ready to install.
```

### What Gets Customized

- **Tool names** — Generic references become your specific tools
- **URL patterns** — Example URLs become your actual workspace URLs
- **Team conventions** — Placeholders become your naming standards, statuses, and workflows
- **MCP connections** — Plugin's `.mcp.json` gets configured for your tool stack

## Data Sources

This plugin uses knowledge MCPs to gather context:

| Source | What it finds |
|--------|---------------|
| **Google Chat** | Tool mentions, integrations, workflow discussions |
| **Documents** | Onboarding docs, tool guides, setup instructions |
| **Email** | License notifications, admin emails, setup invitations |

If no knowledge MCPs are connected, Claude will ask you directly for customization values.

## Creating New Plugins

Beyond customization, you can create entirely new plugins by following the standard plugin structure:

```
plugin-name/
├── .claude-plugin/plugin.json   # Manifest
├── .mcp.json                    # Tool connections
├── README.md                    # Documentation
├── CONNECTORS.md                # Tool integrations
├── commands/                    # Slash commands
└── skills/                      # Domain knowledge
```

Use `~~`-prefixed placeholders to make your plugin customizable by others.

## FashionUnited Tool Stack

When creating or customizing plugins for FashionUnited, use these standard tool mappings:

| Category | Tool | MCP | Usage |
|----------|------|-----|-------|
| CRM | Vtiger CRM | `@anthropic/vtiger-mcp` | Sales, contacts, invoicing |
| Data Warehouse | BigQuery | Google BigQuery API | Jobs, marketplace, editorial, advertising data |
| Analytics | Plausible | `@alexanderop/plausible-mcp` | Website traffic, content performance |
| Email Marketing | Mailchimp | `@anthropic/mailchimp-mcp` | Newsletter campaigns |
| Social Media | Social Champ | `@anthropic/socialchamp-mcp` | Social scheduling |
| Documents | Google Workspace | `workspace-mcp` | Docs, Sheets, Drive |
| Chat | Google Chat | `workspace-mcp` | Team communication (via Google Workspace) |
| Code | GitHub | `@modelcontextprotocol/server-github` | Repositories, issues |
| Search | Google Search Console | `@anthropic/searchconsole-mcp` | SEO data |

### FashionUnited GraphQL API

For plugins that need to access FashionUnited product data, use the Elixir/Phoenix GraphQL API:

**Endpoint:** `https://api.fashionunited.com/graphql`

**Common queries:**
- Job postings by market/category
- Brand and company profiles
- Marketplace product catalog
- Editorial content metadata
- Top 100 index data

**Authentication:** Requires API key configured in environment variables.

### Fashion Industry Domain

Custom plugins for FashionUnited should include knowledge of:

- **Markets**: 30+ country markets with 9 language editions
- **Verticals**: Jobs, News, Marketplace, Top 100
- **Business model**: B2B fashion media, advertising, job board
- **Key terms**: Fashion weeks, trade fairs, seasons, collections
- **Partners**: Federations, fashion schools, trade fair organizers

## Resources

- **`skills/cowork-plugin-customizer/references/`** — MCP discovery workflow, search strategies
- **`skills/cowork-plugin-customizer/examples/`** — Example customized configurations
