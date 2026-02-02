# Cowork Plugin Management

A plugin for creating and customizing other plugins, designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application. Adapt generic plugin templates to your organization's specific tools, workflows, and terminology.

**Note:** This plugin requires Cowork desktop app mode with access to mounted plugin directories. It will not work in remote containers or standard CLI sessions.

## What It Does

This plugin helps you customize generic plugins for your organization by:

- **Finding customization points** — Identifies `~~`-prefixed placeholders that mark where organization-specific values should go
- **Gathering context automatically** — Searches Slack, documents, and email for tool names, processes, and team conventions
- **Applying customizations** — Replaces placeholders with your actual tool names, workspace IDs, and team identifiers
- **Connecting MCP servers** — Discovers and configures MCP servers for the tools identified during customization

## How Customization Works

Generic plugins use `~~` prefixes to mark customization points:

| Placeholder | Example replacement |
|-------------|-------------------|
| `~~Jira` | `Asana` |
| `~~your-team-channel` | `#engineering` |
| `~~data warehouse` | `BigQuery` |

When you customize a plugin, Claude:

1. Searches your company's knowledge sources (Slack, docs, email) for relevant context
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

[Searches Slack, documents, email for data tool mentions]

From searching Slack:
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
| **Slack/Chat** | Tool mentions, integrations, workflow discussions |
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

## Resources

- **`skills/cowork-plugin-customizer/references/`** — MCP discovery workflow, search strategies
- **`skills/cowork-plugin-customizer/examples/`** — Example customized configurations
