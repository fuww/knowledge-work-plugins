---
description: Write optimized SQL for your dialect with best practices
argument-hint: "<description of what data you need>"
---

# /write-query - Write Optimized SQL

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Write a SQL query from a natural language description, optimized for your specific SQL dialect and following best practices.

## Usage

```
/write-query <description of what data you need>
```

## Workflow

### 1. Understand the Request

Parse the user's description to identify:

- **Output columns**: What fields should the result include?
- **Filters**: What conditions limit the data (time ranges, segments, statuses)?
- **Aggregations**: Are there GROUP BY operations, counts, sums, averages?
- **Joins**: Does this require combining multiple tables?
- **Ordering**: How should results be sorted?
- **Limits**: Is there a top-N or sample requirement?

### 2. Determine SQL Dialect

FashionUnited uses **BigQuery** (Google Cloud) as the primary data warehouse. All queries default to BigQuery SQL syntax unless otherwise specified.

For other environments, supported dialects include:
- **PostgreSQL** (including Aurora, RDS, Supabase, Neon)
- **Snowflake**
- **Redshift** (Amazon)
- **Databricks SQL**
- **MySQL** (including Aurora MySQL, PlanetScale)
- **SQL Server** (Microsoft)
- **DuckDB**
- **SQLite**

Remember the dialect for future queries in the same session.

### 3. Discover Schema (If Warehouse Connected)

If a data warehouse MCP server is connected:

1. Search for relevant tables based on the user's description
2. Inspect column names, types, and relationships
3. Check for partitioning or clustering keys that affect performance
4. Look for pre-built views or materialized views that might simplify the query

### 4. Write the Query

Follow these best practices:

**Structure:**
- Use CTEs (WITH clauses) for readability when queries have multiple logical steps
- One CTE per logical transformation or data source
- Name CTEs descriptively (e.g., `daily_signups`, `active_users`, `revenue_by_product`)

**Performance:**
- Never use `SELECT *` in production queries -- specify only needed columns
- Filter early (push WHERE clauses as close to the base tables as possible)
- Use partition filters when available (especially date partitions)
- Prefer `EXISTS` over `IN` for subqueries with large result sets
- Use appropriate JOIN types (don't use LEFT JOIN when INNER JOIN is correct)
- Avoid correlated subqueries when a JOIN or window function works
- Be mindful of exploding joins (many-to-many)

**Readability:**
- Add comments explaining the "why" for non-obvious logic
- Use consistent indentation and formatting
- Alias tables with meaningful short names (not just `a`, `b`, `c`)
- Put each major clause on its own line

**Dialect-specific optimizations:**
- Apply dialect-specific syntax and functions (see `sql-queries` skill for details)
- Use dialect-appropriate date functions, string functions, and window syntax
- Note any dialect-specific performance features (e.g., Snowflake clustering, BigQuery partitioning)

### 5. Present the Query

Provide:

1. **The complete query** in a SQL code block with syntax highlighting
2. **Brief explanation** of what each CTE or section does
3. **Performance notes** if relevant (expected cost, partition usage, potential bottlenecks)
4. **Modification suggestions** -- how to adjust for common variations (different time range, different granularity, additional filters)

### 6. Offer to Execute

If a data warehouse is connected, offer to run the query and analyze the results. If the user wants to run it themselves, the query is ready to copy-paste.

## Examples

**Simple aggregation:**
```
/write-query Count of job postings by market for the last 30 days
```

**Complex analysis:**
```
/write-query Employer retention analysis -- group employers by their first posting month, then show what percentage posted again at 1, 3, 6, and 12 months later
```

**Performance-critical:**
```
/write-query The jobs.postings table has 2M+ rows partitioned by posted_at. Find the top 100 employers by posting count in Q4 2025 with their most common job category.
```

**FashionUnited-specific examples:**
```
/write-query Monthly job posting volume by market with YoY comparison
/write-query Top 20 articles by pageviews in the last 7 days with author and category
/write-query Advertiser revenue breakdown by campaign type for Q4
/write-query Products by brand in the shoes category with average price
/write-query FashionUnited Global index values for the past 12 months
```

## Tips

- FashionUnited uses BigQuery -- queries default to BigQuery SQL syntax
- Key datasets: `jobs`, `marketplace`, `editorial`, `advertising`, `analytics`, `top100`
- BigQuery tables are partitioned by date -- always filter on date columns for performance
- For recurring queries, mention if it should be parameterized for date ranges
