# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~data warehouse` might mean Snowflake, BigQuery, or any other warehouse with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (data warehouse, chat, office suite, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for this plugin

| Category | Placeholder | Configured server | Other options |
|----------|-------------|-------------------|---------------|
| Chat | `~~chat` | Google Chat | Microsoft Teams |
| Email | `~~email` | Google Workspace (Gmail) | Microsoft 365 |
| Calendar | `~~calendar` | Google Workspace | Microsoft 365 |
| Office suite | `~~office suite` | Google Workspace (Docs, Sheets, Slides) | Microsoft 365 |
| Cloud storage | `~~cloud storage` | Google Workspace (Drive) | Microsoft 365, Dropbox |
| Data warehouse | `~~data warehouse` | BigQuery | Snowflake, Redshift |
| CRM / Billing | `~~CRM` | Vtiger CRM | HubSpot, Salesforce |
| ERP / Accounting | `~~erp` | — (manual spreadsheet workflows) | NetSuite, SAP, QuickBooks, Xero |
| Analytics / BI | `~~analytics` | — (BigQuery + Sheets) | Tableau, Looker, Power BI |

## FashionUnited-specific integrations

This plugin is configured for FashionUnited's finance operations across media, advertising, and B2B services:

- **Google Workspace** provides spreadsheet-based financial management (Sheets for workpapers, reconciliations, budgets), document storage (Drive for invoices, contracts, reports), and email/calendar for Finance Manager workflows
- **BigQuery** provides financial data warehouse for revenue analytics, multi-currency reporting, and historical trend analysis across 30+ markets
- **Vtiger CRM** provides billing and invoicing workflows, customer/advertiser account management, revenue pipeline tracking, and accounts receivable management
- **Google Chat** provides team communication, finance approval workflows, and close status coordination

## Setup requirements

1. **Google Workspace**: Requires Google Cloud Project with OAuth 2.0 credentials and enabled APIs (Gmail, Calendar, Drive, Docs, Sheets)
2. **BigQuery**: Requires Google Cloud Project with BigQuery API enabled and appropriate IAM permissions
3. **Vtiger CRM**: Requires Pipedream account for hosted MCP access
4. **Google Chat**: Accessed via Google Workspace MCP (included in google-workspace configuration)

## FashionUnited finance context

The finance plugin is optimized for FashionUnited's finance needs as an international B2B media company operating in 30+ markets.

### Revenue Streams

| Revenue Type | Description | Recognition Pattern | Billing Cycle |
|--------------|-------------|---------------------|---------------|
| Display Advertising | Banner ads, homepage takeovers, ROS placements | Over impression delivery period | Monthly in arrears |
| Sponsored Content | Native advertising, advertorials, branded content | On publication date | Per campaign |
| Job Postings | Single job listings, job bundles, featured placements | Over posting duration (typically 30 days) | Per posting or monthly subscription |
| Employer Branding | Company profiles, employer branding packages | Over contract term (typically annual) | Annual upfront or quarterly |
| Media Partnerships | Trade fair coverage, federation content deals | Per deliverable or over term | Per event or annual |
| Subscriptions | B2B subscription access, API access, data feeds | Ratably over subscription term | Monthly or annual |

### Multi-Currency Operations

FashionUnited operates across 30+ markets with significant currency exposure:

| Currency Zone | Primary Currencies | Revenue Share | Key Considerations |
|---------------|-------------------|---------------|-------------------|
| Eurozone | EUR | ~60% | Functional currency for consolidated reporting |
| UK | GBP | ~15% | Brexit-related regulatory changes |
| Americas | USD, BRL | ~15% | USD for US/Canada, BRL for Brazil |
| Asia Pacific | CNY, INR, JPY, AUD | ~10% | Diverse payment practices, longer collection cycles |

**FX Management:**
- Functional currency: EUR (Netherlands headquarters)
- Translation method: Current rate method for foreign subsidiaries
- Transaction exposure: Invoicing in local currency for major markets
- Month-end revaluation: Mark all foreign currency monetary items to closing rate

### Chart of Accounts Structure

FashionUnited uses a simplified chart of accounts aligned with media/publishing industry standards:

| Account Range | Category | Key Accounts |
|---------------|----------|--------------|
| 1000-1999 | Assets | Cash, AR, Prepaid, Fixed Assets |
| 2000-2999 | Liabilities | AP, Accrued Expenses, Deferred Revenue, VAT Payable |
| 3000-3999 | Equity | Share Capital, Retained Earnings |
| 4000-4999 | Revenue | Advertising Revenue, Subscription Revenue, Job Posting Revenue, Partnership Revenue |
| 5000-5999 | Cost of Revenue | Content Costs, Hosting/Infrastructure, Payment Processing |
| 6000-6999 | Operating Expenses | Personnel, Marketing, Professional Services, Office/Admin |
| 7000-7999 | Other Income/Expense | Interest, FX Gains/Losses, Other |

**Segment Reporting:**
- By market (Netherlands, Germany, UK, US, etc.)
- By revenue stream (Advertising, Jobs, Subscriptions, Partnerships)
- By customer type (Brands, Retailers, Agencies, Trade Fairs)

### Reporting Structure

| Report | Frequency | Audience | Key Metrics |
|--------|-----------|----------|-------------|
| Flash Revenue Report | Weekly | Finance Manager, Leadership | Revenue by market, pipeline conversion |
| Monthly P&L | Monthly (T+5) | Leadership, Department Heads | Revenue, GM, OpEx by category, EBITDA |
| Cash Flow Forecast | Weekly | Finance Manager | 13-week rolling forecast, AR aging, payment schedule |
| AR Aging Report | Weekly | Finance Manager, Sales | Aging buckets, DSO, collection status |
| Budget vs Actual | Monthly | Leadership, Department Heads | Variance analysis by line item |
| Board Package | Quarterly | Board of Directors | KPIs, financial statements, strategic metrics |

### Month-End Close Procedures

FashionUnited targets a 5-business-day close:

| Day | Key Activities | Owner |
|-----|---------------|-------|
| **T+1** | Cash entries, bank reconciliation start, preliminary AR/AP | Finance Manager |
| **T+2** | Revenue recognition (advertising delivered, jobs posted), accruals | Finance Manager |
| **T+3** | Intercompany reconciliation, FX revaluation, prepaid amortization | Finance Manager |
| **T+4** | Trial balance review, flux analysis, draft P&L | Finance Manager |
| **T+5** | Final adjustments, close period, distribute reports | Finance Manager |

**Key Close Activities:**
- **Revenue cut-off**: Verify all delivered advertising and published content is recognized
- **Job posting revenue**: Match job postings to invoices, calculate deferred revenue
- **Subscription revenue**: Recognize ratably based on billing schedules
- **Partner revenue share**: Calculate and accrue partner payments for trade fair content
- **VAT reconciliation**: Reconcile VAT collected vs VAT payable across EU markets
- **Intercompany**: Clear intercompany AR/AP between FashionUnited entities

### Billing and Invoicing (Vtiger CRM)

FashionUnited's billing workflows are managed through Vtiger CRM:

| Process | Workflow | Automation Level |
|---------|----------|------------------|
| Invoice Creation | Sales creates opportunity, Finance generates invoice from CRM | Semi-automated |
| Invoice Delivery | Email invoice from Vtiger with PDF attachment | Automated |
| Payment Tracking | Record payment in Vtiger, update status | Manual entry |
| Dunning | 30/60/90 day reminder emails from Vtiger | Automated |
| Credit Notes | Create credit note in Vtiger linked to original invoice | Manual |
| Revenue Reporting | Export from Vtiger to Google Sheets for analysis | Semi-automated |

### Financial Control Environment

As a smaller organization, FashionUnited relies on compensating controls rather than formal SOX compliance:

| Control Area | Control Description | Frequency |
|--------------|---------------------|-----------|
| Invoice Approval | Finance Manager approves all invoices > EUR 1,000 | Per transaction |
| Payment Authorization | Dual signature required for payments > EUR 5,000 | Per transaction |
| Bank Reconciliation | Monthly reconciliation of all bank accounts | Monthly |
| AR Review | Weekly review of aging report, follow-up on overdue | Weekly |
| Revenue Recognition | Finance Manager reviews all revenue entries | Monthly |
| Journal Entry Review | Finance Manager reviews all manual journal entries | Per transaction |
| Budget Monitoring | Monthly budget vs actual review with department heads | Monthly |

### Key Financial Metrics

| Metric | Definition | Target/Benchmark |
|--------|------------|------------------|
| Revenue Growth | YoY revenue growth rate | 10-15% annually |
| Gross Margin | (Revenue - Cost of Revenue) / Revenue | 70-80% |
| EBITDA Margin | EBITDA / Revenue | 15-25% |
| DSO | Average days to collect receivables | < 45 days |
| Revenue per Market | Revenue by geographic market | Monitor concentration |
| Recurring Revenue % | Subscription + Repeat advertising / Total revenue | > 60% |
| Customer Acquisition Cost | Sales & Marketing cost / New customers | Monitor trend |
| Customer Lifetime Value | Average revenue per customer over relationship | > 3x CAC |

### Accounting Policies

| Area | Policy | Notes |
|------|--------|-------|
| Revenue Recognition | IFRS 15 / ASC 606 principles | Recognize when performance obligation satisfied |
| Foreign Currency | IAS 21 / ASC 830 | Functional currency EUR, current rate method |
| Leases | IFRS 16 / ASC 842 | Right-of-use assets for office leases |
| Fixed Assets | Straight-line depreciation | IT equipment 3 years, office furniture 5 years |
| Intangibles | Amortize over useful life | Website development costs capitalized and amortized |
| Bad Debt | Expected credit loss model | Provision based on aging and historical loss rates |
