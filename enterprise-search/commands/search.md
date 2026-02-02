---
description: Search across all connected sources in one query
argument-hint: "<query>"
---

# Search Command

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Search across all connected MCP sources in a single query. Decompose the user's question, run parallel searches, and synthesize results.

## Instructions

### 1. Check Available Sources

Before searching, determine which MCP sources are available. Attempt to identify connected tools from the available tool list. FashionUnited sources:

- **~~chat** — Slack (team channels, editorial discussions)
- **~~email** — Google Workspace Gmail (advertiser correspondence, partner emails)
- **~~cloud storage** — Google Workspace Drive (documents, contracts, policies)
- **~~code repositories** — GitHub (api, frontend, integrations, product-database, deploy, about repos)
- **~~project tracker** — GitHub Issues/Projects (features, bugs, roadmap)
- **~~CRM** — Vtiger CRM (accounts, contacts, opportunities, billing)
- **~~data warehouse** — BigQuery (editorial, jobs, marketplace, analytics, advertising)

If no MCP sources are connected:
```
To search across your tools, you'll need to connect at least one source.
Check your MCP settings to add Slack, Google Workspace, GitHub, Vtiger, or BigQuery.

Supported sources: Slack, Gmail, Drive, GitHub, Vtiger CRM, BigQuery,
and any other MCP-connected service.
```

### 2. Parse the User's Query

Analyze the search query to understand:

- **Intent**: What is the user looking for? (a decision, a document, a person, a status update, a conversation, brand info, job data, editorial content, catalog data)
- **Entities**: People, projects, teams, tools, brands, markets mentioned
- **Time constraints**: Recency signals ("this week", "last month", specific dates)
- **Source hints**: References to specific tools ("in Slack", "that email", "the doc", "in the CRM")
- **Filters**: Extract explicit filters from the query:
  - `from:` — Filter by sender/author
  - `in:` — Filter by channel, folder, or location
  - `after:` — Only results after this date
  - `before:` — Only results before this date
  - `type:` — Filter by content type (message, email, doc, thread, file)
  - `brand:` — Filter by brand name (FashionUnited specific)
  - `market:` — Filter by geographic market (FashionUnited specific)

### 3. Decompose into Sub-Queries

For each available source, create a targeted sub-query using that source's native search syntax:

**~~chat (Slack):**
- Use available search and read tools for Slack
- Translate filters: `from:` maps to sender, `in:` maps to channel, dates map to time range filters
- Use natural language queries for semantic search when appropriate
- Use keyword queries for exact matches

**~~email (Gmail):**
- Use available email search tools
- Translate filters: `from:` maps to sender, dates map to time range filters
- Map `type:` to attachment filters or subject-line searches as appropriate

**~~cloud storage (Drive):**
- Use available file search tools
- Translate to file query syntax: name contains, full text contains, modified date, file type
- Consider both file names and content

**~~code repositories (GitHub):**
- Search across FashionUnited repositories: api, frontend, integrations, product-database, deploy, about
- Use code search for implementation details
- Use file search for documentation
- Use issue/PR search for work items

**~~project tracker (GitHub Issues):**
- Use available issue search tools
- Map to issue text search, assignee filters, label filters, milestone filters
- Search both open and closed issues based on query intent

**~~CRM (Vtiger):**
- Use available CRM query tools
- Search across Account, Contact, Opportunity, and Invoice records
- For brand queries, start with Account search

**~~data warehouse (BigQuery):**
- Query appropriate dataset based on query type:
  - `editorial` — article searches, publication history
  - `jobs` — job posting history, employer data
  - `marketplace` — product catalog, brand listings
  - `analytics` — traffic data, engagement metrics
  - `advertising` — campaign performance, ad revenue

### 4. Execute Searches in Parallel

Run all sub-queries simultaneously across available sources. Do not wait for one source before searching another.

For each source:
- Execute the translated query
- Capture results with metadata (timestamps, authors, links, source type)
- Note any sources that fail or return errors — do not let one failure block others

### 5. Rank and Deduplicate Results

**Deduplication:**
- Identify the same information appearing across sources (e.g., a decision discussed in Slack AND confirmed via email)
- Group related results together rather than showing duplicates
- Prefer the most authoritative or complete version

**Ranking factors:**
- **Relevance**: How well does the result match the query intent?
- **Freshness**: More recent results rank higher for status/decision queries
- **Authority**: Official docs > wiki > chat messages for factual questions; conversations > docs for "what did we discuss" queries
- **Completeness**: Results with more context rank higher

**FashionUnited-specific ranking:**
- For brand queries: CRM > Editorial > Marketplace > Chat
- For job queries: BigQuery jobs > CRM > Integrations
- For editorial queries: BigQuery editorial > Drive > Chat
- For catalog queries: BigQuery marketplace > product-database > CRM

### 6. Present Unified Results

Format the response as a synthesized answer, not a raw list of results:

**For factual/decision queries:**
```
[Direct answer to the question]

Sources:
- [Source 1: brief description] (Slack, #channel, date)
- [Source 2: brief description] (Gmail, from person, date)
- [Source 3: brief description] (Drive, doc name, last modified)
```

**For brand lookup queries (FashionUnited specific):**
```
## [Brand Name] Overview

**Relationship Status:** [Active/Inactive] [Customer Type]
**Contract:** [Contract details from CRM]

### Editorial Coverage
- [X] articles mentioning [brand]
- Recent: [most recent coverage]

### Marketplace/Jobs
- [X] products in catalog
- [X] job postings in last year

Sources:
- CRM: Account record
- BigQuery: Editorial (X articles), Marketplace (X products), Jobs (X postings)
```

**For exploratory queries ("what do we know about X"):**
```
[Synthesized summary combining information from all sources]

Found across:
- Slack: X relevant messages in Y channels
- Gmail: X relevant threads
- Drive: X related documents
- GitHub: X relevant files/issues
- BigQuery: X data records
- [Other sources as applicable]

Key sources:
- [Most important source with link/reference]
- [Second most important source]
```

**For "find" queries (looking for a specific thing):**
```
[The thing they're looking for, with direct reference]

Also found:
- [Related items from other sources]
```

### 7. Handle Edge Cases

**Ambiguous queries:**
If the query could mean multiple things, ask one clarifying question before searching:
```
"API redesign" could refer to a few things. Are you looking for:
1. The REST API v2 redesign (Project Aurora)
2. The internal SDK API changes
3. Something else?
```

**No results:**
```
I couldn't find anything matching "[query]" across [list of sources searched].

Try:
- Broader terms (e.g., "database" instead of "PostgreSQL migration")
- Different time range (currently searching [time range])
- Checking if the relevant source is connected (currently searching: [sources])
```

**Partial results (some sources failed):**
```
[Results from successful sources]

Note: I couldn't reach [failed source(s)] during this search.
Results above are from [successful sources] only.
```

## FashionUnited Example Queries

### Brand Lookup
```
/enterprise-search:search what do we know about Gucci?
/enterprise-search:search Zara advertiser status and recent coverage
/enterprise-search:search who is our contact at H&M?
```

### Job Market
```
/enterprise-search:search design jobs in London this month
/enterprise-search:search employer subscription status for Burberry
/enterprise-search:search job posting trends in the US market
```

### Editorial
```
/enterprise-search:search articles about sustainable fashion in 2024
/enterprise-search:search coverage of Paris Fashion Week
/enterprise-search:search content by [author name]
```

### Catalog/Product
```
/enterprise-search:search products from Nike in the shoes category
/enterprise-search:search feed integration status for ASOS
/enterprise-search:search marketplace listings added this week
```

### Technical
```
/enterprise-search:search how does the job feed integration work?
/enterprise-search:search GraphQL schema for brand queries
/enterprise-search:search deployment procedure for the API
```

### General
```
/enterprise-search:search what did we decide about the redesign?
/enterprise-search:search from:sarah about:budget after:2025-01-01
/enterprise-search:search decisions made in #product this week
```

## Notes

- Always search multiple sources in parallel — never sequentially
- Synthesize results into answers, do not just list raw search results
- Include source attribution so users can dig deeper
- Respect the user's filter syntax and apply it appropriately per source
- When a query mentions a specific person, search for their messages/docs/mentions across all sources
- For time-sensitive queries, prioritize recency in ranking
- If only one source is connected, still provide useful results from that source
- For brand/entity queries, always check CRM for relationship status first
