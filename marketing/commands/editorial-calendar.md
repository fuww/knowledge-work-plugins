---
description: Generate content calendars for multi-market editorial operations with fashion week schedules, trade fair dates, and seasonal planning
argument-hint: "<time period or event focus>"
---

# Editorial Calendar

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Generate comprehensive editorial content calendars for FashionUnited's multi-market operations. Incorporates fashion week schedules, trade fair dates, and seasonal content planning across 9 languages and 30+ markets.

## Trigger

User runs `/editorial-calendar` or asks to plan, create, or generate an editorial calendar or content schedule.

## Fashion Industry Calendar

### Fashion Week Schedule

Major fashion weeks that drive editorial coverage:

| Fashion Week | Typical Dates | Coverage Focus | Markets |
|--------------|---------------|----------------|---------|
| New York Fashion Week | February, September | Ready-to-wear, emerging designers | US, Global EN |
| London Fashion Week | February, September | British design, sustainability | UK, Global EN |
| Milan Fashion Week | February/March, September | Luxury, Italian craftsmanship | IT, Global EN |
| Paris Fashion Week | March, September/October | Haute couture, ready-to-wear | FR, Global EN |
| Paris Haute Couture | January, July | High fashion, atelier craft | FR, Global EN |
| Berlin Fashion Week | January, July | Contemporary, streetwear | DE, AT, CH |
| Copenhagen Fashion Week | January/February, August | Scandinavian design, sustainability | Global EN |
| Shanghai Fashion Week | March/April, October | Chinese designers, market trends | CN, Asia Pacific |
| São Paulo Fashion Week | April, October/November | Latin American fashion | BR, ES (LATAM) |
| Amsterdam Fashion Week | January, September | Dutch design, innovation | NL, BE |

### Trade Fair Calendar

Key trade fairs for editorial planning:

| Trade Fair | Location | Typical Dates | Focus | Content Type |
|------------|----------|---------------|-------|--------------|
| Première Vision Paris | Paris | February, September | Fabrics, materials | Trend reports, exhibitor interviews |
| Texworld Paris | Paris | February, September | Textiles, sourcing | Sourcing guides, sustainability |
| ISPO Munich | Munich | January/February | Sportswear, outdoor | Innovation coverage, brand interviews |
| Pitti Uomo | Florence | January, June | Menswear | Trend analysis, street style |
| Pitti Bimbo | Florence | January, June | Childrenswear | Market reports |
| Who's Next | Paris | January, September | Ready-to-wear | Buyer insights, brand spotlights |
| MAGIC Las Vegas | Las Vegas | February, August | Multi-category | US market analysis |
| Chic Shanghai | Shanghai | March, October | Chinese market | Asia market reports |
| Kingpins | Amsterdam, NYC, HK | Various | Denim | Sustainability, innovation |
| Munich Fabric Start | Munich | September, February | Fabrics | Material innovation |

### Seasonal Content Themes

Content themes aligned with fashion seasons:

| Season | Content Period | Editorial Focus |
|--------|----------------|-----------------|
| Spring/Summer Collections | January-March | SS collection coverage, trend forecasting |
| Resort/Cruise | April-May | Pre-season collections, travel fashion |
| Autumn/Winter Collections | June-August | AW collection coverage, trend forecasting |
| Pre-Fall | September-October | Transitional fashion, retail analysis |
| Holiday/Festive | November-December | Gift guides, party wear, year-end reviews |
| Year-Round | Ongoing | Industry news, sustainability, business analysis |

## Inputs

Gather the following from the user. If not provided, ask before proceeding:

1. **Time period** — calendar duration and start date:
   - Specific month(s) (e.g., "February 2025", "Q1 2025")
   - Season (e.g., "SS25 season", "AW25 coverage period")
   - Event-based (e.g., "Paris Fashion Week February", "Première Vision coverage")

2. **Markets/Languages** — which markets to include:
   - All markets (default: full multi-language calendar)
   - Specific markets (e.g., "German-speaking markets", "English editions only")
   - Single market (e.g., "France only")

3. **Content focus** (optional):
   - Fashion weeks
   - Trade fairs
   - Seasonal trends
   - Partnership content
   - All of the above (default)

4. **Special events** (optional):
   - Partnership launches
   - Advertiser campaigns
   - Federation events
   - Anniversary or milestone coverage

5. **Resource constraints** (optional):
   - Team capacity (number of editors)
   - Translation capacity
   - Photography/visual resources available

## Calendar Generation

### Calendar Structure

Generate a comprehensive editorial calendar with:

#### 1. Monthly Overview
High-level view of the month with key dates and themes:

| Week | Major Events | Editorial Theme | Priority Markets |
|------|--------------|-----------------|------------------|
| Week 1 | [Events] | [Theme] | [Markets] |
| Week 2 | [Events] | [Theme] | [Markets] |
| Week 3 | [Events] | [Theme] | [Markets] |
| Week 4 | [Events] | [Theme] | [Markets] |

#### 2. Detailed Weekly Plan
For each week, provide:

| Date | Content Type | Topic/Angle | Markets | Channels | Owner | Status |
|------|--------------|-------------|---------|----------|-------|--------|

#### 3. Market-Specific Assignments
Break down content by language edition:

| Content Piece | EN | DE | FR | ES | IT | NL | PT | RU | CN |
|---------------|----|----|----|----|----|----|----|----|-------|
| [Piece name] | ✓ | ✓ | ✓ | - | ✓ | - | - | - | - |

Legend: ✓ = Localized version, A = Adapted, T = Translated from EN, - = Not applicable

#### 4. Event Coverage Schedule
For major events (fashion weeks, trade fairs):

| Day | Content Type | Angle | Deadline | Markets | Distribution |
|-----|--------------|-------|----------|---------|--------------|
| Pre-event | Preview article | What to expect | [Date] | All | Website, newsletter |
| Day 1 | Daily recap | Key highlights | EOD | EN, DE, FR | Website, social |
| Day 2 | Trend report | Emerging themes | EOD | All | Website, newsletter |
| Day 3 | Interviews | Designer/exhibitor | Next AM | Selected | Website |
| Post-event | Analysis | Takeaways, implications | +2 days | All | Website, newsletter |

### Content Types by Context

#### Fashion Week Coverage
- Pre-show previews and schedules
- Daily runway recaps
- Trend reports (colors, silhouettes, materials)
- Designer interviews and profiles
- Street style galleries
- Business analysis (retail implications)
- Post-show trend synthesis

#### Trade Fair Coverage
- Pre-show exhibitor previews
- Daily innovation spotlights
- Sustainability focus pieces
- Sourcing guides
- Expert interviews
- Trend forecasting reports
- Post-show market analysis

#### Seasonal Content
- Trend forecasting articles
- Color and material reports
- Retail analysis pieces
- Consumer behavior insights
- Market-specific trend adaptations

### Newsletter Integration

Map content to newsletter schedules:

| Market | Frequency | Best Days | Content Mix |
|--------|-----------|-----------|-------------|
| EN Global | Daily | Mon-Fri | News (60%), Features (30%), Jobs (10%) |
| DE | Daily | Mon-Fri | News (60%), Features (30%), Jobs (10%) |
| FR | Daily | Mon-Fri | News (60%), Features (30%), Jobs (10%) |
| ES | Daily | Mon-Fri | News (60%), Features (30%), Jobs (10%) |
| IT | Daily | Mon-Fri | News (60%), Features (30%), Jobs (10%) |
| NL | Daily | Mon-Fri | News (60%), Features (30%), Jobs (10%) |
| PT | Weekly | Tuesday | News (50%), Features (40%), Jobs (10%) |
| RU | Weekly | Wednesday | News (50%), Features (40%), Jobs (10%) |
| CN | Weekly | Thursday | News (50%), Features (40%), Jobs (10%) |

### Social Media Schedule

Align social content with editorial calendar:

| Platform | Posting Frequency | Best Times | Content Focus |
|----------|-------------------|------------|---------------|
| LinkedIn | 1-2x daily | 8-10am, 5-6pm | Industry news, analysis |
| Instagram | 1-2x daily | 12pm, 7pm | Visual content, stories |
| Facebook | 1x daily | 1-4pm | News, community |
| X/Twitter | 3-5x daily | Throughout day | Breaking news, updates |

Schedule posts via Social Champ with optimal timing for each market's timezone.

## Output

Present the editorial calendar with:

1. **Executive Summary**: Overview of the period, major events, and content volume
2. **Monthly Calendar View**: Visual overview with key dates highlighted
3. **Detailed Weekly Plans**: Day-by-day content assignments
4. **Market Distribution Matrix**: Which content goes to which markets
5. **Resource Requirements**: Estimated workload by role
6. **Key Deadlines**: Critical dates that cannot be missed

After presenting the calendar, ask:

"Would you like me to:
- Add this calendar to ~~calendar (Google Calendar)?
- Create draft content briefs for specific pieces?
- Generate newsletter schedules for this period in Mailchimp?
- Set up social media scheduling in Social Champ?
- Adapt the calendar for specific markets or resource constraints?
- Export the calendar to ~~office suite (Google Sheets)?"
