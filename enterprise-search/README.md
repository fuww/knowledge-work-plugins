# Enterprise Search

An enterprise search plugin primarily designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application — though it also works in Claude Code. Search across all your company's tools in one place — email, chat, documents, code, CRM, and data warehouse — without switching between apps.

This plugin is configured for **FashionUnited**, providing unified search across Google Workspace, Google Chat, GitHub repositories, Vtiger CRM, and BigQuery datasets with fashion industry-specific search contexts.

---

## How It Works

One query searches all your connected tools simultaneously. Claude decomposes your question, runs targeted searches across every source, and synthesizes the results into a single coherent answer with source attribution.

```
You: "What do we know about Gucci?"
              ↓ Claude searches
CRM: Account record — Active advertiser, annual display package
BigQuery/editorial: 47 articles mentioning Gucci in 2024
BigQuery/marketplace: 1,247 products in catalog
BigQuery/jobs: 12 job postings in last 6 months
Email: Recent correspondence about contract renewal
              ↓ Claude synthesizes
"Gucci is an active advertiser with FashionUnited on an annual
 display package. We've published 47 articles mentioning them
 in 2024, they have 1,247 products in the marketplace, and
 they've posted 12 jobs in the last 6 months."
```

No tab switching. No remembering which tool has what. Ask the question, get the answer.

---

## What It Searches

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

Connect any combination of sources. The more you connect, the more complete your answers.

| Source | What it finds |
|--------|---------------|
| **Google Chat** | Messages, threads, spaces, DMs |
| **Gmail** | Emails, attachments, conversations |
| **Google Drive** | Docs, sheets, slides, PDFs |
| **GitHub** | Code, README files, issues, PRs, wiki |
| **Vtiger CRM** | Accounts, contacts, opportunities, invoices |
| **BigQuery** | Editorial archives, job postings, marketplace data, analytics |

Each source is an MCP connection. Add more sources in your MCP settings to expand what Claude can search.

---

## Fashion Industry Search Contexts

Enterprise search at FashionUnited supports specialized fashion industry queries:

### Brand Lookup
Search for brands across all data sources — CRM relationships, editorial coverage, marketplace presence, and job activity.
```
/enterprise-search:search what do we know about Gucci?
/enterprise-search:search who is our contact at H&M?
```

### Job Posting History
Search job market data across 30+ markets.
```
/enterprise-search:search design jobs in London this month
/enterprise-search:search job posting trends from luxury brands
```

### Editorial Archives
Search FashionUnited's editorial content and publication history.
```
/enterprise-search:search articles about sustainable fashion in 2024
/enterprise-search:search coverage of Paris Fashion Week
```

### Marketplace Catalog
Search product and catalog data.
```
/enterprise-search:search products from Nike in the shoes category
/enterprise-search:search feed integration status for ASOS
```

---

## Commands

| Command | What it does |
|---------|--------------|
| `/search` | Search across all connected sources in one query |
| `/digest` | Generate a daily or weekly digest of activity across all sources |

### Search

```
/enterprise-search:search what's the status of Project Aurora?
/enterprise-search:search from:sarah about:budget after:2025-01-01
/enterprise-search:search decisions made in #product this week
/enterprise-search:search what do we know about Burberry?
/enterprise-search:search design jobs in the UK market
```

Supports filters: `from:`, `in:`, `after:`, `before:`, `type:`, `brand:`, `market:` — applied intelligently across each source's native query syntax.

### Digest

```
/enterprise-search:digest --daily      # What happened today across all sources
/enterprise-search:digest --weekly     # Weekly rollup grouped by project/topic
```

Highlights action items, decisions, and mentions of you. Groups activity by topic so you can skim what matters. Includes FashionUnited-specific sections for editorial, jobs, and marketplace activity.

---

## Skills

Three skills power the search experience:

**Search Strategy** — Query decomposition and source-specific translation. Breaks your natural language question into targeted searches per source, handles ambiguity, and falls back gracefully when sources are unavailable. Includes fashion industry query patterns for brand lookup, job market, editorial, and catalog searches.

**Source Management** — Knows which MCP sources are available, guides you to connect new ones, manages source priority, and handles rate limits. Configured for FashionUnited's specific source stack: Google Chat, Google Workspace, GitHub, Vtiger CRM, and BigQuery.

**Knowledge Synthesis** — Combines results from multiple sources into coherent answers. Deduplicates cross-source information, attributes sources, scores confidence based on freshness and authority, and summarizes large result sets.

---

## Example Workflows

### Finding brand information

```
You: /enterprise-search:search what do we know about Zara?

Claude searches:
  CRM → Account record for Zara
  BigQuery/editorial → Articles mentioning Zara
  BigQuery/marketplace → Products from Zara
  BigQuery/jobs → Job postings from Zara
  Email → Correspondence with Zara contacts

Result: "Zara is an active advertiser with a quarterly display package.
         We've published 23 articles about them this year.
         They have 3,456 products in the marketplace catalog
         and have posted 45 jobs across European markets."
```

### Finding a decision

```
You: /enterprise-search:search when did we decide to switch to Postgres?

Claude searches:
  Google Chat → #engineering, #infrastructure for "postgres" "switch" "decision"
  Gmail → threads with "postgres" in subject
  Drive → docs mentioning database migration
  GitHub → issues and PRs related to database migration

Result: "The decision was made March 3 in #infrastructure (link).
         Sarah's email on March 4 confirmed the timeline.
         The migration plan doc was updated March 5."
```

### Catching up after time off

```
You: /enterprise-search:digest --weekly

Claude scans:
  Google Chat → spaces you're in, DMs, mentions
  Gmail → inbox activity
  Drive → docs shared with you or modified
  GitHub → PRs and issues assigned to you
  Vtiger → account updates for your advertisers
  BigQuery → notable editorial/jobs/marketplace activity

Result: Grouped summary by project with action items
        flagged and decisions highlighted.
        FashionUnited highlights: 45 articles published,
        12 new advertiser inquiries, 230 new job postings.
```

### Finding technical documentation

```
You: /enterprise-search:search how does the job feed integration work?

Claude searches:
  GitHub/integrations → feed implementation code
  GitHub/api → job-related endpoints
  Drive → integration documentation
  Google Chat → #engineering discussions about job feeds

Result: "Job feeds are processed by the integrations service.
         Here's the main handler (link to code).
         The API exposes these endpoints for job data.
         Documentation is in the integrations README."
```

---

## Getting Started

```bash
# 1. Install
claude plugins add knowledge-work-plugins/enterprise-search

# 2. Search across everything
/enterprise-search:search [your question here]

# 3. Get a digest
/enterprise-search:digest --daily
```

The more sources you connect via MCP, the more complete your search results. FashionUnited has pre-configured: Google Chat, Google Workspace, GitHub, Vtiger CRM, and BigQuery.

---

## Philosophy

Knowledge workers spend hours every week hunting for information scattered across tools. The answer exists somewhere — in a Google Chat thread, an email chain, a doc, a CRM record, a BigQuery table — but finding it means searching each tool individually, cross-referencing results, and hoping you checked the right place.

Enterprise Search treats all your tools as one searchable knowledge base. One query, all sources, synthesized results. Your company's knowledge shouldn't be locked in silos. Search everything at once.

For FashionUnited, this means unified access to editorial archives, job market data, brand relationships, marketplace catalogs, and team communications — the complete picture of our business in one search.
