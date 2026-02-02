---
description: Build a performance report with traffic, SEO, and engagement metrics from Plausible and Google Search Console
argument-hint: "<time period or campaign>"
---

# Performance Report

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Generate a marketing performance report with key metrics, trend analysis, insights, and optimization recommendations. Configured for FashionUnited's analytics stack: Plausible Analytics, Google Search Console, Mailchimp, and Social Champ.

## Trigger

User runs `/performance-report` or asks for a marketing report, performance analysis, campaign results, or metrics summary.

## FashionUnited Report Types

Common report types for FashionUnited:

| Report Type | Data Sources | Typical Frequency |
|-------------|--------------|-------------------|
| Website Traffic | Plausible Analytics | Weekly/Monthly |
| SEO Performance | Google Search Console | Monthly |
| Newsletter Analytics | Mailchimp | Weekly |
| Social Media | Social Champ | Weekly |
| Campaign Report | All sources | Per campaign |
| Market Report | All sources (by market) | Monthly |

## Inputs

1. **Report type** — determine which type of report the user needs:
   - **Website traffic report** — pageviews, visitors, engagement from Plausible Analytics
   - **SEO report** — search rankings, impressions, clicks from Google Search Console
   - **Newsletter report** — email performance from Mailchimp
   - **Social media report** — engagement and reach from Social Champ
   - **Campaign report** — cross-channel performance for a specific campaign
   - **Market report** — performance for a specific language/market
   - **Overall marketing report** — cross-channel summary

2. **Time period** — the reporting window (last week, last month, last quarter, custom date range)

3. **Market/Language** (optional) — filter by specific FashionUnited market (e.g., fashionunited.de, fashionunited.fr)

4. **Data source**:
   - If Plausible Analytics is connected: pull traffic data automatically
   - If Mailchimp is connected: pull newsletter metrics automatically
   - If not connected: ask the user to provide metrics

5. **Comparison period** (optional) — prior period or year-over-year for trend context

6. **Stakeholder audience** (optional) — who will read this report (executive summary vs. detailed analyst view)

## Report Structure

### 1. Executive Summary
- 2-3 sentence overview of performance in the period
- Headline metric with trend direction (up/down/flat vs. prior period)
- One key win and one area of concern

### 2. Key Metrics Dashboard

Present core metrics in a summary table:

| Metric | This Period | Prior Period | Change | Target | Status |
|--------|------------|--------------|--------|--------|--------|

Status indicators:
- On track (meeting or exceeding target)
- At risk (below target but within acceptable range)
- Off track (significantly below target)

#### Metrics by Report Type

**Website Traffic Report (Plausible Analytics):**
- Unique visitors and pageviews
- Bounce rate
- Visit duration
- Top pages and top referrers
- Geographic distribution (by market)
- Device and browser breakdown

**SEO Report (Google Search Console):**
- Total impressions and clicks
- Average click-through rate (CTR)
- Average position
- Top queries and pages
- Ranking changes for target keywords
- Index coverage status

**Newsletter Report (Mailchimp):**
- Emails sent, delivered, bounced
- Open rate (by market/list)
- Click-through rate
- Unsubscribe rate
- List growth (new subscribers minus unsubscribes)
- Top-clicked links

**Social Media Report (Social Champ):**
- Impressions and reach
- Engagement rate (likes, comments, shares)
- Follower growth
- Click-through rate
- Top-performing posts by platform

**Campaign Report (Cross-Channel):**
- Website traffic driven (Plausible)
- Newsletter performance (Mailchimp)
- Social engagement (Social Champ)
- SEO impact (Google Search Console)
- Campaign-specific landing page performance

**Market Report:**
- All metrics filtered by specific market domain (e.g., fashionunited.de)
- Market-specific newsletter performance
- Local SEO rankings
- Regional traffic trends

**Content Performance:**
- Pageviews and unique visitors per article
- Time on page
- Social shares
- Newsletter inclusion performance
- SEO ranking for article keywords
- Top and bottom performers by category (news, jobs, marketplace)

### 3. Trend Analysis
- Performance trend over the period (week-over-week or month-over-month)
- Notable inflection points and what caused them
- Seasonal or cyclical patterns observed
- Comparison to benchmarks or targets

### 4. What Worked
- Top 3-5 wins with specific data
- Why these performed well (hypothesis)
- How to replicate or scale

### 5. What Needs Improvement
- Bottom 3-5 performers with specific data
- Hypotheses for underperformance
- Recommended fixes

### 6. Insights and Observations
- Patterns in the data that are not obvious from the metrics alone
- Audience behavior insights
- Content or creative themes that resonated
- External factors that may have influenced performance (seasonality, news, competitive moves)

### 7. Recommendations
For each recommendation:
- What to do
- Why (linked to a specific insight from the data)
- Expected impact (high, medium, low)
- Effort to implement (high, medium, low)
- Priority (immediate, next sprint, next quarter)

Prioritize recommendations in a 2x2 matrix format:

| | Low Effort | High Effort |
|---|---|---|
| **High Impact** | Do first | Plan for next sprint |
| **Low Impact** | Do if time allows | Deprioritize |

### 8. Next Period Focus
- Top 3 priorities for the upcoming period
- Tests or experiments to run
- Targets for key metrics

## Output Formatting

- Use tables for data presentation
- Bold key numbers and trends
- Keep the executive summary concise (suitable for forwarding to leadership)
- Include a "detailed appendix" section for granular data if the user provided a lot of metrics

## After the Report

Ask: "Would you like me to:
- Create a slide-ready summary of these results?
- Draft a stakeholder email with the key takeaways?
- Dive deeper into any specific metric, channel, or market?
- Compare performance across multiple FashionUnited markets?
- Generate SEO recommendations based on the Google Search Console data?
- Set up a reporting template you can reuse next period?"
