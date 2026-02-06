---
name: financial-statements
description: Generate income statements, balance sheets, and cash flow statements with GAAP presentation and period-over-period comparison. Use when preparing financial statements, running flux analysis, or creating P&L reports with variance commentary.
---

# Financial Statements

**Important**: This skill assists with financial statement workflows but does not provide financial advice. All statements should be reviewed by qualified financial professionals before use in reporting or filings.

Formats, GAAP presentation requirements, common adjustments, and flux analysis methodology for income statements, balance sheets, and cash flow statements.

## Income Statement

### Standard Format (Classification of Expenses by Function)

```
Revenue
  Product revenue
  Service revenue
  Other revenue
Total Revenue

Cost of Revenue
  Product costs
  Service costs
Total Cost of Revenue

Gross Profit

Operating Expenses
  Research and development
  Sales and marketing
  General and administrative
Total Operating Expenses

Operating Income (Loss)

Other Income (Expense)
  Interest income
  Interest expense
  Other income (expense), net
Total Other Income (Expense)

Income (Loss) Before Income Taxes
  Income tax expense (benefit)
Net Income (Loss)

Earnings Per Share (if applicable)
  Basic
  Diluted
```

### GAAP Presentation Requirements (ASC 220 / IAS 1)

- Present all items of income and expense recognized in a period
- Classify expenses either by nature (materials, labor, depreciation) or by function (COGS, R&D, S&M, G&A) — function is more common for US companies
- If classified by function, disclose depreciation, amortization, and employee benefit costs by nature in the notes
- Present operating and non-operating items separately
- Show income tax expense as a separate line
- Extraordinary items are prohibited under both US GAAP and IFRS
- Discontinued operations presented separately, net of tax

### Common Presentation Considerations

- **Revenue disaggregation:** ASC 606 requires disaggregation of revenue into categories that depict how the nature, amount, timing, and uncertainty of revenue are affected by economic factors
- **Stock-based compensation:** Classify within the functional expense categories (R&D, S&M, G&A) with total SBC disclosed in notes
- **Restructuring charges:** Present separately if material, or include in operating expenses with note disclosure
- **Non-GAAP adjustments:** If presenting non-GAAP measures (common in earnings releases), clearly label and reconcile to GAAP

## Balance Sheet

### Standard Format (Classified Balance Sheet)

```
ASSETS
Current Assets
  Cash and cash equivalents
  Short-term investments
  Accounts receivable, net
  Inventory
  Prepaid expenses and other current assets
Total Current Assets

Non-Current Assets
  Property and equipment, net
  Operating lease right-of-use assets
  Goodwill
  Intangible assets, net
  Long-term investments
  Other non-current assets
Total Non-Current Assets

TOTAL ASSETS

LIABILITIES AND STOCKHOLDERS' EQUITY
Current Liabilities
  Accounts payable
  Accrued liabilities
  Deferred revenue, current portion
  Current portion of long-term debt
  Operating lease liabilities, current portion
  Other current liabilities
Total Current Liabilities

Non-Current Liabilities
  Long-term debt
  Deferred revenue, non-current
  Operating lease liabilities, non-current
  Other non-current liabilities
Total Non-Current Liabilities

Total Liabilities

Stockholders' Equity
  Common stock
  Additional paid-in capital
  Retained earnings (accumulated deficit)
  Accumulated other comprehensive income (loss)
  Treasury stock
Total Stockholders' Equity

TOTAL LIABILITIES AND STOCKHOLDERS' EQUITY
```

### GAAP Presentation Requirements (ASC 210 / IAS 1)

- Distinguish between current and non-current assets and liabilities
- Current: expected to be realized, consumed, or settled within 12 months (or the operating cycle if longer)
- Present assets in order of liquidity (most liquid first) — standard US practice
- Accounts receivable shown net of allowance for credit losses (ASC 326)
- Property and equipment shown net of accumulated depreciation
- Goodwill is not amortized — tested for impairment annually (ASC 350)
- Leases: recognize right-of-use assets and lease liabilities for operating and finance leases (ASC 842)

## Cash Flow Statement

### Standard Format (Indirect Method)

```
CASH FLOWS FROM OPERATING ACTIVITIES
Net income (loss)
Adjustments to reconcile net income to net cash from operations:
  Depreciation and amortization
  Stock-based compensation
  Amortization of debt issuance costs
  Deferred income taxes
  Loss (gain) on disposal of assets
  Impairment charges
  Other non-cash items
Changes in operating assets and liabilities:
  Accounts receivable
  Inventory
  Prepaid expenses and other assets
  Accounts payable
  Accrued liabilities
  Deferred revenue
  Other liabilities
Net Cash Provided by (Used in) Operating Activities

CASH FLOWS FROM INVESTING ACTIVITIES
  Purchases of property and equipment
  Purchases of investments
  Proceeds from sale/maturity of investments
  Acquisitions, net of cash acquired
  Other investing activities
Net Cash Provided by (Used in) Investing Activities

CASH FLOWS FROM FINANCING ACTIVITIES
  Proceeds from issuance of debt
  Repayment of debt
  Proceeds from issuance of common stock
  Repurchases of common stock
  Dividends paid
  Payment of debt issuance costs
  Other financing activities
Net Cash Provided by (Used in) Financing Activities

Effect of exchange rate changes on cash

Net Increase (Decrease) in Cash and Cash Equivalents
Cash and cash equivalents, beginning of period
Cash and cash equivalents, end of period
```

### GAAP Presentation Requirements (ASC 230 / IAS 7)

- Indirect method is most common (start with net income, adjust for non-cash items)
- Direct method is permitted but rarely used (requires supplemental indirect reconciliation)
- Interest paid and income taxes paid must be disclosed (either on the face or in notes)
- Non-cash investing and financing activities disclosed separately (e.g., assets acquired under leases, stock issued for acquisitions)
- Cash equivalents: short-term, highly liquid investments with original maturities of 3 months or less

## Common Adjustments and Reclassifications

### Period-End Adjustments

1. **Accruals:** Record expenses incurred but not yet paid (AP accruals, payroll accruals, interest accruals)
2. **Deferrals:** Adjust prepaid expenses, deferred revenue, and deferred costs for the period
3. **Depreciation and amortization:** Book periodic depreciation/amortization from fixed asset and intangible schedules
4. **Bad debt provision:** Adjust allowance for credit losses based on aging analysis and historical loss rates
5. **Inventory adjustments:** Record write-downs for obsolete, slow-moving, or impaired inventory
6. **FX revaluation:** Revalue foreign-currency-denominated monetary assets and liabilities at period-end rates
7. **Tax provision:** Record current and deferred income tax expense
8. **Fair value adjustments:** Mark-to-market investments, derivatives, and other fair-value items

### Reclassifications

1. **Current/non-current reclassification:** Reclassify long-term debt maturing within 12 months to current
2. **Contra account netting:** Net allowances against gross receivables, accumulated depreciation against gross assets
3. **Intercompany elimination:** Eliminate intercompany balances and transactions in consolidation
4. **Discontinued operations:** Reclassify results of discontinued operations to a separate line item
5. **Equity method adjustments:** Record share of investee income/loss for equity method investments
6. **Segment reclassifications:** Ensure transactions are properly classified by operating segment

## Flux Analysis Methodology

### Variance Calculation

For each line item, calculate:
- **Dollar variance:** Current period - Prior period (or current period - budget)
- **Percentage variance:** (Current - Prior) / |Prior| x 100
- **Basis point change:** For margins and ratios, express change in basis points (1 bp = 0.01%)

### Materiality Thresholds

Define what constitutes a "material" variance requiring investigation. Common approaches:

- **Fixed dollar threshold:** Variances exceeding a set dollar amount (e.g., $50K, $100K)
- **Percentage threshold:** Variances exceeding a set percentage (e.g., 10%, 15%)
- **Combined:** Either the dollar OR percentage threshold is exceeded
- **Scaled:** Different thresholds for different line items based on their size and volatility

*Example thresholds (adjust for your organization):*

| Line Item Size | Dollar Threshold | Percentage Threshold |
|---------------|-----------------|---------------------|
| > $10M        | $500K           | 5%                  |
| $1M - $10M    | $100K           | 10%                 |
| < $1M         | $50K            | 15%                 |

### Variance Decomposition

Break down total variance into component drivers:

- **Volume/quantity effect:** Change in volume at prior period rates
- **Rate/price effect:** Change in rate/price at current period volume
- **Mix effect:** Shift in composition between items with different rates/margins
- **New/discontinued items:** Items present in one period but not the other
- **One-time/non-recurring items:** Items that are not expected to repeat
- **Timing effect:** Items shifting between periods (not a true change in run rate)
- **Currency effect:** Impact of FX rate changes on translated results

### Investigation and Narrative

For each material variance:
1. Quantify the variance ($ and %)
2. Identify whether favorable or unfavorable
3. Decompose into drivers using the categories above
4. Provide a narrative explanation of the business reason
5. Assess whether the variance is temporary or represents a trend change
6. Note any actions required (further investigation, forecast update, process change)

## FashionUnited Financial Statements

FashionUnited prepares monthly financial statements in Google Sheets with data aggregated from Vtiger CRM and BigQuery.

### FashionUnited Income Statement Format

```
FASHIONUNITED B.V.
INCOME STATEMENT
Period: [Month Year]
(in EUR thousands)

                                    Current    Prior      Budget    Prior
                                    Month      Month      Month     Year
                                    --------   --------   --------  --------
REVENUE
  Display Advertising               EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Sponsored Content                 EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Job Postings                      EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Employer Branding                 EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Media Partnerships                EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Subscriptions                     EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
                                    --------   --------   --------  --------
TOTAL REVENUE                       EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX

COST OF REVENUE
  Content Costs                     EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Hosting & Infrastructure          EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Payment Processing                EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Partner Revenue Share             EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
                                    --------   --------   --------  --------
TOTAL COST OF REVENUE               EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX

GROSS PROFIT                        EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Gross Margin %                    XX.X%      XX.X%      XX.X%     XX.X%

OPERATING EXPENSES
  Personnel                         EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Marketing & Events                EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Professional Services             EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Office & Administrative           EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Depreciation & Amortization       EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
                                    --------   --------   --------  --------
TOTAL OPERATING EXPENSES            EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX

OPERATING INCOME (EBITDA)           EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  EBITDA Margin %                   XX.X%      XX.X%      XX.X%     XX.X%

OTHER INCOME (EXPENSE)
  Interest Income                   EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  FX Gains (Losses)                 EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
                                    --------   --------   --------  --------
TOTAL OTHER INCOME (EXPENSE)        EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX

INCOME BEFORE TAXES                 EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Corporate Income Tax              EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
                                    --------   --------   --------  --------

NET INCOME (LOSS)                   EUR X,XXX  EUR X,XXX  EUR X,XXX EUR X,XXX
  Net Margin %                      XX.X%      XX.X%      XX.X%     XX.X%
```

### FashionUnited Revenue by Market

Supplement the P&L with market-level detail:

| Market | Current Month | YTD | YoY Growth | % of Total |
|--------|--------------|-----|------------|------------|
| Netherlands | EUR X,XXX | EUR X,XXX | X.X% | XX% |
| Germany | EUR X,XXX | EUR X,XXX | X.X% | XX% |
| UK | EUR X,XXX | EUR X,XXX | X.X% | XX% |
| France | EUR X,XXX | EUR X,XXX | X.X% | XX% |
| US | EUR X,XXX | EUR X,XXX | X.X% | XX% |
| Other Markets | EUR X,XXX | EUR X,XXX | X.X% | XX% |
| **Total** | **EUR X,XXX** | **EUR X,XXX** | **X.X%** | **100%** |

### FashionUnited Balance Sheet Format

```
FASHIONUNITED B.V.
BALANCE SHEET
As of [Month End Date]
(in EUR thousands)

ASSETS
Current Assets
  Cash and Cash Equivalents - EUR     EUR X,XXX
  Cash and Cash Equivalents - USD     EUR X,XXX
  Cash and Cash Equivalents - GBP     EUR X,XXX
  Cash and Cash Equivalents - Other   EUR X,XXX
  Accounts Receivable, net            EUR X,XXX
  VAT Receivable                      EUR X,XXX
  Prepaid Expenses                    EUR X,XXX
                                      --------
Total Current Assets                  EUR X,XXX

Non-Current Assets
  Property and Equipment, net         EUR X,XXX
  Intangible Assets (Website Dev)     EUR X,XXX
  Right-of-Use Assets                 EUR X,XXX
                                      --------
Total Non-Current Assets              EUR X,XXX

TOTAL ASSETS                          EUR X,XXX

LIABILITIES AND EQUITY
Current Liabilities
  Accounts Payable                    EUR X,XXX
  Accrued Expenses                    EUR X,XXX
  Deferred Revenue                    EUR X,XXX
  VAT Payable                         EUR X,XXX
  Corporate Tax Payable               EUR X,XXX
  Current Lease Liability             EUR X,XXX
                                      --------
Total Current Liabilities             EUR X,XXX

Non-Current Liabilities
  Long-term Lease Liability           EUR X,XXX
                                      --------
Total Non-Current Liabilities         EUR X,XXX

Total Liabilities                     EUR X,XXX

Stockholders' Equity
  Share Capital                       EUR X,XXX
  Retained Earnings                   EUR X,XXX
                                      --------
Total Stockholders' Equity            EUR X,XXX

TOTAL LIABILITIES AND EQUITY          EUR X,XXX
```

### FashionUnited Key Metrics Dashboard

| Metric | Current Month | Prior Month | YTD | Target |
|--------|--------------|-------------|-----|--------|
| Total Revenue | EUR X,XXX | EUR X,XXX | EUR X,XXX | EUR X,XXX |
| Revenue Growth (YoY) | X.X% | X.X% | X.X% | 10-15% |
| Gross Margin | XX.X% | XX.X% | XX.X% | 70-80% |
| EBITDA | EUR X,XXX | EUR X,XXX | EUR X,XXX | EUR X,XXX |
| EBITDA Margin | XX.X% | XX.X% | XX.X% | 15-25% |
| DSO | XX days | XX days | XX days | < 45 days |
| Cash | EUR X,XXX | EUR X,XXX | — | — |
| Recurring Revenue % | XX% | XX% | XX% | > 60% |
| Headcount | XX | XX | — | — |

### FashionUnited Reporting Calendar

| Report | Timing | Audience | Distribution |
|--------|--------|----------|--------------|
| Flash Revenue | Weekly (Monday AM) | Leadership | Google Chat + Email |
| Monthly P&L | T+5 | Leadership, Dept Heads | Email |
| Cash Flow Forecast | Weekly | Finance Manager | Google Sheets |
| AR Aging | Weekly | Finance, Sales | Google Sheets |
| Budget vs Actual | Monthly | Leadership | Email |
| Board Package | Quarterly (T+10) | Board | Email + Meeting |
