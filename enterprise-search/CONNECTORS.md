# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~chat` might mean Slack, Microsoft Teams, or any other chat tool with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (chat, email, cloud storage, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

This plugin uses `~~category` references extensively as source labels in search output (e.g. `~~chat:`, `~~email:`). These are intentional — they represent dynamic category markers that resolve to whatever tool is connected.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Slack | Microsoft Teams, Discord |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Cloud storage | `~~cloud storage` | Google Workspace (Drive) | Microsoft 365, Dropbox |
| Office suite | `~~office suite` | Google Workspace (Docs, Sheets, Slides) | Microsoft 365 |
| Code repositories | `~~code repositories` | GitHub | GitLab, Bitbucket |
| Knowledge base | `~~knowledge base` | GitHub (Wiki, Discussions, README files) | Notion, Confluence |
| Project tracker | `~~project tracker` | GitHub (Issues, Projects) | Jira, Linear, Asana |
| CRM | `~~CRM` | Vtiger CRM | Salesforce, HubSpot |
| Data warehouse | `~~data warehouse` | BigQuery | Snowflake, Redshift |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's cross-tool search across all company systems and data sources.

### Google Workspace

Provides unified search across email, documents, and files:

- **Gmail**: Email search for correspondence with advertisers, brands, partners, trade fairs, and internal team communication
- **Drive**: Document storage for editorial guidelines, brand partnerships, advertiser contracts, and company policies
- **Docs/Sheets/Slides**: Company handbook, editorial calendars, pricing sheets, market reports

### GitHub Repositories

FashionUnited's codebase and documentation across multiple repositories:

| Repository | Contents | Search Use Cases |
|------------|----------|------------------|
| `api` | Backend services, GraphQL schema, REST endpoints | API documentation, schema definitions, endpoint specs |
| `frontend` | React/Next.js web application | Component patterns, feature implementations, UI logic |
| `integrations` | Third-party integrations, data pipelines | Feed specifications, partner API integrations, sync logic |
| `product-database` | Product catalog system, brand/product data models | Product schema, brand data structures, catalog APIs |
| `deploy` | Infrastructure, CI/CD, deployment configs | Environment setup, deployment procedures, infrastructure docs |
| `about` | Company handbook, policies, onboarding | Company policies, team structure, processes |

### BigQuery Datasets

Search across analytics and business data:

| Dataset | Contents | Search Use Cases |
|---------|----------|------------------|
| `analytics` | Page views, user engagement, traffic sources | Editorial performance, content analytics |
| `jobs` | Job posting data, application metrics, employer data | Job posting history, employer analytics |
| `marketplace` | Product catalog, brand listings, retail data | Catalog search, brand performance |
| `advertising` | Campaign performance, impression data, revenue | Ad performance, advertiser reporting |
| `editorial` | Article metadata, publication history, author data | Editorial archives, content history |

### Vtiger CRM

Customer and advertiser relationship data:

- Account records (brands, retailers, agencies, trade fairs)
- Contact information for advertisers and partners
- Opportunities and revenue pipeline
- Billing history and invoicing records

### GraphQL API

FashionUnited's public GraphQL API provides searchable access to:

- Fashion news and articles
- Job postings across 30+ markets
- Brand directory with 10,000+ fashion brands
- Product catalog (marketplace items)
- Company profiles and employer branding

## Fashion industry search contexts

Enterprise search at FashionUnited supports specialized fashion industry queries:

### Brand Lookup

Search for brands across multiple sources:

- **Brand directory** (GraphQL API): Official brand profiles, logos, descriptions
- **CRM** (Vtiger): Advertiser relationships, contact history, account status
- **Product database** (GitHub/BigQuery): Product listings, catalog entries
- **Editorial archives** (BigQuery): News coverage, press releases, interviews

Example queries:
- "What do we know about [brand name]?"
- "Find all articles mentioning [brand]"
- "Who is our contact at [brand]?"
- "What products does [brand] have in the marketplace?"

### Job Posting History

Search job market data:

- **Jobs dataset** (BigQuery): Historical job postings, market trends, salary data
- **CRM** (Vtiger): Employer accounts, subscription status, posting history
- **GitHub** (api/integrations): Job feed specifications, employer integrations

Example queries:
- "Job postings for [company] in the last year"
- "Design roles in London posted this month"
- "Employer subscription status for [company]"

### Editorial Archives

Search FashionUnited's editorial content:

- **Editorial dataset** (BigQuery): Article metadata, publication dates, authors
- **GraphQL API**: Full-text article search, category browsing
- **Drive** (Google Workspace): Editorial guidelines, style guides, calendars

Example queries:
- "Articles about sustainable fashion in 2024"
- "Coverage of [trade fair] last season"
- "Content by [author] in the fashion news category"

### Marketplace Catalog

Search product and catalog data:

- **Marketplace dataset** (BigQuery): Product listings, pricing, availability
- **Product database** (GitHub): Catalog schema, feed specifications
- **GraphQL API**: Real-time product search, category browsing

Example queries:
- "Products from [brand] in the women's category"
- "Marketplace listings added this week"
- "Feed integration status for [retailer]"

## Setup requirements

1. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and enabled APIs (Gmail, Calendar, Drive, Docs, Sheets)
2. **GitHub**: Requires Personal Access Token with repo access to FashionUnited organization repositories
3. **BigQuery**: Requires Google Cloud Project with BigQuery API enabled and read access to FashionUnited datasets
4. **Vtiger CRM**: Requires Pipedream account for hosted MCP access
5. **Slack**: Works with hosted MCP endpoint (no additional setup)
