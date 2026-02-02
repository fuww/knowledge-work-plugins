---
description: Generate fashion industry market reports from BigQuery and GraphQL API data
argument-hint: "<market or segment> [time period]"
---

# /fashion-market-report - Fashion Industry Market Reports

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Generate comprehensive fashion industry market reports by aggregating data from BigQuery datasets and the FashionUnited GraphQL API. Produces trend analysis, competitive intelligence, and market insights.

## Usage

```
/fashion-market-report <market-or-segment> [time-period]
```

### Arguments

- `market-or-segment` — The focus area for the report:
  - **Geographic**: `uk`, `germany`, `france`, `us`, `netherlands`, `global`, etc.
  - **Segment**: `luxury`, `fast-fashion`, `sustainable`, `sportswear`, etc.
  - **Category**: `jobs`, `marketplace`, `editorial`, `advertising`
  - **Combined**: `uk luxury jobs`, `global sustainable fashion`, etc.
- `time-period` — Optional time range (default: last 30 days):
  - `this-week`, `last-week`, `this-month`, `last-month`
  - `q1-2025`, `q4-2024`, etc.
  - `2024`, `2025`, etc.
  - `last-90-days`, `ytd`, etc.

## Report Types

### 1. Job Market Report

Analyzes fashion industry employment trends:

**Data Sources:**
- `jobs.postings` — Job posting volume, categories, locations
- `jobs.employers` — Employer activity and subscription status
- `jobs.markets` — Market-level aggregates
- GraphQL API — Real-time job listings

**Key Metrics:**
- Total job postings (volume, YoY change)
- Postings by category (design, retail, marketing, production, etc.)
- Top hiring employers
- Average time-to-fill
- Salary ranges by role (where available)
- Geographic distribution

**Example:**
```
/fashion-market-report uk jobs q4-2024
```

### 2. Marketplace Report

Analyzes product catalog and brand activity:

**Data Sources:**
- `marketplace.products` — Product listings, pricing, categories
- `marketplace.brands` — Brand presence and catalog size
- `marketplace.feeds` — Feed integration status
- GraphQL API — Real-time product and brand data

**Key Metrics:**
- Total active products
- Products by category (women's, men's, accessories, etc.)
- New products added
- Brand activity (new brands, catalog growth)
- Price point distribution
- Category trends

**Example:**
```
/fashion-market-report luxury marketplace this-quarter
```

### 3. Editorial/Content Report

Analyzes fashion news coverage and content performance:

**Data Sources:**
- `editorial.articles` — Article metadata, topics, authors
- `editorial.performance` — Views, shares, engagement
- `analytics.pageviews` — Traffic data
- GraphQL API — Article search and content data

**Key Metrics:**
- Article volume by topic/category
- Top performing content
- Traffic trends by market
- Author productivity
- Topic coverage gaps
- Engagement rates

**Example:**
```
/fashion-market-report sustainable fashion editorial last-month
```

### 4. Advertising Report

Analyzes advertising performance and revenue:

**Data Sources:**
- `advertising.campaigns` — Campaign data
- `advertising.impressions` — Impression delivery
- `advertising.revenue` — Revenue attribution

**Key Metrics:**
- Revenue by advertiser
- Campaign performance (impressions, clicks, CTR)
- Revenue by market
- Top advertisers
- Inventory utilization
- Revenue trends

**Example:**
```
/fashion-market-report global advertising q4-2024
```

### 5. Comprehensive Market Report

Full fashion industry overview combining all data sources:

**Example:**
```
/fashion-market-report germany comprehensive last-quarter
```

## Workflow

### 1. Parse Request

Identify:
- Target market(s) or segment(s)
- Report type (jobs, marketplace, editorial, advertising, or comprehensive)
- Time period and comparison period
- Any specific focus areas mentioned

### 2. Query Data Sources

**BigQuery queries:**

```sql
-- Job market overview
SELECT
  market,
  category,
  COUNT(*) as postings,
  COUNT(DISTINCT company) as employers
FROM jobs.postings
WHERE posted_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
  AND market = @target_market
GROUP BY market, category
ORDER BY postings DESC

-- Marketplace activity
SELECT
  brand,
  category,
  COUNT(*) as products,
  AVG(price) as avg_price
FROM marketplace.products
WHERE status = 'active'
GROUP BY brand, category
ORDER BY products DESC
LIMIT 20

-- Editorial performance
SELECT
  category,
  COUNT(*) as articles,
  SUM(pageviews) as total_views,
  AVG(pageviews) as avg_views
FROM editorial.articles a
JOIN analytics.performance p ON a.id = p.article_id
WHERE published_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
GROUP BY category
ORDER BY total_views DESC
```

**GraphQL API queries:**

```graphql
# Real-time job data
query RecentJobs($market: String!, $limit: Int) {
  jobs(market: $market, limit: $limit) {
    id
    title
    company
    category
    posted_at
  }
}

# Brand activity
query ActiveBrands($limit: Int) {
  brands(limit: $limit, orderBy: PRODUCTS_COUNT_DESC) {
    name
    products_count
    description
  }
}
```

### 3. Analyze and Compare

- Calculate period-over-period changes
- Identify significant trends and anomalies
- Compare to historical baselines
- Highlight notable movements

### 4. Generate Report

**Report Structure:**

```markdown
# Fashion Market Report: [Market/Segment]
Period: [Date Range]
Generated: [Today's Date]

## Executive Summary
[2-3 key takeaways]

## Key Metrics
| Metric | Current | Previous | Change |
|--------|---------|----------|--------|
| ...    | ...     | ...      | ...    |

## [Section 1: e.g., Job Market]
[Analysis and data]

## [Section 2: e.g., Brand Activity]
[Analysis and data]

## Trends and Insights
[Notable observations]

## Methodology
- Data sources: BigQuery ([datasets]), FashionUnited GraphQL API
- Period: [dates]
- Market filter: [if applicable]

## Appendix
[Detailed data tables if needed]
```

### 5. Offer Follow-ups

Suggest related analyses:
- Drill-down into specific segments
- Comparison with other markets
- Historical trend analysis
- Competitive benchmarking

## Examples

```
/fashion-market-report uk                           # UK overview, last 30 days
/fashion-market-report germany jobs last-quarter    # German job market, Q4
/fashion-market-report luxury marketplace ytd       # Luxury product catalog, YTD
/fashion-market-report sustainable editorial        # Sustainable fashion coverage
/fashion-market-report global comprehensive q4-2024 # Full industry report
```

## Tips

- Start with a specific market or segment for more actionable insights
- Use `comprehensive` for full industry overview, but expect longer generation time
- Quarterly reports are ideal for trend analysis
- Job market data is most reliable for recent periods (last 90 days)
- Marketplace data reflects active listings at query time
- Editorial data includes both current and archived content
