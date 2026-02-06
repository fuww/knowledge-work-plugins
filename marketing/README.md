# Marketing Plugin

A marketing plugin primarily designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application — though it also works in Claude Code. Content creation, campaign planning, brand voice management, competitive analysis, and performance reporting.

This plugin is configured for **FashionUnited** marketing and media partnerships team, including fashion industry content creation, newsletter production, and social media management across 9 languages and 30+ markets.

## Installation

```bash
claude plugins add knowledge-work-plugins/marketing
```

## What It Does

This plugin gives you an AI-powered marketing partner that can help with:

- **Content Creation** — Draft fashion news articles, newsletters, social media posts, press releases, and case studies. Includes FashionUnited editorial style guide and brand voice.
- **Campaign Planning** — Plan content campaigns for product launches, trade fairs, federation partnerships, and seasonal fashion events. Integrates with Social Champ for scheduling.
- **Brand Voice Management** — Review content against FashionUnited brand voice guidelines, visual identity standards, and editorial ethics code. Ensure consistency across all markets.
- **Competitive Analysis** — Research competitors in fashion media and generate positioning briefs. Includes FashionUnited competitive landscape context.
- **Performance Reporting** — Analyze content performance with Plausible Analytics and Google Search Console. Track traffic, SEO rankings, and engagement across markets.
- **Email Sequences** — Design newsletter campaigns and subscriber onboarding flows for Mailchimp.

## Commands

| Command | Description |
|---|---|
| `/draft-content` | Draft fashion news articles, newsletters, social media posts, press releases, and case studies |
| `/campaign-plan` | Generate a campaign brief for trade fair coverage, partnership announcements, or seasonal content |
| `/brand-review` | Review content against FashionUnited brand voice, style guide, and editorial ethics |
| `/competitive-brief` | Research competitors in fashion media and generate positioning analysis |
| `/performance-report` | Build a performance report with traffic, SEO, and engagement metrics from Plausible and Google Search Console |
| `/seo-audit` | Run an SEO audit with keyword research, content gaps, and competitor comparison |
| `/email-sequence` | Design newsletter sequences for subscriber onboarding, re-engagement, or event follow-up |

## Skills

| Skill | Description |
|---|---|
| `content-creation` | Fashion news writing, FashionUnited editorial style, headline formulas, multi-language content guidance |
| `campaign-planning` | Campaign frameworks for trade fairs, fashion weeks, partnership announcements, and seasonal content |
| `brand-voice` | FashionUnited brand voice documentation, visual identity standards, editorial ethics code, terminology management |
| `competitive-analysis` | Fashion media competitive landscape, positioning analysis, content gap analysis |
| `performance-analytics` | Plausible Analytics metrics, Google Search Console data, multi-market reporting |

## Example Workflows

### Drafting a Fashion News Article

```
> /draft-content
Type: news article
Topic: Sustainable fashion initiatives at Paris Fashion Week
Audience: Fashion industry professionals
Key messages: Major brands committing to sustainability, innovative materials showcased, industry shift toward circular fashion
Tone: Authoritative, journalistic
Length: 800 words
```

Claude will generate a structured news article draft following FashionUnited editorial guidelines with an engaging headline, newsworthy lead paragraph, organized body sections, and proper attribution guidance.

### Planning Trade Fair Coverage

```
> /campaign-plan
Goal: Comprehensive coverage of Première Vision Paris
Audience: Fashion buyers, sourcing professionals, textile manufacturers
Timeline: 2 weeks (pre-show, during, post-show)
Content types: Preview articles, daily recaps, trend reports, social media coverage
```

Claude will produce a content calendar covering the event with social media scheduling via Social Champ, newsletter distribution via Mailchimp, and analytics tracking via Plausible.

### Reviewing Content for Brand Consistency

```
> /brand-review
[paste your draft content]
```

Claude will check your content against FashionUnited brand voice guidelines, editorial ethics code, and style guide. Flags terminology issues, tone inconsistencies, and suggests revisions that maintain the authoritative yet accessible voice.

### Multi-Language Newsletter Campaign

```
> /email-sequence
Type: newsletter onboarding
Goal: Welcome new subscribers and drive engagement with FashionUnited content
Audience: Fashion professionals who just subscribed
Languages: English, German, French, Spanish, Italian
```

Claude will design a welcome sequence optimized for Mailchimp with subject line variations for each market and content recommendations based on regional fashion industry focus.

## Configuration

Configure your brand voice, style guide, and target personas in a local settings file for personalized output. FashionUnited defaults are pre-configured but can be customized for specific market needs.

## Data Sources

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

This plugin is configured for FashionUnited's marketing tool stack:

**Included MCP connections:**
- Chat (Google Chat) for team communication
- Google Workspace for documents (articles, research), spreadsheets (editorial calendar), and email
- Mailchimp for newsletter campaigns and subscriber management
- Social Champ for social media scheduling across platforms
- Plausible Analytics for privacy-focused traffic and engagement metrics
- Figma for brand assets and visual content

**Additional options:**
- See [CONNECTORS.md](CONNECTORS.md) for alternative tools in each category

## FashionUnited Marketing Context

This plugin includes context for FashionUnited's marketing operations:

| Area | Purpose | Key Activities |
|------|---------|----------------|
| News Platform | Fashion industry journalism | Daily news coverage, trend analysis, industry reports |
| Newsletters | Subscriber engagement | Market-specific newsletters across 9 languages |
| Social Media | Brand awareness and traffic | Platform-specific content for LinkedIn, Instagram, Facebook, X |
| Media Partnerships | B2B relationships | Collaborations with federations, trade fairs, fashion schools |

### Multi-Language Markets

FashionUnited operates in 30+ markets with content in 9 languages:
- English (Global, UK, US, India, Australia)
- German (Germany, Austria, Switzerland)
- French (France, Belgium)
- Spanish (Spain, Latin America)
- Italian (Italy)
- Dutch (Netherlands, Belgium)
- Portuguese (Brazil)
- Russian (Russia, CIS)
- Chinese (China, Asia Pacific)

### Media Partnership Categories

| Partner Type | Examples | Content Focus |
|--------------|----------|---------------|
| Trade Fairs | Première Vision, Texworld, ISPO | Event coverage, exhibitor stories, trend reports |
| Federations | National fashion associations | Industry news, policy updates, member spotlights |
| Fashion Schools | Design academies, business schools | Graduate showcases, educational content, career guides |
| Industry Events | Fashion weeks, awards ceremonies | Coverage, interviews, photo galleries |

### Editorial Standards

The plugin enforces FashionUnited editorial standards:
- Journalistic objectivity and fact-based reporting
- Clear attribution of sources and quotes
- Separation of news and sponsored content
- Respect for embargoes and exclusive access agreements
