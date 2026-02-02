# Product Management Plugin

A product management plugin primarily designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application — though it also works in Claude Code. Covers the full PM workflow: writing feature specs, managing roadmaps, communicating with stakeholders, synthesizing user research, analyzing competitors, and tracking product metrics.

This plugin is configured for **FashionUnited** product workflows, including the news platform, job board, B2B marketplace, and company directory.

## Installation

```
claude plugins add knowledge-work-plugins/product-management
```

## What It Does

This plugin gives you an AI-powered product management partner that can help with:

- **Feature Specs & PRDs** — Generate structured product requirements documents from a problem statement or feature idea. Includes FashionUnited-specific templates for news, jobs, marketplace, and directory features.
- **Roadmap Planning** — Create, update, and reprioritize your product roadmap. Integrates with GitHub Projects (Now/Next/Later) and beads issue tracking.
- **Stakeholder Updates** — Generate status updates tailored to your audience (leadership, engineering, sales, customers). Pulls context from GitHub, Slack, and Google Workspace.
- **User Research Synthesis** — Turn interview notes, survey data, and support tickets into structured insights. Includes fashion industry stakeholder personas (publishers, recruiters, brands, job seekers, retailers).
- **Competitive Analysis** — Research competitors and generate briefs with feature comparisons, positioning analysis, and strategic implications. Includes FashionUnited competitive landscape context.
- **Metrics Review** — Analyze product metrics, identify trends, compare against targets. Includes FashionUnited product-specific metrics frameworks.

## Commands

| Command | What It Does |
|---|---|
| `/write-spec` | Write a feature spec or PRD from a problem statement |
| `/roadmap-update` | Update, create, or reprioritize your roadmap |
| `/stakeholder-update` | Generate a stakeholder update (weekly, monthly, launch) |
| `/synthesize-research` | Synthesize user research from interviews, surveys, and tickets |
| `/competitive-brief` | Create a competitive analysis brief |
| `/metrics-review` | Review and analyze product metrics |

## Skills

| Skill | What It Covers |
|---|---|
| `feature-spec` | PRD structure, user stories, requirements categorization, FashionUnited product templates |
| `roadmap-management` | Prioritization frameworks, GitHub Projects integration, beads workflow, dependency mapping |
| `stakeholder-comms` | Update templates by audience, FashionUnited communication channels, decision documentation |
| `user-research-synthesis` | Thematic analysis, fashion industry personas, opportunity sizing |
| `competitive-analysis` | Feature comparison matrices, FashionUnited competitive landscape, win/loss analysis |
| `metrics-tracking` | Product metrics by FashionUnited product line, OKRs, dashboard design |

## Example Workflows

### Writing a Feature Spec for the Job Board

```
You: /write-spec
Claude: What feature or problem are you speccing out?
You: We need to improve the job application completion rate
Claude: [Asks about target users, current funnel data, constraints]
Claude: [Generates full PRD with job seeker personas, requirements, success metrics, technical considerations for Phoenix/GraphQL]
```

### Updating the Roadmap

```
You: /roadmap-update
Claude: What do you want to update?
You: Move the Store Locator feature from Next to Now, and add the subscription paywall analytics to Next
Claude: [Pulls current roadmap from GitHub Projects]
Claude: [Shows before/after, identifies dependencies, updates GitHub Projects]
```

### Synthesizing Recruiter Research

```
You: /synthesize-research
Claude: What research do you want to synthesize?
You: [Pastes 6 recruiter interview transcripts]
Claude: [Identifies themes around ATS integration pain, employer branding needs]
Claude: [Generates synthesis with recruiter persona refinement, opportunity areas, recommendations]
```

### Competitive Analysis

```
You: /competitive-brief
Claude: Which competitor(s) or feature area do you want to analyze?
You: Compare our job board to Indeed and LinkedIn for fashion industry recruitment
Claude: [Researches competitor positioning and features]
Claude: [Generates brief with FashionUnited differentiation strategy]
```

## Data Sources

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

This plugin is configured for FashionUnited's tool stack:

**Included MCP connections:**
- Chat (Slack) for team communication and stakeholder channels
- Google Workspace for documents (specs, research), spreadsheets (metrics), presentations, and email
- GitHub for project tracking (Issues + Projects), knowledge base (Wiki, Discussions), and code context
- Vtiger CRM for customer context and feedback history

**Issue tracking:**
- beads (`bd`) for granular task tracking that syncs with git
- GitHub Projects for high-level roadmap (Now/Next/Later)

**Additional options:**
- See [CONNECTORS.md](CONNECTORS.md) for alternative tools in each category

## FashionUnited Product Context

This plugin includes context for FashionUnited's products:

| Product | Purpose | Key Stakeholders |
|---------|---------|------------------|
| News Platform | Fashion industry news and editorial | Publishers, fashion professionals |
| Job Board | Fashion industry recruitment | Recruiters, job seekers, HR |
| B2B Marketplace | Fashion wholesale and trade | Brands, retailers, buyers |
| Company Directory | Fashion company profiles | Brands, retailers, professionals |

Strategic initiatives (2025-2026):
- Subscriptions/Paywall for News Platform
- Store Locator for retail discovery
- AI-First Strategy across all products
