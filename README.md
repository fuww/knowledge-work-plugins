# Knowledge Work Plugins

> **FashionUnited Fork** — This is a customized version of [Anthropic's knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins), adapted for FashionUnited's tools, workflows, and fashion industry context. Licensed under Apache 2.0.

Plugins that turn Claude into a specialist for your role, team, and company. Built for [Claude Cowork](https://claude.com/product/cowork), also compatible with [Claude Code](https://claude.com/product/claude-code).

## Why Plugins

Cowork lets you set the goal and Claude delivers finished, professional work. Plugins let you go further: tell Claude how you like work done, which tools and data to pull from, how to handle critical workflows, and what slash commands to expose — so your team gets better and more consistent outcomes.

Each plugin bundles the skills, connectors, slash commands, and sub-agents for a specific job function. Out of the box, they give Claude a strong starting point for helping anyone in that role. The real power comes when you customize them for your company — your tools, your terminology, your processes — so Claude works like it was built for your team.

## Plugin Marketplace

We're open-sourcing 10 plugins built and inspired by our own work:

| Plugin | How it helps | FashionUnited Connectors | MCP |
|--------|-------------|--------------------------|-----|
| **[productivity](./productivity)** | Manage tasks, calendars, daily workflows, and personal context for fashion industry professionals. | Google Chat, Google Workspace, GitHub, beads | ✓✓✓— |
| **[sales](./sales)** | Research advertisers, prep for calls, manage B2B pipeline, draft outreach for fashion brands. | Google Chat, Vtiger CRM, Google Workspace | ✓✓✓ |
| **[customer-support](./customer-support)** | Triage tickets from advertisers and employers, research account context, build FAQ content. | Google Chat, Vtiger CRM, Google Workspace | ✓✓✓ |
| **[product-management](./product-management)** | Write specs, plan roadmaps, synthesize user research for fashion B2B products. | Google Chat, GitHub, Google Workspace, Figma, Plausible | ✓✓✓✓✓ |
| **[marketing](./marketing)** | Draft fashion news, plan content campaigns, manage newsletters, track performance across markets. | Google Chat, Mailchimp, Social Champ, Plausible, Google Search Console, Figma | ✓✓✗✓✓✓ |
| **[legal](./legal)** | Review advertising agreements, media partnerships, GDPR compliance across 30+ markets. | Google Workspace | ✓ |
| **[finance](./finance)** | Advertising revenue, subscription billing, multi-currency operations across markets. | BigQuery, Google Workspace, Vtiger CRM | ✓✓✓ |
| **[data](./data)** | Query jobs, marketplace, editorial data — SQL templates for FashionUnited metrics. | BigQuery, Looker Studio, Plausible, Google Workspace | ✓✓✓✓ |
| **[enterprise-search](./enterprise-search)** | Find anything across email, chat, docs, CRM, code — brand lookup, job history, editorial archives. | Google Chat, Google Workspace, GitHub, Vtiger CRM, BigQuery | ✓✓✓✓✓ |
| **[cowork-plugin-management](./cowork-plugin-management)** | Create new plugins or customize existing ones with FashionUnited tool stack and domain knowledge. | — | — |

*MCP column shows support status per connector in order: ✓ = MCP server available, ✗ = no MCP available, — = not applicable*

Install these directly from Cowork, browse the full collection here on GitHub, or build your own.

## Getting Started

```bash
# Install from the plugin marketplace
claude plugins add knowledge-work-plugins

# Or install a specific plugin
claude plugins add knowledge-work-plugins/sales
```

Once installed, plugins activate automatically. Skills fire when relevant, and slash commands are available in your session (e.g., `/sales:call-prep`, `/data:write-query`).

## How Plugins Work

Every plugin follows the same structure:

```
plugin-name/
├── .claude-plugin/plugin.json   # Manifest
├── .mcp.json                    # Tool connections
├── commands/                    # Slash commands you invoke explicitly
└── skills/                      # Domain knowledge Claude draws on automatically
```

- **Skills** encode the domain expertise, best practices, and step-by-step workflows Claude needs to give you useful help. Claude draws on them automatically when relevant.
- **Commands** are explicit actions you trigger (e.g., `/finance:reconciliation`, `/product-management:write-spec`).
- **Connectors** wire Claude to the external tools your role depends on — CRMs, project trackers, data warehouses, design tools, and more — via [MCP servers](https://modelcontextprotocol.io/).

Every component is file-based — markdown and JSON, no code, no infrastructure, no build steps.

## Making Them Yours

These plugins are generic starting points. They become much more useful when you customize them for how your company actually works:

- **Swap connectors** — Edit `.mcp.json` to point at your specific tool stack.
- **Add company context** — Drop your terminology, org structure, and processes into skill files so Claude understands your world.
- **Adjust workflows** — Modify skill instructions to match how your team actually does things, not how a textbook says to.
- **Build new plugins** — Use the `cowork-plugin-management` plugin or follow the structure above to create plugins for roles and workflows we haven't covered yet.

As your team builds and shares plugins, Claude becomes a cross-functional expert. The context you define gets baked into every relevant interaction, so leaders and admins can spend less time enforcing processes and more time improving them.

## FashionUnited Tool Stack

All plugins are configured for FashionUnited's integrated tool stack:

| Category | Tool | Usage | MCP |
|----------|------|-------|-----|
| CRM | Vtiger CRM | Sales, contacts, invoicing | ✓ [Zapier](https://zapier.com/mcp/vtiger), [SyncHub](https://www.synchub.io/connectors/vtigercrm/mcp) |
| Data Warehouse | BigQuery | Jobs, marketplace, editorial, advertising, Top 100 | ✓ [MCP Toolbox](https://googleapis.github.io/genai-toolbox/), [mcp-bigquery-server](https://github.com/ergut/mcp-bigquery-server) |
| Analytics | Plausible | Website traffic, content performance | ✓ [plausible-mcp-server](https://mcp.aibase.com/server/1916355517042630657) |
| Dashboards | Looker Studio | Reports, visualizations | ✓ [Looker MCP](https://cloud.google.com/blog/products/business-intelligence/introducing-looker-mcp-server) |
| Email Marketing | Mailchimp | Newsletter campaigns | ✓ [mailchimp-mcp](https://glama.ai/mcp/servers/@AgentX-ai/mailchimp-mcp) |
| Social Media | Social Champ | Multi-platform scheduling | ✗ No MCP available |
| Documents | Google Workspace | Docs, Sheets, Drive | ✓ [google_workspace_mcp](https://github.com/taylorwilsdon/google_workspace_mcp) |
| Chat | Google Chat | Team communication | ✓ [google_workspace_mcp](https://github.com/taylorwilsdon/google_workspace_mcp) (Google Chat is part of Google Workspace) |
| Code | GitHub | Repositories, issues, projects | ✓ [Official](https://github.com/modelcontextprotocol/servers) |
| SEO | Google Search Console | Search rankings, keywords | ✓ [mcp-server-gsc](https://github.com/ahonn/mcp-server-gsc) |

## Contributing

Plugins are just markdown files. Fork the repo, make your changes, and submit a PR.

## License

This fork is licensed under Apache 2.0, same as the [original Anthropic repository](https://github.com/anthropics/knowledge-work-plugins). See [LICENSE](LICENSE) for details.

## Development Environment

```bash
nix develop                              # Enter dev shell with all tools
nix develop --command prek run --all-files  # Run pre-commit checks
```
