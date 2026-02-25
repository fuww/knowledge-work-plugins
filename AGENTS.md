# Knowledge Work Plugins

Declarative plugin collection that specializes Claude for professional roles and workflows. Built for Claude Cowork, compatible with Claude Code.

## Issue Tracking

This project uses **bd (beads)** for issue tracking.
Run `bd prime` for workflow context, or install hooks (`bd hooks install`) for auto-injection.

**Quick reference:**
- `bd ready` - Find unblocked work
- `bd create "Title" --type task --priority 2` - Create issue
- `bd close <id>` - Complete work
- `bd sync` - Sync with git (run at session end)

For full workflow details: `bd prime`

## Project overview

- 10 independent, role-focused plugins (productivity, sales, customer-support, product-management, marketing, legal, finance, data, enterprise-search, cowork-plugin-management)
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

## Landing the Plane (Session Completion)

**When ending a work session**, you MUST complete ALL steps below. Work is NOT complete until `git push` succeeds.

**MANDATORY WORKFLOW:**

1. **File issues for remaining work** - Create issues for anything that needs follow-up
2. **Run quality gates** (if code changed) - Tests, linters, builds
3. **Update issue status** - Close finished work, update in-progress items
4. **PUSH TO REMOTE** - This is MANDATORY:
   ```bash
   git pull --rebase
   bd sync
   git push
   git status  # MUST show "up to date with origin"
   ```
5. **Clean up** - Clear stashes, prune remote branches
6. **Verify** - All changes committed AND pushed
7. **Hand off** - Provide context for next session

**CRITICAL RULES:**
- Work is NOT complete until `git push` succeeds
- NEVER stop before pushing - that leaves work stranded locally
- NEVER say "ready to push when you are" - YOU must push
- If push fails, resolve and retry until it succeeds

## Code Quality

```bash
nix develop --command prek run --all-files  # Run all pre-commit checks
```

