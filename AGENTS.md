# Knowledge Work Plugins

Declarative plugin collection that specializes Claude for professional roles and workflows. Built for Claude Cowork, compatible with Claude Code.

## Project overview

- 11 independent, role-focused plugins (productivity, sales, customer-support, product-management, marketing, legal, finance, data, enterprise-search, bio-research, cowork-plugin-management)
- No code — everything is markdown and JSON. No build, no tests, no linting, no CI.
- Licensed under Apache 2.0

## Repository structure

```
plugin-name/
├── .claude-plugin/plugin.json   # Plugin manifest (name, version, description)
├── .mcp.json                    # MCP server configurations (tool connections)
├── README.md                    # Plugin overview and setup
├── CONNECTORS.md                # Tool integrations and placeholders
├── commands/                    # Slash commands (explicit user-invoked workflows)
│   └── command-name.md
└── skills/                      # Domain knowledge (auto-activated by Claude)
    └── skill-name/
        ├── SKILL.md             # Skill definition and instructions
        ├── references/          # Supporting materials
        └── assets/              # Templates, examples
```

Top-level files:
- `.claude-plugin/marketplace.json` — central registry of all plugins
- `README.md` — main documentation and plugin table

## Conventions

- **File/directory naming**: lowercase with hyphens (`call-prep.md`, `contract-review/`)
- **Skill files**: named `SKILL.md` inside a named directory under `skills/`
- **Command files**: one `.md` file per command inside `commands/`
- **Placeholder prefix**: `~~` marks tool-agnostic placeholders that orgs customize (e.g., `~~project tracker`, `~~chat`)
- **Frontmatter**: commands and skills use YAML frontmatter with `description` and optionally `name`
- **Content style**: plain language, numbered step-by-step workflows, tables for structured data
- **Connectors**: documented in each plugin's `CONNECTORS.md`, configured in `.mcp.json` as HTTP MCP endpoints

## Making changes

All content is markdown and JSON — edit directly, no build step required. When adding or modifying plugins:

1. Follow the directory structure above
2. Keep plugin manifests in `.claude-plugin/plugin.json` up to date
3. Update `.mcp.json` when adding or changing tool connections
4. Use `~~` placeholders for tool names that vary by organization
5. Update the top-level `README.md` plugin table if adding a new plugin
6. Update `.claude-plugin/marketplace.json` if adding a new plugin
