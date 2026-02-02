---
name: source-management
description: Manages connected MCP sources for enterprise search. Detects available sources, guides users to connect new ones, handles source priority ordering, and manages rate limiting awareness.
---

# Source Management

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../../CONNECTORS.md).

Knows what sources are available, helps connect new ones, and manages how sources are queried.

## Checking Available Sources

Determine which MCP sources are connected by checking available tools. Each source corresponds to a set of MCP tools:

| Source | Key capabilities |
|--------|-----------------|
| **~~chat** | Search messages, read channels and threads |
| **~~email** | Search messages, read individual emails |
| **~~cloud storage** | Search files, fetch document contents |
| **~~code repositories** | Search code, read files, query issues/PRs |
| **~~project tracker** | Search tasks, issues, projects |
| **~~CRM** | Query records (accounts, contacts, opportunities) |
| **~~knowledge base** | Semantic search, keyword search |
| **~~data warehouse** | Query datasets, run analytics |

If a tool prefix is available, the source is connected and searchable.

## FashionUnited Source Configuration

FashionUnited's enterprise search is configured with these specific sources:

| Source | Tool | What It Searches |
|--------|------|------------------|
| **~~chat** | Slack | Team channels, DMs, threads, editorial discussions |
| **~~email** | Google Workspace (Gmail) | Advertiser correspondence, partner emails, internal comms |
| **~~cloud storage** | Google Workspace (Drive) | Editorial guidelines, contracts, policies, reports |
| **~~code repositories** | GitHub | api, frontend, integrations, product-database, deploy, about repos |
| **~~project tracker** | GitHub Issues/Projects | Feature requests, bugs, roadmap items |
| **~~CRM** | Vtiger CRM | Advertiser accounts, contacts, opportunities, billing |
| **~~data warehouse** | BigQuery | Editorial archives, job postings, marketplace, analytics |

### FashionUnited GitHub Repositories

| Repository | Purpose | Search For |
|------------|---------|------------|
| `api` | Backend services, GraphQL | API docs, schema, endpoints |
| `frontend` | Web application | Components, features, UI |
| `integrations` | Data pipelines, feeds | Partner integrations, sync logic |
| `product-database` | Product catalog | Product schema, brand data |
| `deploy` | Infrastructure | Deploy procedures, configs |
| `about` | Company handbook | Policies, onboarding, team info |

### FashionUnited BigQuery Datasets

| Dataset | Contents | Query Use Cases |
|---------|----------|-----------------|
| `editorial` | Articles, authors, dates | Editorial history, content search |
| `jobs` | Job postings, employers | Job market data, employer history |
| `marketplace` | Products, brands | Catalog search, product data |
| `analytics` | Traffic, engagement | Performance data, audience insights |
| `advertising` | Campaigns, impressions | Ad performance, revenue data |

## Guiding Users to Connect Sources

When a user searches but has few or no sources connected:

```
You currently have [N] source(s) connected: [list].

To expand your search, you can connect additional sources in your MCP settings:
- ~~chat — messages, threads, channels
- ~~email — emails, conversations, attachments
- ~~cloud storage — docs, sheets, slides
- ~~code repositories — code, README files, issues
- ~~project tracker — tasks, projects, milestones
- ~~CRM — accounts, contacts, opportunities
- ~~data warehouse — analytics, historical data

The more sources you connect, the more complete your search results.
```

When a user asks about a specific tool that is not connected:

```
[Tool name] isn't currently connected. To add it:
1. Open your MCP settings
2. Add the [tool] MCP server configuration
3. Authenticate when prompted

Once connected, it will be automatically included in future searches.
```

## Source Priority Ordering

Different query types benefit from searching certain sources first. Use these priorities to weight results, not to skip sources:

### By Query Type

**Decision queries** ("What did we decide..."):
```
1. ~~chat (conversations where decisions happen)
2. ~~email (decision confirmations, announcements)
3. ~~cloud storage (meeting notes, decision logs)
4. ~~knowledge base (if decisions are documented)
5. ~~project tracker (if decisions are captured in tasks)
```

**Status queries** ("What's the status of..."):
```
1. ~~project tracker (GitHub Issues — authoritative status)
2. ~~chat (real-time discussion)
3. ~~cloud storage (status docs, reports)
4. ~~email (status update emails)
5. ~~knowledge base (project pages)
```

**Document queries** ("Where's the doc for..."):
```
1. ~~cloud storage (primary doc storage)
2. ~~knowledge base (GitHub wiki, README files)
3. ~~email (docs shared via email)
4. ~~chat (docs shared in channels)
5. ~~project tracker (docs linked to issues)
```

**People queries** ("Who works on..." / "Who knows about..."):
```
1. ~~chat (message authors, channel members)
2. ~~project tracker (issue assignees)
3. ~~cloud storage (doc authors, collaborators)
4. ~~CRM (account owners, contacts)
5. ~~email (email participants)
```

**Factual/Policy queries** ("What's our policy on..."):
```
1. ~~knowledge base (GitHub about repo, handbook)
2. ~~cloud storage (policy docs, handbooks)
3. ~~email (policy announcements)
4. ~~chat (policy discussions)
```

**Brand queries** ("What do we know about [brand]...") — FashionUnited specific:
```
1. ~~CRM (official customer relationship)
2. ~~data warehouse (editorial coverage, marketplace presence)
3. ~~code repositories (integration status, feed specs)
4. ~~email (correspondence history)
5. ~~chat (mentions and discussions)
```

**Job market queries** ("Jobs at [company]...") — FashionUnited specific:
```
1. ~~data warehouse (jobs dataset - historical postings)
2. ~~CRM (employer account status)
3. ~~code repositories (job feed integrations)
4. ~~email (employer correspondence)
```

**Editorial queries** ("Articles about...") — FashionUnited specific:
```
1. ~~data warehouse (editorial dataset - article archive)
2. ~~cloud storage (editorial calendars, style guides)
3. ~~chat (#editorial channel discussions)
4. ~~email (editorial correspondence)
```

**Catalog queries** ("Products from...") — FashionUnited specific:
```
1. ~~data warehouse (marketplace dataset)
2. ~~code repositories (product-database schema)
3. ~~CRM (catalog integration status)
4. ~~chat (product discussions)
```

### Default Priority (General Queries)

When query type is unclear:
```
1. ~~chat (highest volume, most real-time)
2. ~~email (formal communications)
3. ~~cloud storage (documents and files)
4. ~~knowledge base (structured knowledge)
5. ~~code repositories (code and documentation)
6. ~~project tracker (work items)
7. ~~CRM (customer data)
8. ~~data warehouse (analytics and historical data)
```

## Rate Limiting Awareness

MCP sources may have rate limits. Handle them gracefully:

### Detection

Rate limit responses typically appear as:
- HTTP 429 responses
- Error messages mentioning "rate limit", "too many requests", or "quota exceeded"
- Throttled or delayed responses

### Handling

When a source is rate limited:

1. **Do not retry immediately** — respect the limit
2. **Continue with other sources** — do not block the entire search
3. **Inform the user**:
```
Note: [Source] is temporarily rate limited. Results below are from
[other sources]. You can retry in a few minutes to include [source].
```
4. **For digests** — if rate limited mid-scan, note which time range was covered before the limit hit

### Prevention

- Avoid unnecessary API calls — check if the source is likely to have relevant results before querying
- Use targeted queries over broad scans when possible
- For digests, batch requests where the API supports it
- Cache awareness: if a search was just run, avoid re-running the same query immediately

### Source-Specific Rate Limits

| Source | Rate Limit Notes |
|--------|------------------|
| Slack | Generally generous, watch for large channel scans |
| Google Workspace | Quota per API, per user |
| GitHub | 5000 requests/hour authenticated, search API has stricter limits |
| BigQuery | Query quotas, bytes scanned limits |
| Vtiger (Pipedream) | Varies by plan tier |

## Source Health

Track source availability during a session:

```
Source Status:
  ~~chat (Slack):        ✓ Available
  ~~email (Gmail):       ✓ Available
  ~~cloud storage (Drive): ✓ Available
  ~~code repositories (GitHub): ✓ Available
  ~~project tracker (GitHub): ✓ Available
  ~~CRM (Vtiger):        ✓ Available
  ~~data warehouse (BigQuery): ✓ Available
```

When reporting search results, include which sources were searched so the user knows the scope of the answer.

## Adding Custom Sources

The enterprise search plugin works with any MCP-connected source. As new MCP servers become available, they can be added to the `.mcp.json` configuration. The search and digest commands will automatically detect and include new sources based on available tools.

To add a new source:
1. Add the MCP server configuration to `.mcp.json`
2. Authenticate if required
3. The source will be included in subsequent searches automatically

### Adding a GitHub Repository

To include an additional FashionUnited repository in searches:
1. Ensure the GitHub MCP server has access (token permissions)
2. Update search patterns in the search-strategy skill if needed
3. The repository will be searchable via code search, file search, and issue search

### Adding a BigQuery Dataset

To include an additional BigQuery dataset:
1. Ensure BigQuery MCP server has read access to the dataset
2. Update dataset patterns in the search-strategy skill
3. The dataset will be queryable via SQL searches
