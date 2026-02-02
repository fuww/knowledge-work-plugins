# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~data warehouse` might mean BigQuery, Snowflake, or any other warehouse with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (data warehouse, analytics, spreadsheets, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Data warehouse | `~~data warehouse` | BigQuery | Snowflake, Redshift, Databricks |
| Dashboards | `~~dashboards` | Looker Studio | Tableau, Power BI, Metabase |
| Analytics | `~~analytics` | Plausible Analytics | Amplitude, Mixpanel, Google Analytics |
| Spreadsheets | `~~spreadsheets` | Google Sheets (via Workspace) | Microsoft Excel, Airtable |
| Project tracker | `~~project tracker` | GitHub | Jira, Linear, Asana |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's data and business intelligence workflows.

### BigQuery Datasets

FashionUnited's BigQuery data warehouse contains:

| Dataset | Contents | Common Queries |
|---------|----------|----------------|
| `analytics` | Page views, user engagement, traffic sources | Editorial performance, content analytics, top articles |
| `jobs` | Job postings, applications, employer data | Job posting metrics, market trends, employer analytics |
| `marketplace` | Product catalog, brand listings, feed data | Catalog analytics, brand performance, product trends |
| `advertising` | Campaign performance, impressions, revenue | Ad performance, advertiser reporting, revenue metrics |
| `editorial` | Article metadata, publication history | Content performance, author analytics, topic trends |
| `top100` | Fashion industry indices, trend data | Top 100 rankings, market indices, eCommerce trends |

### Key Tables

#### Jobs Dataset
- `jobs.postings` — All job postings across 30+ markets
- `jobs.applications` — Application metrics by posting
- `jobs.employers` — Employer profiles and subscription status
- `jobs.markets` — Market-level aggregates by country/region

#### Marketplace Dataset
- `marketplace.products` — Product catalog with brand, category, pricing
- `marketplace.brands` — Brand directory with profiles
- `marketplace.feeds` — Feed integration status and sync logs
- `marketplace.categories` — Category hierarchy and mappings

#### Analytics Dataset
- `analytics.pageviews` — Page-level traffic data
- `analytics.sessions` — Session-level engagement metrics
- `analytics.sources` — Traffic source attribution
- `analytics.events` — Custom event tracking

#### Editorial Dataset
- `editorial.articles` — Article metadata, authors, categories
- `editorial.performance` — Article-level metrics (views, shares, time-on-page)
- `editorial.authors` — Author profiles and contribution history

#### Advertising Dataset
- `advertising.campaigns` — Campaign configuration and status
- `advertising.impressions` — Impression data by campaign/placement
- `advertising.revenue` — Revenue attribution and billing

#### Top 100 Dataset
- `top100.indices` — Fashion industry index values over time
- `top100.brands` — Brand rankings and score components
- `top100.ecommerce` — eCommerce trend indicators
- `top100.market_research` — Market segment analysis

### Plausible Analytics

Website traffic and engagement analytics for FashionUnited properties:

- Real-time visitor counts
- Traffic sources and referrers
- Geographic distribution
- Page performance metrics
- Goal and event tracking

Used for: content performance monitoring, traffic reporting, editorial decision support.

### Looker Studio

Interactive dashboards and reports for FashionUnited data:

- Pre-built dashboards for jobs, editorial, advertising, and marketplace metrics
- Self-service report builder connected to BigQuery datasets
- Scheduled report delivery to stakeholders
- Embedded dashboards in internal tools

Used for: executive dashboards, team performance reports, client-facing analytics, trend monitoring.

### Google Sheets

Data export and report distribution via Google Workspace:

- Automated report delivery to stakeholders
- Ad-hoc data exports for analysis
- Collaborative data collection
- Dashboard data sources

### GitHub

Documentation and project tracking:

- Data model documentation in repository wikis
- Analytics project tracking via Issues
- SQL query library in repositories
- Data pipeline configurations

## Setup requirements

1. **BigQuery**: Requires Google Cloud Project with BigQuery API enabled and read access to FashionUnited datasets
2. **Looker Studio**: Requires Google Cloud Project with Looker Studio API access and viewer/editor permissions on FashionUnited dashboards
3. **Plausible**: Requires Plausible API key and site ID for FashionUnited properties
4. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and Sheets API enabled
5. **GitHub**: Requires Personal Access Token with repo access

## Fashion industry data contexts

### Job Market Analytics

Query patterns for job market data:

```sql
-- Job posting volume by market
SELECT market, COUNT(*) as postings, DATE_TRUNC(posted_at, MONTH) as month
FROM jobs.postings
WHERE posted_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
GROUP BY market, month
ORDER BY month DESC, postings DESC
```

### Content Performance

Query patterns for editorial analytics:

```sql
-- Top performing articles by category
SELECT category, title, pageviews, shares
FROM editorial.articles a
JOIN analytics.performance p ON a.id = p.article_id
WHERE published_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
ORDER BY pageviews DESC
LIMIT 20
```

### Marketplace Catalog

Query patterns for product data:

```sql
-- Products by brand and category
SELECT brand, category, COUNT(*) as products, AVG(price) as avg_price
FROM marketplace.products
WHERE status = 'active'
GROUP BY brand, category
ORDER BY products DESC
```

### Advertising Revenue

Query patterns for ad performance:

```sql
-- Revenue by advertiser
SELECT advertiser, SUM(revenue) as total_revenue, COUNT(DISTINCT campaign_id) as campaigns
FROM advertising.revenue
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
GROUP BY advertiser
ORDER BY total_revenue DESC
```

### Top 100 Indices

Query patterns for industry indices:

```sql
-- Index trend over time
SELECT index_name, date, value, change_pct
FROM top100.indices
WHERE index_name = 'FashionUnited_Global'
ORDER BY date DESC
LIMIT 30
```
