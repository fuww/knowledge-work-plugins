# Sales Plugin

A sales plugin for FashionUnited's commercial team, designed for [Cowork](https://claude.com/product/cowork) and Claude Code. Optimized for fashion industry B2B sales: job board packages, advertising campaigns, employer branding, and B2B marketplace listings.

## FashionUnited Configuration

This plugin is customized for FashionUnited's commercial workflows:
- **Vtiger CRM** for pipeline management and account history
- **Google Workspace** for email and calendar
- **GitHub** for sales materials and knowledge base
- **Google Chat** for team communication

**Target Clients**: Fashion brands, retailers, trade fairs, federations, recruitment agencies

**Products**: Job board, advertising (banner/advertorial), employer branding, B2B marketplace

**KPIs**: ~500k EUR yearly target for Key Account Managers, TOP 200 strategic accounts

## Installation

```bash
claude plugins add knowledge-work-plugins/sales
```

## Commands

Explicit workflows you invoke with a slash command:

| Command | Description |
|---|---|
| `/call-summary` | Process call notes or transcript — extract action items, draft follow-up, generate internal summary |
| `/forecast` | Generate a weighted sales forecast — upload CSV or describe your pipeline, set quota, get projections |
| `/pipeline-review` | Analyze pipeline health — prioritize deals, flag risks, get weekly action plan |

All commands work **standalone** (paste notes, upload CSV, or describe your situation) and get **supercharged** with MCP connectors.

## Skills

Domain knowledge Claude uses automatically when relevant:

| Skill | Description |
|---|---|
| `account-research` | Research a company or person — web search for company intel, key contacts, recent news, hiring signals |
| `call-prep` | Prepare for sales calls — account context, attendee research, suggested agenda, discovery questions |
| `daily-briefing` | Prioritized daily sales briefing — meetings, pipeline alerts, email priorities, suggested actions |
| `draft-outreach` | Research-first outreach — research the prospect, then draft personalized email and LinkedIn messages |
| `competitive-intelligence` | Research competitors — product comparison, pricing intel, recent releases, differentiation matrix, sales talk tracks |
| `create-an-asset` | Generate custom sales assets — landing pages, decks, one-pagers, workflow demos tailored to your prospect |

## Example Workflows

### After a Call

```
/call-summary
```

Paste your notes or transcript. Get a structured summary, action items with owners, and a draft follow-up email. If CRM is connected, offers to log the activity and create tasks.

### Weekly Forecast

```
/forecast
```

Upload a CSV export from your CRM (or paste your deals). Tell me your quota and timeline. Get a weighted forecast with best/likely/worst scenarios, commit vs. upside breakdown, and gap analysis.

### Pipeline Review

```
/pipeline-review
```

Upload a CSV or describe your pipeline. Get a health score, deal prioritization, risk flags (stale deals, past close dates, single-threaded), and a weekly action plan.

### Researching a Prospect

Just ask naturally:
```
Research Acme Corp before my call tomorrow
```

The `account-research` skill triggers automatically and gives you company overview, key contacts, recent news, and recommended approach.

### Drafting Outreach

```
Draft an email to the VP of Engineering at TechStart
```

The `draft-outreach` skill researches the prospect first, then generates personalized outreach with multiple angles.

### Competitive Intel

```
How do we compare to Competitor X?
```

The `competitive-intelligence` skill researches both companies and builds a differentiation matrix with talk tracks.

## Standalone + Supercharged

Every command and skill works without any integrations:

| What You Can Do | Standalone | Supercharged With |
|-----------------|------------|-------------------|
| Process call notes | Paste notes/transcript | Transcripts MCP (e.g. Gong, Fireflies) |
| Forecast pipeline | Upload CSV, paste deals | CRM MCP |
| Review pipeline | Upload CSV, describe deals | CRM MCP |
| Research prospects | Web search | Enrichment MCP (e.g. Clay, ZoomInfo) |
| Prep for calls | Describe meeting | CRM, Email, Calendar MCPs |
| Draft outreach | Web search + your context | CRM, Email MCPs |
| Competitive intel | Web search | CRM (win/loss data), Docs (battlecards) |

## MCP Integrations

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

**Configured integrations:**

| Category | Tool | What It Enables |
|---|---|---|
| **CRM** | Vtiger CRM | Pipeline data, account history, contact records |
| **Email/Calendar** | Google Workspace | Meeting scheduling, email follow-ups |
| **Project Tracker** | GitHub | Sales materials, knowledge base |
| **Chat** | Google Chat | Internal discussions, deal coordination |

See [CONNECTORS.md](CONNECTORS.md) for setup requirements.

## Settings

Create a local settings file at `sales/.claude/settings.local.json` to personalize:

```json
{
  "name": "Your Name",
  "title": "Key Account Manager",
  "company": "FashionUnited",
  "quota": {
    "annual": 500000,
    "quarterly": 125000
  },
  "products": [
    {
      "name": "Job Board",
      "value_props": [
        "Fashion-specific job board with 8M+ monthly visitors",
        "Multi-market reach across 30+ countries",
        "Targeted audience of fashion professionals"
      ]
    },
    {
      "name": "Advertising",
      "value_props": [
        "Banner and advertorial campaigns",
        "B2B fashion industry decision-makers",
        "Brand awareness and lead generation"
      ]
    },
    {
      "name": "Employer Branding",
      "value_props": [
        "Company profiles and culture content",
        "Attract fashion talent",
        "Build employer reputation in fashion"
      ]
    }
  ],
  "competitors": [
    "LinkedIn",
    "Indeed",
    "Industry-specific recruiters"
  ]
}
```

The plugin will ask you for this information interactively if it's not configured.
