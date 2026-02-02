# Finance & Accounting Plugin

A finance and accounting plugin primarily designed for [Cowork](https://claude.com/product/cowork), Anthropic's agentic desktop application — though it also works in Claude Code. Supports month-end close, journal entry preparation, account reconciliation, financial statement generation, variance analysis, and internal control documentation.

> **Important**: This plugin assists with finance and accounting workflows but does not provide financial, tax, or audit advice. All outputs should be reviewed by qualified financial professionals before use in financial reporting, regulatory filings, or audit documentation.

## Installation

```bash
claude plugins add knowledge-work-plugins/finance
```

## Commands

| Command | Description |
|---------|-------------|
| `/journal-entry` | Journal entry preparation — generate accruals, fixed asset entries, prepaids, payroll, and revenue entries with proper debits/credits and supporting detail |
| `/reconciliation` | Account reconciliation — compare GL balances to subledger, bank, or third-party balances and identify reconciling items |
| `/income-statement` | Income statement generation — produce P&L with period-over-period comparison and variance analysis |
| `/variance-analysis` | Variance/flux analysis — decompose variances into drivers with narrative explanations and waterfall analysis |
| `/sox-testing` | Internal control testing — generate sample selections, testing workpapers, and control assessments |

## Skills

| Skill | Description |
|-------|-------------|
| `journal-entry-prep` | JE preparation best practices, standard accrual types, supporting documentation requirements, and review workflows |
| `reconciliation` | Reconciliation methodology for GL-to-subledger, bank recs, and intercompany, with reconciling item categorization and aging |
| `financial-statements` | Income statement, balance sheet, and cash flow statement formats with GAAP/IFRS presentation and flux analysis methodology |
| `variance-analysis` | Variance decomposition techniques (price/volume, rate/mix), materiality thresholds, narrative generation, and waterfall charts |
| `close-management` | Month-end close checklist, task sequencing, dependencies, status tracking, and common close activities by day |
| `audit-support` | Internal control testing methodology, sample selection, documentation standards, and deficiency classification |

## FashionUnited Configuration

This plugin is configured for FashionUnited's finance operations as an international B2B media company:

- **Google Workspace** for spreadsheet-based financial management and document storage
- **BigQuery** for financial data warehouse and revenue analytics
- **Vtiger CRM** for billing, invoicing, and accounts receivable management
- **Slack** for team communication and finance approval workflows

### FashionUnited Revenue Streams

| Revenue Type | Recognition Pattern |
|--------------|---------------------|
| Display Advertising | Over impression delivery period |
| Sponsored Content | On publication date |
| Job Postings | Over posting duration (typically 30 days) |
| Employer Branding | Ratably over contract term |
| Media Partnerships | Per deliverable or over term |
| Subscriptions | Ratably over subscription period |

### FashionUnited Close Calendar

FashionUnited targets a 5-business-day close managed by the Finance Manager:

| Day | Key Activities |
|-----|---------------|
| T+1 | Cash entries, bank reconciliation, preliminary AR/AP |
| T+2 | Revenue recognition, accruals, VAT reconciliation |
| T+3 | FX revaluation, intercompany, prepaid amortization |
| T+4 | Trial balance review, flux analysis, draft P&L |
| T+5 | Final adjustments, close period, distribute reports |

## Example Workflows

### Month-End Close

1. Run `/journal-entry revenue 2025-01` to book advertising and job posting revenue
2. Run `/journal-entry prepaid 2025-01` to amortize prepaid expenses
3. Run `/reconciliation cash 2025-01` to reconcile EUR, USD, and GBP bank accounts
4. Run `/reconciliation ar 2025-01` to reconcile AR to Vtiger aging
5. Run `/income-statement monthly 2025-01` to generate the P&L by market and revenue stream

### Variance Analysis

1. Run `/variance-analysis revenue 2025-01 vs 2024-12` to analyze month-over-month revenue
2. Run `/variance-analysis revenue 2025-01 vs budget` to investigate budget variances by stream
3. Review the waterfall analysis and provide context on FX impacts and market-level changes

### Internal Control Testing

1. Run `/sox-testing revenue-recognition 2024` to document revenue controls for statutory audit
2. Run `/sox-testing treasury 2024` to test cash and payment controls
3. Review sample selections and prepare PBC schedules for external auditors

## MCP Integration

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](CONNECTORS.md).

This plugin is pre-configured with the following MCP servers:

### Google Workspace

Provides spreadsheet-based financial management (Sheets for workpapers, trial balance, reconciliations), document storage (Drive for invoices, contracts), and email/calendar for Finance Manager workflows.

### BigQuery

Provides financial data warehouse for revenue analytics, multi-currency reporting, and historical trend analysis across FashionUnited's 30+ markets.

### Vtiger CRM

Provides billing and invoicing workflows, customer/advertiser account management, revenue pipeline tracking, and accounts receivable management.

### Slack

Provides team communication, finance approval workflows, and close status coordination.

> **Note:** FashionUnited does not use a dedicated accounting MCP — finance relies on Vtiger for billing/invoicing and Google Sheets for GL and workpapers.

## Configuration

The `.mcp.json` in this plugin directory is pre-configured for FashionUnited's tool stack:

- `google-workspace` — Google Workspace for spreadsheets, documents, and email
- `bigquery` — BigQuery for financial data warehouse
- `vtiger` — Vtiger CRM for billing and invoicing
- `slack` — Slack for team communication

See [CONNECTORS.md](CONNECTORS.md) for detailed integration information and FashionUnited-specific finance context.
