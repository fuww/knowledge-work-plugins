# Data Analyst Plugin

A data analyst plugin primarily designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application — though it also works in Claude Code. SQL queries, data exploration, visualization, dashboards, and insight generation.

This plugin is configured for **FashionUnited**, providing data analysis across BigQuery data warehouse, Plausible analytics, and Google Workspace with fashion industry-specific SQL templates and workflows.

---

## How It Works

Write SQL, explore datasets, and generate insights from FashionUnited's data infrastructure. Claude queries BigQuery directly, profiles datasets, builds visualizations, and validates analyses before sharing with stakeholders.

```
You: "How many job postings did we have in the UK market last month?"
              ↓ Claude queries BigQuery
jobs.postings: 2,847 postings in UK market for January 2026
              ↓ Claude adds context
"UK job postings were up 12% month-over-month.
 Top categories: Design (34%), Marketing (22%), Retail (18%)
 Major employers: ASOS, Burberry, Net-a-Porter"
```

No manual data exports. No switching between tools. Ask the question, get the analysis.

---

## What It Analyzes

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

Connect your data sources for comprehensive analysis. The more you connect, the deeper your insights.

| Source | What it analyzes |
|--------|------------------|
| **BigQuery** | Job postings, marketplace catalog, editorial performance, advertising revenue, Top 100 indices |
| **Plausible** | Website traffic, user engagement, content performance, referral sources |
| **Google Sheets** | Ad-hoc data exports, stakeholder reports, collaborative analysis |
| **GitHub** | Analytics project tracking, SQL query library, data model documentation |

---

## FashionUnited Data Workflows

### Job Market Analytics

Analyze fashion industry employment trends across 30+ markets.

```
/analyze job posting volume by market for Q4 2025
/analyze which fashion categories are hiring most in Europe?
/analyze employer subscription trends over the past year
```

### Editorial Performance

Measure content impact and audience engagement.

```
/analyze top performing articles this month by pageviews
/analyze traffic sources for fashion week coverage
/analyze author performance by category
```

### Marketplace Insights

Understand product catalog and brand performance.

```
/analyze products by brand in the shoes category
/analyze catalog growth by category over time
/analyze feed integration status across brands
```

### Advertising Revenue

Track campaign performance and revenue metrics.

```
/analyze revenue by advertiser for Q4
/analyze impression trends for display campaigns
/analyze advertiser retention and churn
```

### Top 100 Indices

Monitor fashion industry indices and market trends.

```
/analyze FashionUnited Global index trend
/analyze brand rankings in the luxury segment
/analyze eCommerce trend indicators
```

---

## Commands

| Command | What it does |
|---------|--------------|
| `/analyze` | Answer data questions — from quick lookups to full analyses |
| `/explore-data` | Profile and explore a dataset to understand its shape, quality, and patterns |
| `/write-query` | Write optimized BigQuery SQL with best practices |
| `/create-viz` | Create publication-quality visualizations with Python |
| `/build-dashboard` | Build interactive HTML dashboards with filters and charts |
| `/validate` | QA an analysis before sharing — methodology, accuracy, and bias checks |

---

## Skills

Six skills power the analysis experience:

**SQL Queries** — BigQuery-optimized SQL with FashionUnited schema knowledge. Writes correct, performant queries for jobs, marketplace, editorial, advertising, and Top 100 datasets.

**Data Exploration** — Data profiling, quality assessment, and pattern discovery. Understands FashionUnited's data model and common analysis patterns.

**Data Visualization** — Chart selection, Python viz code patterns, and design principles. Creates visualizations appropriate for fashion industry metrics.

**Statistical Analysis** — Descriptive stats, trend analysis, outlier detection. Applied to job market trends, content performance, and revenue metrics.

**Data Validation** — Pre-delivery QA, sanity checks, and documentation standards. Validates analyses against FashionUnited's known data quality patterns.

**Interactive Dashboard Builder** — HTML/JS dashboard construction with Chart.js. Builds dashboards for editorial, jobs, marketplace, and advertising metrics.

---

## Example Workflows

### Job Market Report

```
You: /analyze Prepare a job market report for the UK market — posting volume,
     top employers, category breakdown, and month-over-month trends.

Claude queries:
  BigQuery/jobs → Posting counts by month, employer, category
  BigQuery/analytics → Job page traffic and application metrics

Result: "UK market had 8,432 job postings in Q4 2025, up 15% YoY.
         Top employers: ASOS (234 postings), Burberry (156), H&M (143).
         Design roles lead at 31%, followed by Marketing (24%).
         [Chart: Monthly posting volume trend]
         [Table: Top 20 employers with posting counts]"
```

### Editorial Performance Analysis

```
You: /analyze Which articles performed best during Paris Fashion Week?
     Include traffic sources and engagement metrics.

Claude queries:
  BigQuery/editorial → Articles tagged Paris Fashion Week
  BigQuery/analytics → Pageviews, time on page, shares
  Plausible → Traffic sources, geographic distribution

Result: "Top 5 articles by pageviews with source breakdown.
         Social drove 45% of traffic (Instagram: 28%, X: 12%).
         Average time on page: 3:42, 23% above site average.
         [Chart: Traffic by source]
         [Table: Article performance with metrics]"
```

### Advertising Revenue Dashboard

```
You: /build-dashboard Create a monthly advertising revenue dashboard
     with revenue by advertiser, campaign performance, and trends.

Claude queries:
  BigQuery/advertising → Revenue, impressions, campaigns

Result: [Generates HTML dashboard]
        - Revenue summary with MoM change
        - Top 10 advertisers by revenue
        - Campaign performance table
        - Interactive filters by date range and advertiser
```

### Data Quality Assessment

```
You: /explore-data jobs.postings table

Claude profiles:
  Row count, column types, null rates
  Value distributions for key dimensions
  Data freshness and update patterns

Result: "jobs.postings: 2.3M rows, 34 columns
         Grain: one row per job posting
         Primary key: posting_id (100% unique)

         Quality notes:
         - market column: 31 distinct values, 0.1% null
         - category column: 'Other' accounts for 8% (consider cleanup)
         - posted_at: data current through today, no gaps"
```

---

## Getting Started

```bash
# 1. Install
claude plugins add knowledge-work-plugins/data

# 2. Analyze FashionUnited data
/analyze [your question here]

# 3. Explore a dataset
/explore-data jobs.postings
```

FashionUnited has pre-configured: BigQuery (data warehouse), Plausible (analytics), Google Sheets (exports), GitHub (documentation).

---

## Philosophy

Data analysis at FashionUnited should be fast, accurate, and actionable. Instead of exporting data, opening spreadsheets, writing formulas, and formatting reports — ask the question and get the answer.

This plugin treats BigQuery as the single source of truth for jobs, marketplace, editorial, advertising, and industry indices. One query interface, all datasets, validated results. Fashion industry business intelligence without the friction.
