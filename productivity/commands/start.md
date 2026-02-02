---
description: Initialize the productivity system and open the dashboard
---

# Start Command

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Initialize the task and memory systems, then open the unified dashboard.

## Instructions

### 1. Check What Exists

Check the working directory for:
- `TASKS.md` — task list
- `CLAUDE.md` — working memory
- `memory/` — deep memory directory
- `dashboard.html` — the visual UI

### 2. Create What's Missing

**If `TASKS.md` doesn't exist:** Create it with the standard template (see task-management skill). Place it in the current working directory.

**If `dashboard.html` doesn't exist:** Copy it from `${CLAUDE_PLUGIN_ROOT}/skills/dashboard.html` to the current working directory.

**If `CLAUDE.md` and `memory/` don't exist:** This is a fresh setup — after opening the dashboard, begin the memory bootstrap workflow (see below). Place these in the current working directory.

### 3. Open the Dashboard

Do NOT use `open` or `xdg-open` — in Cowork, the agent runs in a VM and shell open commands won't reach the user's browser. Instead, tell the user: "Dashboard is ready at `dashboard.html`. Open it from your file browser to get started."

### 4. Orient the User

If everything was already initialized:
```
Dashboard open. Your tasks and memory are both loaded.
- /productivity:update to sync tasks and check memory
- /productivity:update --comprehensive for a deep scan of all activity
```

If memory hasn't been bootstrapped yet, continue to step 5.

### 5. Bootstrap Memory (First Run Only)

Only do this if `CLAUDE.md` and `memory/` don't exist yet.

The best source of workplace language is the user's actual task list. Real tasks = real shorthand.

**Ask the user:**
```
Where do you keep your todos or task list? At FashionUnited, this is typically:
- GitHub Issues (development tasks)
- beads (bd ready to see current issues)
- Vtiger CRM (sales and client tasks)
- A local TASKS.md file
- Google Tasks or Calendar

I'll use your tasks to learn your workplace shorthand.
```

**Once you have access to the task list:**

For each task item, analyze it for potential shorthand:
- Names that might be nicknames
- Acronyms or abbreviations
- Project references or codenames
- Internal terms or jargon

**For each item, decode it interactively:**

```
Task: "Send PSR to Todd re: Phoenix blockers"

I see some terms I want to make sure I understand:

1. **PSR** - What does this stand for?
2. **Todd** - Who is Todd? (full name, role)
3. **Phoenix** - Is this a project codename? What's it about?
```

Continue through each task, asking only about terms you haven't already decoded.

### 6. Optional Comprehensive Scan

After task list decoding, offer:
```
Do you want me to do a comprehensive scan of your messages, emails, and documents?
This takes longer but builds much richer context about the people, projects, and terms in your work.

Or we can stick with what we have and add context later.
```

**If they choose comprehensive scan:**

Gather data from available MCP sources:
- **Slack:** Recent messages, channels (#editorial, #sales, #product, etc.)
- **Gmail:** Sent messages, recipients
- **Google Drive:** Recent docs, collaborators
- **Google Calendar:** Meetings, attendees
- **GitHub:** Issues, PRs, project boards
- **Vtiger:** Contacts, tasks, deals

Build a braindump of people, projects, and terms found. Present findings grouped by confidence:
- **Ready to add** (high confidence) — offer to add directly
- **Needs clarification** — ask the user
- **Low frequency / unclear** — note for later

### 7. Write Memory Files

From everything gathered, create:

**CLAUDE.md** (working memory, ~50-80 lines):
```markdown
# Memory

## Me
[Name], [Role] on [Team].

## People
| Who | Role |
|-----|------|
| **[Nickname]** | [Full Name], [role] |

## Terms
| Term | Meaning |
|------|---------|
| [acronym] | [expansion] |

## Projects
| Name | What |
|------|------|
| **[Codename]** | [description] |

## Preferences
- [preferences discovered]
```

**memory/** directory:
- `memory/glossary.md` — full decoder ring (acronyms, terms, nicknames, codenames)
- `memory/people/{name}.md` — individual profiles
- `memory/projects/{name}.md` — project details
- `memory/context/company.md` — teams, tools, processes

### 8. Report Results

```
Productivity system ready:
- Tasks: TASKS.md (X items)
- Memory: X people, X terms, X projects
- Dashboard: open in browser

Use /productivity:update to keep things current (add --comprehensive for a deep scan).
```

### 9. FashionUnited-Specific Onboarding (First Run)

After the general bootstrap, ask FashionUnited-specific questions:

```
A few FashionUnited-specific questions:

1. **Your role:** Are you primarily Editorial, Sales, Product, or Engineering?

2. **Markets:** Which markets do you work with? (NL, DE, UK, US, etc.)

3. **Typical week:** What's your weekly rhythm?
   - Editorial deadlines
   - Sales calls/meetings
   - Sprint cycles

4. **Timezone:** Where are you based? (CET is default)
```

Add answers to memory:
- Role and markets → CLAUDE.md "Me" section
- Weekly rhythm → memory/context/calendar.md
- Timezone → CLAUDE.md Preferences

## Notes

- If memory is already initialized, this just opens the dashboard
- Nicknames are critical — always capture how people are actually referred to
- If a source isn't available, skip it and note the gap
- Memory grows organically through natural conversation after bootstrap
- FashionUnited-specific context (markets, products, fashion terms) is pre-loaded in memory templates
