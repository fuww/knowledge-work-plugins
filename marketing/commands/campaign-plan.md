---
description: Generate a campaign brief for trade fair coverage, partnership announcements, or seasonal content
argument-hint: "<campaign objective or event>"
---

# Campaign Plan

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Generate a comprehensive marketing campaign brief with objectives, audience, messaging, channel strategy, content calendar, and success metrics. This command is configured for FashionUnited's content campaigns including trade fair coverage, media partnerships, and seasonal fashion content.

## Trigger

User runs `/campaign-plan` or asks to plan, design, or build a marketing campaign.

## FashionUnited Campaign Types

Common campaign types for FashionUnited:

| Campaign Type | Description | Typical Duration |
|---------------|-------------|------------------|
| Trade Fair Coverage | Comprehensive event coverage (Première Vision, Texworld, ISPO) | 2-3 weeks |
| Fashion Week | Fashion week coverage and analysis | 1-2 weeks |
| Partnership Launch | New federation, school, or advertiser partnership | 1 week |
| Seasonal Content | Season-specific trend content (SS, AW collections) | 4-6 weeks |
| Product Launch | New FashionUnited feature or service announcement | 2-4 weeks |
| Newsletter Growth | Subscriber acquisition campaign | Ongoing |

## Inputs

Gather the following from the user. If not provided, ask before proceeding:

1. **Campaign goal** — the primary objective (e.g., drive traffic to event coverage, grow newsletter subscribers, launch partnership content, promote job board to recruiters)

2. **Target audience** — who the campaign is aimed at:
   - Fashion professionals (brands, retailers, buyers)
   - Recruiters and HR teams
   - Job seekers
   - Trade fair exhibitors/attendees
   - Federation members
   - Fashion students

3. **Timeline** — campaign duration and any fixed dates (event dates, embargo lifts, publication deadlines)

4. **Markets/Languages** — which FashionUnited markets and languages the campaign will cover (optional; default is all applicable markets)

5. **Additional context** (optional):
   - Partner organizations involved
   - Exclusive content or access agreements
   - Previous campaign performance
   - Advertiser requirements
   - Geographic focus beyond standard markets

## Campaign Brief Structure

Generate a campaign brief with the following sections:

### 1. Campaign Overview
- Campaign name suggestion
- One-sentence campaign summary
- Primary objective with a specific, measurable goal
- Secondary objectives (if applicable)

### 2. Target Audience
- Primary audience segment with description
- Secondary audience segment (if applicable)
- Audience pain points and motivations
- Where they spend time (channels, communities, publications)
- Buying stage alignment (awareness, consideration, decision)

### 3. Key Messages
- Core campaign message (one sentence)
- 3-4 supporting messages tailored to audience pain points
- Message variations by channel (if different tones are needed)
- Proof points or evidence to support each message

### 4. Channel Strategy
Recommend channels based on audience and goal. For each channel, include:
- Why this channel fits the audience and objective
- Content format recommendations
- Estimated effort level (low, medium, high)
- Market/language coverage

FashionUnited channels:
- **Website**: News articles, trend reports, event coverage on fashionunited.com domains
- **Newsletters**: Market-specific newsletters via Mailchimp (daily for major markets, weekly for others)
- **Social Media**: LinkedIn (B2B focus), Instagram (visual content), Facebook (community), X (news) via Social Champ
- **Partner Channels**: Federation newsletters, trade fair communications, school networks
- **Job Board**: Recruitment-focused content on FashionUnited Jobs

### 5. Content Calendar
Create a week-by-week (or day-by-day for short campaigns) content calendar:
- What content to produce each week
- Which channel each piece targets
- Key milestones and deadlines
- Dependencies between pieces (e.g., "landing page must be live before paid ads launch")

Format as a table:

| Week | Content Piece | Channel | Owner/Notes | Status |
|------|--------------|---------|-------------|--------|

### 6. Content Pieces Needed
List every content asset required for the campaign:
- Asset name and type (blog post, email, social post, ad creative, landing page, etc.)
- Brief description of what it should contain
- Priority (must-have vs. nice-to-have)
- Suggested timeline for creation

### 7. Success Metrics
Define KPIs aligned to the campaign objective:
- Primary KPI with target number
- Secondary KPIs (3-5)
- How each metric will be tracked (Plausible Analytics for traffic, Mailchimp for email, Social Champ for social)
- Reporting cadence recommendation

FashionUnited campaign metrics typically include:
- **Traffic**: Pageviews, unique visitors, time on page (Plausible Analytics)
- **Newsletter**: Open rate, click-through rate, new subscribers (Mailchimp)
- **Social**: Engagement rate, reach, link clicks (Social Champ)
- **SEO**: Search impressions, click-through rate, ranking positions (Google Search Console)
- **Partnership**: Partner satisfaction, content volume, referral traffic

### 8. Budget Allocation (if budget provided)
- Breakdown by channel or activity
- Production costs vs. distribution costs
- Contingency recommendation (typically 10-15%)

### 9. Risks and Mitigations
- 2-3 potential risks (timeline, audience mismatch, channel underperformance)
- Mitigation strategy for each

### 10. Next Steps
- Immediate action items to kick off the campaign
- Stakeholder approvals needed
- Key decision points

## Output

Present the full campaign brief with clear headings and formatting. After the brief, ask:

"Would you like me to:
- Dive deeper into any section?
- Draft specific content pieces from the calendar?
- Create social media posts and schedule via Social Champ?
- Design the newsletter sequence for this campaign?
- Adapt the plan for additional markets/languages?"
