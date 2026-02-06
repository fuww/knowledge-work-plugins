# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~email marketing` might mean Mailchimp, Klaviyo, or any other email marketing platform with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (email marketing, social scheduling, analytics, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Google Chat | Microsoft Teams |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Office suite | `~~office suite` | Google Workspace (Docs, Sheets, Slides) | Microsoft 365 |
| Cloud storage | `~~cloud storage` | Google Workspace (Drive) | Microsoft 365, Dropbox |
| Design | `~~design` | Figma | Canva, Adobe Creative Cloud |
| Email marketing | `~~email marketing` | Mailchimp | Klaviyo, Brevo, Customer.io |
| Social scheduling | `~~social scheduling` | Social Champ | Buffer, Hootsuite, Sprout Social |
| Product analytics | `~~product analytics` | Plausible Analytics | Google Analytics, Amplitude |
| SEO | `~~SEO` | Google Search Console | Ahrefs, Semrush |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's marketing and media partnerships workflows:

- **Mailchimp** provides newsletter campaign management, subscriber lists, and email automation for market-specific newsletters across 9 languages
- **Social Champ** provides social media scheduling across LinkedIn, Instagram, Facebook, X, and other platforms with multi-account management
- **Plausible Analytics** provides privacy-focused traffic analytics, pageview tracking, and engagement metrics across all FashionUnited markets
- **Google Search Console** provides SEO insights, search ranking data, and indexing status for fashionunited.com domains
- **Google Workspace** provides document creation and collaboration for articles, editorial calendars, and marketing briefs
- **Figma** provides access to brand assets, design files, and visual content templates
- **Google Chat** provides team communication and editorial coordination

## Setup requirements

1. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and enabled APIs (Gmail, Calendar, Drive, Docs, Sheets)
2. **Mailchimp**: Requires Zapier account for hosted MCP access or Mailchimp API key
3. **Social Champ**: Requires Zapier account for hosted MCP access
4. **Plausible Analytics**: Requires Plausible API key and site ID
5. **Figma**: Works with hosted MCP endpoint (no additional setup)
6. **Google Chat**: Accessed via Google Workspace MCP (included in google-workspace configuration)

## FashionUnited marketing context

The marketing plugin is optimized for FashionUnited's content operations:

### Content Types

| Content Type | Description | Primary Channel |
|--------------|-------------|-----------------|
| News Articles | Industry news, company announcements, trend reports | Website, newsletters |
| Newsletters | Market-specific editorial digests | Mailchimp |
| Social Posts | Platform-optimized content | Social Champ |
| Press Releases | Official company and partnership announcements | Website, email distribution |
| Partnership Content | Trade fair coverage, federation news, school showcases | Website, newsletters |

### Multi-Language Operations

FashionUnited produces content in 9 languages across 30+ markets:

| Language | Markets | Newsletter Frequency |
|----------|---------|----------------------|
| English | Global, UK, US, India, Australia | Daily |
| German | Germany, Austria, Switzerland | Daily |
| French | France, Belgium | Daily |
| Spanish | Spain, Latin America | Daily |
| Italian | Italy | Daily |
| Dutch | Netherlands, Belgium | Daily |
| Portuguese | Brazil | Weekly |
| Russian | Russia, CIS | Weekly |
| Chinese | China, Asia Pacific | Weekly |

### Media Partnership Categories

| Partner Type | Content Focus | Typical Campaign |
|--------------|---------------|------------------|
| Trade Fairs | Event coverage, exhibitor stories, trend reports | Pre-show preview, daily recaps, post-show analysis |
| Federations | Industry news, policy updates, member spotlights | Announcement articles, interview series |
| Fashion Schools | Graduate showcases, educational content, career guides | Graduation coverage, program spotlights |
| Industry Events | Fashion weeks, awards, conferences | Live coverage, photo galleries, interviews |

### Editorial Standards

Content must adhere to FashionUnited editorial principles:

| Standard | Description |
|----------|-------------|
| Objectivity | Fact-based reporting, balanced coverage |
| Attribution | Clear sourcing, proper quotes |
| Separation | Distinct labeling of editorial vs. sponsored content |
| Embargoes | Respect for agreed publication dates |
| Ethics | No conflicts of interest, transparent relationships |

### Brand Voice Attributes

| Attribute | Description |
|-----------|-------------|
| Authoritative | Expert industry knowledge, well-researched content |
| Accessible | Clear language, avoiding unnecessary jargon |
| Professional | Business-appropriate tone for B2B audience |
| Global | Culturally aware, inclusive language |
| Timely | Current, relevant, news-driven |

### Visual Identity

| Element | Standard |
|---------|----------|
| Logo usage | Consistent placement, clear space requirements |
| Color palette | Primary: FashionUnited blue (#0066CC), secondary grays |
| Typography | Sans-serif for headlines, readable body fonts |
| Photography | High-quality, professionally lit, properly credited |
| Infographics | Clean, data-focused, brand-consistent styling |
