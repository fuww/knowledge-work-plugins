# FashionUnited Tool Stack Reference

Standard tool mappings for customizing plugins at FashionUnited.

## Tool Categories

| Category | FashionUnited tool | MCP package | Notes |
|----------|-------------------|-------------|-------|
| CRM | Vtiger CRM | `@anthropic/vtiger-mcp` | Sales, contacts, invoicing |
| Data warehouse | BigQuery | Google BigQuery API | Jobs, marketplace, editorial, advertising |
| Analytics | Plausible Analytics | `@alexanderop/plausible-mcp` | Privacy-focused web analytics |
| Email marketing | Mailchimp | `@anthropic/mailchimp-mcp` | Newsletter campaigns |
| Social scheduling | Social Champ | `@anthropic/socialchamp-mcp` | Multi-platform scheduling |
| Chat | Slack | `@anthropic/slack-mcp` | Team communication |
| Documents | Google Workspace | `@anthropic/google-workspace-mcp` | Docs, Sheets, Drive |
| Project tracker | GitHub | `@modelcontextprotocol/server-github` | Issues, PRs, Projects |
| Design | Figma | `@anthropic/figma-mcp` | Brand assets, visual content |
| SEO | Google Search Console | `@anthropic/searchconsole-mcp` | Search rankings, keywords |

## GraphQL API

FashionUnited's Elixir/Phoenix GraphQL API provides access to product data:

**Endpoint:** `https://api.fashionunited.com/graphql`

### Common Queries

**Job postings:**
```graphql
query JobPostings($market: String!, $limit: Int) {
  jobs(market: $market, limit: $limit) {
    id
    title
    company
    location
    category
    posted_at
  }
}
```

**Brand lookup:**
```graphql
query BrandProfile($slug: String!) {
  brand(slug: $slug) {
    name
    description
    website
    products_count
  }
}
```

**Marketplace products:**
```graphql
query Products($category: String, $brand: String) {
  products(category: $category, brand: $brand) {
    id
    name
    brand
    category
    price
    image_url
  }
}
```

### MCP Configuration

```json
{
  "fashionunited-api": {
    "type": "http",
    "url": "https://api.fashionunited.com/graphql",
    "headers": {
      "Authorization": "Bearer ${FASHIONUNITED_API_KEY}"
    }
  }
}
```

## Fashion Industry Domain Knowledge

### Markets

FashionUnited operates in 30+ markets with 9 language editions:

| Language | Markets |
|----------|---------|
| English | Global, UK, US, India, Australia |
| German | Germany, Austria, Switzerland |
| French | France, Belgium |
| Spanish | Spain, Latin America |
| Italian | Italy |
| Dutch | Netherlands, Belgium |
| Portuguese | Brazil |
| Russian | Russia, CIS |
| Chinese | China, Asia Pacific |

### Business Verticals

| Vertical | Description | Data source |
|----------|-------------|-------------|
| Jobs | Fashion industry job board | `jobs` BigQuery dataset |
| News | B2B fashion journalism | `editorial` BigQuery dataset |
| Marketplace | Product catalog aggregator | `marketplace` BigQuery dataset |
| Top 100 | Fashion industry indices | `top100` BigQuery dataset |

### Key Events

- **Fashion Weeks**: Milan, Paris, London, New York (seasonal)
- **Trade Fairs**: Première Vision, Texworld, ISPO, Pitti
- **Award Shows**: CFDA, BFC, ANDAM

### Seasonal Calendar

| Season | When | Content focus |
|--------|------|---------------|
| SS (Spring/Summer) | Feb-Apr shows | Collection coverage, trend reports |
| AW (Autumn/Winter) | Sep-Nov shows | Collection coverage, trend reports |
| Pre-fall | Dec-Jan | Transitional collections |
| Cruise/Resort | May-Jun | Vacation/travel collections |

## Slack Channels

Common FashionUnited Slack channels for context gathering:

- `#editorial` — News coverage, content planning
- `#sales` — Advertising, partnerships
- `#product` — Product development, technical
- `#marketing` — Marketing campaigns, social media
- `#general` — Company announcements

## GitHub Repositories

FashionUnited's codebase is organized across multiple repositories:

- `api` — Elixir/Phoenix GraphQL API
- `frontend` — React/Next.js web applications
- `integrations` — Third-party integrations
- `product-database` — Product catalog management
- `deploy` — Infrastructure and deployment
- `about` — Company handbook and documentation
