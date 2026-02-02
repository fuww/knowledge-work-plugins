---
description: Generate a comprehensive brand dossier with data from CRM, BigQuery, and GraphQL API
argument-hint: "<brand name>"
---

# Brand Lookup Command

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Generate a comprehensive dossier for a fashion brand by aggregating data from CRM, data warehouse, and the FashionUnited API.

## Instructions

### 1. Parse Brand Name

Extract the brand name from the user's input. Handle variations:

- Exact name: "Gucci", "H&M", "Zara"
- Partial or informal names: "Adidas" (may appear as "adidas AG" in records)
- Parent company references: "LVMH brands" may require expanding to subsidiaries

If the brand name is ambiguous, ask for clarification:
```
I found multiple brands matching "[input]":
1. [Brand A] — [brief description]
2. [Brand B] — [brief description]
Which one are you looking for?
```

### 2. Check Available Sources

Verify which MCP sources are connected:

- **~~CRM** (Vtiger) — Account records, contacts, opportunities, billing
- **~~data warehouse** (BigQuery) — Jobs, marketplace, editorial, advertising datasets
- **FashionUnited GraphQL API** — News, brand directory, company profiles

If no sources are connected:
```
To look up brand information, you'll need at least one source connected.
Check your MCP settings to add Vtiger CRM, BigQuery, or the FashionUnited API.
```

### 3. Query All Sources in Parallel

Execute searches simultaneously across all available sources. Do not wait for one source before querying another.

#### ~~CRM (Vtiger)

Search for the brand across CRM record types:

**Account Search:**
- Search by account name for exact and partial matches
- Retrieve account type (Advertiser, Brand, Retailer, Agency)
- Get account status (Active, Inactive, Prospect)
- Note contract type and renewal dates if available

**Contact Search:**
- Find contacts associated with the account
- Retrieve primary contact: name, role, email, phone
- Note last contact date and communication history

**Opportunity Search:**
- List current opportunities (open deals)
- Get opportunity stage, expected value, close date
- Note won/lost deals in the past year

**Billing/Invoice Search:**
- Check billing status (current, overdue, none)
- Note total revenue from this account
- Retrieve recent invoice history

#### ~~data warehouse (BigQuery)

Query relevant datasets for brand activity:

**Jobs Dataset:**
- Count job postings from this employer
- Get recent job posting activity (last 30 days, last year)
- List job categories and locations
- Note subscription tier (Premium, Standard, Free)

**Marketplace Dataset:**
- Count products in catalog
- List product categories
- Note recent catalog activity (new products, updates)
- Get brand performance metrics if available

**Editorial Dataset:**
- Count articles mentioning the brand
- Get recent coverage (last 30 days)
- List article topics/categories
- Note sentiment if available (positive/neutral/negative)

**Advertising Dataset:**
- Check if brand is an active advertiser
- Get campaign history (display, sponsored content)
- Note campaign performance metrics if available

#### FashionUnited GraphQL API

Query the API for public brand information:

**Brand Directory:**
- Retrieve official brand profile
- Get brand description, logo, website
- List brand categories (luxury, fast fashion, sportswear, etc.)
- Note headquarters location and founding year

**News/Articles:**
- Search for recent news mentioning the brand
- Get article count and recent headlines
- Note coverage sentiment and topics

**Company Profile:**
- Retrieve employer profile if exists
- Get company description, employee count
- List active job postings
- Note employer branding content

### 4. Handle Missing or Failed Sources

If a source is unavailable or returns an error:

- Continue with available sources
- Note which sources could not be queried
- Do not let one failure block the entire lookup

```
Note: Could not retrieve [source] data. Results below are from available sources only.
```

### 5. Synthesize Brand Dossier

Combine results into a structured dossier:

```
# [Brand Name] — Brand Dossier

**Generated:** [Date]
**Sources:** [List of sources queried]

---

## Relationship Overview

| Field | Value |
|-------|-------|
| Account Status | [Active/Inactive/Prospect/None] |
| Account Type | [Advertiser/Brand/Retailer/Agency] |
| Primary Contact | [Name, Role] |
| Contract Status | [Active until X / Expired / None] |
| Total Revenue | [Amount or "N/A"] |

## CRM Activity

### Contacts
- **[Name]** — [Role], [Email]
  - Last contact: [Date]
  - [Additional contacts as bullet points]

### Open Opportunities
| Opportunity | Stage | Value | Expected Close |
|-------------|-------|-------|----------------|
| [Name] | [Stage] | [Value] | [Date] |

### Recent History
- [Recent activity bullet points from CRM]

---

## Job Posting Activity

| Metric | Value |
|--------|-------|
| Total Postings (All Time) | [Count] |
| Postings (Last 30 Days) | [Count] |
| Postings (Last Year) | [Count] |
| Subscription Tier | [Premium/Standard/Free/None] |

**Top Categories:** [List]
**Top Locations:** [List]

**Recent Postings:**
- [Job Title] — [Location] ([Date])
- [Job Title] — [Location] ([Date])

---

## Marketplace Presence

| Metric | Value |
|--------|-------|
| Products in Catalog | [Count] |
| Product Categories | [List] |
| Recent Activity | [New products/updates in last 30 days] |

---

## Editorial Coverage

| Metric | Value |
|--------|-------|
| Total Articles | [Count] |
| Articles (Last 30 Days) | [Count] |
| Coverage Sentiment | [Positive/Neutral/Negative/Mixed] |

**Recent Coverage:**
- [Article Title] — [Date]
- [Article Title] — [Date]
- [Article Title] — [Date]

**Top Topics:** [List of common themes]

---

## Advertising History

| Metric | Value |
|--------|-------|
| Active Advertiser | [Yes/No] |
| Campaign Types | [Display/Sponsored/Newsletter/None] |
| Last Campaign | [Date or "N/A"] |

---

## Brand Profile

**Description:** [From GraphQL API brand directory]

| Field | Value |
|-------|-------|
| Headquarters | [Location] |
| Founded | [Year] |
| Category | [Luxury/Fast Fashion/Sportswear/etc.] |
| Website | [URL] |
| Employee Count | [Number or "N/A"] |

---

## Summary

[2-3 sentence summary of the brand's relationship with FashionUnited, activity level, and notable points]

**Key Insights:**
- [Insight 1: e.g., "Active advertiser with growing job posting activity"]
- [Insight 2: e.g., "No CRM record — potential prospect"]
- [Insight 3: e.g., "Negative editorial coverage in recent weeks"]

**Suggested Actions:**
- [Action 1: e.g., "Follow up on expiring contract"]
- [Action 2: e.g., "Create CRM account for tracking"]
- [Action 3: e.g., "Review recent negative coverage"]
```

### 6. Handle Edge Cases

**Brand not found in any source:**
```
I couldn't find "[brand name]" in any connected source.

This could mean:
- The brand doesn't have a presence on FashionUnited platforms
- The brand name might be spelled differently in our systems
- The brand operates under a different company name

Try:
- Searching with alternative spellings
- Using the parent company name
- Using /enterprise-search:search for a broader search
```

**Brand found in some sources but not others:**
Present the available data and note what's missing:
```
## Relationship Overview

| Field | Value |
|-------|-------|
| Account Status | *No CRM record found* |
| ...

Note: No CRM account exists for this brand. Consider creating one if this is a business relationship.
```

**Multiple brands with similar names:**
```
Found multiple matches for "[brand name]":

1. **[Brand A]** — [Type] — [Account status] — [Brief description]
2. **[Brand B]** — [Type] — [Account status] — [Brief description]

Which brand would you like a full dossier for?
```

## Example Usage

```
/enterprise-search:brand-lookup Gucci
/enterprise-search:brand-lookup H&M
/enterprise-search:brand-lookup "Ralph Lauren"
/enterprise-search:brand-lookup LVMH
```

## Notes

- Always query all available sources in parallel for speed
- Present a synthesized dossier, not raw data dumps from each source
- Include "No data" or "N/A" for fields where information isn't available rather than omitting them
- Highlight actionable insights in the summary section
- If the brand is a significant advertiser/partner, emphasize relationship status and upcoming contract dates
- For brands without a CRM record, suggest creating one if there's activity in other sources
- This command is focused on brand lookup; for broader searches, direct users to `/enterprise-search:search`
