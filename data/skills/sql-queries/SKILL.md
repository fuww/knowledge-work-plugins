---
name: sql-queries
description: Write correct, performant BigQuery SQL for FashionUnited data analysis. Includes templates for job posting metrics, editorial analytics, advertising performance, marketplace catalog, and Top 100 indices. Also supports other SQL dialects when needed.
---

# SQL Queries Skill

Write correct, performant, readable SQL across all major data warehouse dialects.

## Dialect-Specific Reference

### PostgreSQL (including Aurora, RDS, Supabase, Neon)

**Date/time:**
```sql
-- Current date/time
CURRENT_DATE, CURRENT_TIMESTAMP, NOW()

-- Date arithmetic
date_column + INTERVAL '7 days'
date_column - INTERVAL '1 month'

-- Truncate to period
DATE_TRUNC('month', created_at)

-- Extract parts
EXTRACT(YEAR FROM created_at)
EXTRACT(DOW FROM created_at)  -- 0=Sunday

-- Format
TO_CHAR(created_at, 'YYYY-MM-DD')
```

**String functions:**
```sql
-- Concatenation
first_name || ' ' || last_name
CONCAT(first_name, ' ', last_name)

-- Pattern matching
column ILIKE '%pattern%'  -- case-insensitive
column ~ '^regex_pattern$'  -- regex

-- String manipulation
LEFT(str, n), RIGHT(str, n)
SPLIT_PART(str, delimiter, position)
REGEXP_REPLACE(str, pattern, replacement)
```

**Arrays and JSON:**
```sql
-- JSON access
data->>'key'  -- text
data->'nested'->'key'  -- json
data#>>'{path,to,key}'  -- nested text

-- Array operations
ARRAY_AGG(column)
ANY(array_column)
array_column @> ARRAY['value']
```

**Performance tips:**
- Use `EXPLAIN ANALYZE` to profile queries
- Create indexes on frequently filtered/joined columns
- Use `EXISTS` over `IN` for correlated subqueries
- Partial indexes for common filter conditions
- Use connection pooling for concurrent access

---

### Snowflake

**Date/time:**
```sql
-- Current date/time
CURRENT_DATE(), CURRENT_TIMESTAMP(), SYSDATE()

-- Date arithmetic
DATEADD(day, 7, date_column)
DATEDIFF(day, start_date, end_date)

-- Truncate to period
DATE_TRUNC('month', created_at)

-- Extract parts
YEAR(created_at), MONTH(created_at), DAY(created_at)
DAYOFWEEK(created_at)

-- Format
TO_CHAR(created_at, 'YYYY-MM-DD')
```

**String functions:**
```sql
-- Case-insensitive by default (depends on collation)
column ILIKE '%pattern%'
REGEXP_LIKE(column, 'pattern')

-- Parse JSON
column:key::string  -- dot notation for VARIANT
PARSE_JSON('{"key": "value"}')
GET_PATH(variant_col, 'path.to.key')

-- Flatten arrays/objects
SELECT f.value FROM table, LATERAL FLATTEN(input => array_col) f
```

**Semi-structured data:**
```sql
-- VARIANT type access
data:customer:name::STRING
data:items[0]:price::NUMBER

-- Flatten nested structures
SELECT
    t.id,
    item.value:name::STRING as item_name,
    item.value:qty::NUMBER as quantity
FROM my_table t,
LATERAL FLATTEN(input => t.data:items) item
```

**Performance tips:**
- Use clustering keys on large tables (not traditional indexes)
- Filter on clustering key columns for partition pruning
- Set appropriate warehouse size for query complexity
- Use `RESULT_SCAN(LAST_QUERY_ID())` to avoid re-running expensive queries
- Use transient tables for staging/temp data

---

### BigQuery (Google Cloud)

**Date/time:**
```sql
-- Current date/time
CURRENT_DATE(), CURRENT_TIMESTAMP()

-- Date arithmetic
DATE_ADD(date_column, INTERVAL 7 DAY)
DATE_SUB(date_column, INTERVAL 1 MONTH)
DATE_DIFF(end_date, start_date, DAY)
TIMESTAMP_DIFF(end_ts, start_ts, HOUR)

-- Truncate to period
DATE_TRUNC(created_at, MONTH)
TIMESTAMP_TRUNC(created_at, HOUR)

-- Extract parts
EXTRACT(YEAR FROM created_at)
EXTRACT(DAYOFWEEK FROM created_at)  -- 1=Sunday

-- Format
FORMAT_DATE('%Y-%m-%d', date_column)
FORMAT_TIMESTAMP('%Y-%m-%d %H:%M:%S', ts_column)
```

**String functions:**
```sql
-- No ILIKE, use LOWER()
LOWER(column) LIKE '%pattern%'
REGEXP_CONTAINS(column, r'pattern')
REGEXP_EXTRACT(column, r'pattern')

-- String manipulation
SPLIT(str, delimiter)  -- returns ARRAY
ARRAY_TO_STRING(array, delimiter)
```

**Arrays and structs:**
```sql
-- Array operations
ARRAY_AGG(column)
UNNEST(array_column)
ARRAY_LENGTH(array_column)
value IN UNNEST(array_column)

-- Struct access
struct_column.field_name
```

**Performance tips:**
- Always filter on partition columns (usually date) to reduce bytes scanned
- Use clustering for frequently filtered columns within partitions
- Use `APPROX_COUNT_DISTINCT()` for large-scale cardinality estimates
- Avoid `SELECT *` -- billing is per-byte scanned
- Use `DECLARE` and `SET` for parameterized scripts
- Preview query cost with dry run before executing large queries

---

### Redshift (Amazon)

**Date/time:**
```sql
-- Current date/time
CURRENT_DATE, GETDATE(), SYSDATE

-- Date arithmetic
DATEADD(day, 7, date_column)
DATEDIFF(day, start_date, end_date)

-- Truncate to period
DATE_TRUNC('month', created_at)

-- Extract parts
EXTRACT(YEAR FROM created_at)
DATE_PART('dow', created_at)
```

**String functions:**
```sql
-- Case-insensitive
column ILIKE '%pattern%'
REGEXP_INSTR(column, 'pattern') > 0

-- String manipulation
SPLIT_PART(str, delimiter, position)
LISTAGG(column, ', ') WITHIN GROUP (ORDER BY column)
```

**Performance tips:**
- Design distribution keys for collocated joins (DISTKEY)
- Use sort keys for frequently filtered columns (SORTKEY)
- Use `EXPLAIN` to check query plan
- Avoid cross-node data movement (watch for DS_BCAST and DS_DIST)
- `ANALYZE` and `VACUUM` regularly
- Use late-binding views for schema flexibility

---

### Databricks SQL

**Date/time:**
```sql
-- Current date/time
CURRENT_DATE(), CURRENT_TIMESTAMP()

-- Date arithmetic
DATE_ADD(date_column, 7)
DATEDIFF(end_date, start_date)
ADD_MONTHS(date_column, 1)

-- Truncate to period
DATE_TRUNC('MONTH', created_at)
TRUNC(date_column, 'MM')

-- Extract parts
YEAR(created_at), MONTH(created_at)
DAYOFWEEK(created_at)
```

**Delta Lake features:**
```sql
-- Time travel
SELECT * FROM my_table TIMESTAMP AS OF '2024-01-15'
SELECT * FROM my_table VERSION AS OF 42

-- Describe history
DESCRIBE HISTORY my_table

-- Merge (upsert)
MERGE INTO target USING source
ON target.id = source.id
WHEN MATCHED THEN UPDATE SET *
WHEN NOT MATCHED THEN INSERT *
```

**Performance tips:**
- Use Delta Lake's `OPTIMIZE` and `ZORDER` for query performance
- Leverage Photon engine for compute-intensive queries
- Use `CACHE TABLE` for frequently accessed datasets
- Partition by low-cardinality date columns

---

## Common SQL Patterns

### Window Functions

```sql
-- Ranking
ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at DESC)
RANK() OVER (PARTITION BY category ORDER BY revenue DESC)
DENSE_RANK() OVER (ORDER BY score DESC)

-- Running totals / moving averages
SUM(revenue) OVER (ORDER BY date_col ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total
AVG(revenue) OVER (ORDER BY date_col ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as moving_avg_7d

-- Lag / Lead
LAG(value, 1) OVER (PARTITION BY entity ORDER BY date_col) as prev_value
LEAD(value, 1) OVER (PARTITION BY entity ORDER BY date_col) as next_value

-- First / Last value
FIRST_VALUE(status) OVER (PARTITION BY user_id ORDER BY created_at ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
LAST_VALUE(status) OVER (PARTITION BY user_id ORDER BY created_at ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)

-- Percent of total
revenue / SUM(revenue) OVER () as pct_of_total
revenue / SUM(revenue) OVER (PARTITION BY category) as pct_of_category
```

### CTEs for Readability

```sql
WITH
-- Step 1: Define the base population
base_users AS (
    SELECT user_id, created_at, plan_type
    FROM users
    WHERE created_at >= DATE '2024-01-01'
      AND status = 'active'
),

-- Step 2: Calculate user-level metrics
user_metrics AS (
    SELECT
        u.user_id,
        u.plan_type,
        COUNT(DISTINCT e.session_id) as session_count,
        SUM(e.revenue) as total_revenue
    FROM base_users u
    LEFT JOIN events e ON u.user_id = e.user_id
    GROUP BY u.user_id, u.plan_type
),

-- Step 3: Aggregate to summary level
summary AS (
    SELECT
        plan_type,
        COUNT(*) as user_count,
        AVG(session_count) as avg_sessions,
        SUM(total_revenue) as total_revenue
    FROM user_metrics
    GROUP BY plan_type
)

SELECT * FROM summary ORDER BY total_revenue DESC;
```

### Cohort Retention

```sql
WITH cohorts AS (
    SELECT
        user_id,
        DATE_TRUNC('month', first_activity_date) as cohort_month
    FROM users
),
activity AS (
    SELECT
        user_id,
        DATE_TRUNC('month', activity_date) as activity_month
    FROM user_activity
)
SELECT
    c.cohort_month,
    COUNT(DISTINCT c.user_id) as cohort_size,
    COUNT(DISTINCT CASE
        WHEN a.activity_month = c.cohort_month THEN a.user_id
    END) as month_0,
    COUNT(DISTINCT CASE
        WHEN a.activity_month = c.cohort_month + INTERVAL '1 month' THEN a.user_id
    END) as month_1,
    COUNT(DISTINCT CASE
        WHEN a.activity_month = c.cohort_month + INTERVAL '3 months' THEN a.user_id
    END) as month_3
FROM cohorts c
LEFT JOIN activity a ON c.user_id = a.user_id
GROUP BY c.cohort_month
ORDER BY c.cohort_month;
```

### Funnel Analysis

```sql
WITH funnel AS (
    SELECT
        user_id,
        MAX(CASE WHEN event = 'page_view' THEN 1 ELSE 0 END) as step_1_view,
        MAX(CASE WHEN event = 'signup_start' THEN 1 ELSE 0 END) as step_2_start,
        MAX(CASE WHEN event = 'signup_complete' THEN 1 ELSE 0 END) as step_3_complete,
        MAX(CASE WHEN event = 'first_purchase' THEN 1 ELSE 0 END) as step_4_purchase
    FROM events
    WHERE event_date >= CURRENT_DATE - INTERVAL '30 days'
    GROUP BY user_id
)
SELECT
    COUNT(*) as total_users,
    SUM(step_1_view) as viewed,
    SUM(step_2_start) as started_signup,
    SUM(step_3_complete) as completed_signup,
    SUM(step_4_purchase) as purchased,
    ROUND(100.0 * SUM(step_2_start) / NULLIF(SUM(step_1_view), 0), 1) as view_to_start_pct,
    ROUND(100.0 * SUM(step_3_complete) / NULLIF(SUM(step_2_start), 0), 1) as start_to_complete_pct,
    ROUND(100.0 * SUM(step_4_purchase) / NULLIF(SUM(step_3_complete), 0), 1) as complete_to_purchase_pct
FROM funnel;
```

### Deduplication

```sql
-- Keep the most recent record per key
WITH ranked AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY entity_id
            ORDER BY updated_at DESC
        ) as rn
    FROM source_table
)
SELECT * FROM ranked WHERE rn = 1;
```

## Error Handling and Debugging

When a query fails:

1. **Syntax errors**: Check for dialect-specific syntax (e.g., `ILIKE` not available in BigQuery, `SAFE_DIVIDE` only in BigQuery)
2. **Column not found**: Verify column names against schema -- check for typos, case sensitivity (PostgreSQL is case-sensitive for quoted identifiers)
3. **Type mismatches**: Cast explicitly when comparing different types (`CAST(col AS DATE)`, `col::DATE`)
4. **Division by zero**: Use `NULLIF(denominator, 0)` or dialect-specific safe division
5. **Ambiguous columns**: Always qualify column names with table alias in JOINs
6. **Group by errors**: All non-aggregated columns must be in GROUP BY (except in BigQuery which allows grouping by alias)

---

## FashionUnited SQL Templates

FashionUnited uses BigQuery as the primary data warehouse. Below are common query patterns for FashionUnited datasets.

### Job Posting Metrics

```sql
-- Job posting volume by market and month
SELECT
    market,
    DATE_TRUNC(posted_at, MONTH) as month,
    COUNT(*) as postings,
    COUNT(DISTINCT employer_id) as unique_employers
FROM jobs.postings
WHERE posted_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
GROUP BY market, month
ORDER BY month DESC, postings DESC;

-- Top employers by posting volume
SELECT
    employer_name,
    market,
    COUNT(*) as total_postings,
    COUNT(DISTINCT category) as categories,
    MIN(posted_at) as first_posting,
    MAX(posted_at) as latest_posting
FROM jobs.postings
WHERE posted_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
GROUP BY employer_name, market
ORDER BY total_postings DESC
LIMIT 50;

-- Job category distribution by market
SELECT
    market,
    category,
    COUNT(*) as postings,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY market), 1) as pct_of_market
FROM jobs.postings
WHERE posted_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
GROUP BY market, category
ORDER BY market, postings DESC;
```

### Editorial Analytics (News Traffic)

```sql
-- Top articles by pageviews
SELECT
    a.id,
    a.title,
    a.category,
    a.author,
    a.published_at,
    p.pageviews,
    p.unique_visitors,
    p.avg_time_on_page
FROM editorial.articles a
JOIN analytics.performance p ON a.id = p.article_id
WHERE a.published_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
ORDER BY p.pageviews DESC
LIMIT 20;

-- Content performance by category
SELECT
    category,
    COUNT(*) as articles,
    SUM(p.pageviews) as total_pageviews,
    AVG(p.pageviews) as avg_pageviews,
    AVG(p.avg_time_on_page) as avg_time_on_page
FROM editorial.articles a
JOIN analytics.performance p ON a.id = p.article_id
WHERE a.published_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
GROUP BY category
ORDER BY total_pageviews DESC;

-- Traffic by source
SELECT
    source,
    DATE_TRUNC(date, WEEK) as week,
    SUM(sessions) as sessions,
    SUM(pageviews) as pageviews,
    ROUND(100.0 * SUM(sessions) / SUM(SUM(sessions)) OVER (PARTITION BY DATE_TRUNC(date, WEEK)), 1) as pct_of_traffic
FROM analytics.sources
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 WEEK)
GROUP BY source, week
ORDER BY week DESC, sessions DESC;
```

### Advertising Performance

```sql
-- Revenue by advertiser
SELECT
    advertiser,
    SUM(revenue) as total_revenue,
    COUNT(DISTINCT campaign_id) as campaigns,
    SUM(impressions) as total_impressions,
    SAFE_DIVIDE(SUM(revenue), SUM(impressions)) * 1000 as cpm
FROM advertising.revenue
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
GROUP BY advertiser
ORDER BY total_revenue DESC;

-- Monthly revenue trend
SELECT
    DATE_TRUNC(date, MONTH) as month,
    SUM(revenue) as revenue,
    COUNT(DISTINCT advertiser) as active_advertisers,
    LAG(SUM(revenue)) OVER (ORDER BY DATE_TRUNC(date, MONTH)) as prev_month_revenue,
    ROUND(100.0 * (SUM(revenue) - LAG(SUM(revenue)) OVER (ORDER BY DATE_TRUNC(date, MONTH))) /
          NULLIF(LAG(SUM(revenue)) OVER (ORDER BY DATE_TRUNC(date, MONTH)), 0), 1) as mom_growth
FROM advertising.revenue
WHERE date >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
GROUP BY month
ORDER BY month DESC;
```

### Marketplace Catalog

```sql
-- Products by brand and category
SELECT
    brand,
    category,
    COUNT(*) as products,
    AVG(price) as avg_price,
    MIN(price) as min_price,
    MAX(price) as max_price
FROM marketplace.products
WHERE status = 'active'
GROUP BY brand, category
ORDER BY products DESC;

-- Catalog growth over time
SELECT
    DATE_TRUNC(created_at, MONTH) as month,
    COUNT(*) as new_products,
    COUNT(DISTINCT brand) as new_brands,
    SUM(COUNT(*)) OVER (ORDER BY DATE_TRUNC(created_at, MONTH)) as cumulative_products
FROM marketplace.products
WHERE created_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
GROUP BY month
ORDER BY month;
```

### Top 100 Indices

```sql
-- Index trend over time
SELECT
    index_name,
    date,
    value,
    LAG(value) OVER (PARTITION BY index_name ORDER BY date) as prev_value,
    value - LAG(value) OVER (PARTITION BY index_name ORDER BY date) as change,
    ROUND(100.0 * (value - LAG(value) OVER (PARTITION BY index_name ORDER BY date)) /
          NULLIF(LAG(value) OVER (PARTITION BY index_name ORDER BY date), 0), 2) as change_pct
FROM top100.indices
WHERE index_name = 'FashionUnited_Global'
  AND date >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
ORDER BY date DESC;

-- Brand rankings in segment
SELECT
    brand,
    segment,
    rank,
    score,
    LAG(rank) OVER (PARTITION BY brand ORDER BY date) as prev_rank,
    rank - LAG(rank) OVER (PARTITION BY brand ORDER BY date) as rank_change
FROM top100.brands
WHERE segment = 'luxury'
  AND date = (SELECT MAX(date) FROM top100.brands)
ORDER BY rank;

-- Market segment comparison
SELECT
    segment,
    AVG(score) as avg_score,
    COUNT(*) as brands,
    MIN(score) as min_score,
    MAX(score) as max_score
FROM top100.brands
WHERE date = (SELECT MAX(date) FROM top100.brands)
GROUP BY segment
ORDER BY avg_score DESC;
```
