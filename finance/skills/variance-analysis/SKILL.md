---
name: variance-analysis
description: Decompose financial variances into drivers with narrative explanations and waterfall analysis. Use when analyzing budget vs. actual, period-over-period changes, revenue or expense variances, or preparing variance commentary for leadership.
---

# Variance Analysis

**Important**: This skill assists with variance analysis workflows but does not provide financial advice. All analyses should be reviewed by qualified financial professionals before use in reporting.

Techniques for decomposing variances, materiality thresholds, narrative generation, waterfall chart methodology, and budget vs actual vs forecast comparisons.

## Variance Decomposition Techniques

### Price / Volume Decomposition

The most fundamental variance decomposition. Used for revenue, cost of goods, and any metric that can be expressed as Price x Volume.

**Formula:**
```
Total Variance = Actual - Budget (or Prior)

Volume Effect  = (Actual Volume - Budget Volume) x Budget Price
Price Effect   = (Actual Price - Budget Price) x Actual Volume
Mix Effect     = Residual (interaction term), or allocated proportionally

Verification:  Volume Effect + Price Effect = Total Variance
               (when mix is embedded in the price/volume terms)
```

**Three-way decomposition (separating mix):**
```
Volume Effect = (Actual Volume - Budget Volume) x Budget Price x Budget Mix
Price Effect  = (Actual Price - Budget Price) x Budget Volume x Actual Mix
Mix Effect    = Budget Price x Budget Volume x (Actual Mix - Budget Mix)
```

**Example — Revenue variance:**
- Budget: 10,000 units at $50 = $500,000
- Actual: 11,000 units at $48 = $528,000
- Total variance: +$28,000 favorable
  - Volume effect: +1,000 units x $50 = +$50,000 (favorable — sold more units)
  - Price effect: -$2 x 11,000 units = -$22,000 (unfavorable — lower ASP)
  - Net: +$28,000

### Rate / Mix Decomposition

Used when analyzing blended rates across segments with different unit economics.

**Formula:**
```
Rate Effect = Sum of (Actual Volume_i x (Actual Rate_i - Budget Rate_i))
Mix Effect  = Sum of (Budget Rate_i x (Actual Volume_i - Expected Volume_i at Budget Mix))
```

**Example — Gross margin variance:**
- Product A: 60% margin, Product B: 40% margin
- Budget mix: 50% A, 50% B → Blended margin 50%
- Actual mix: 40% A, 60% B → Blended margin 48%
- Mix effect explains 2pp of margin compression

### Headcount / Compensation Decomposition

Used for analyzing payroll and people-cost variances.

```
Total Comp Variance = Actual Compensation - Budget Compensation

Decompose into:
1. Headcount variance    = (Actual HC - Budget HC) x Budget Avg Comp
2. Rate variance         = (Actual Avg Comp - Budget Avg Comp) x Budget HC
3. Mix variance          = Difference due to level/department mix shift
4. Timing variance       = Hiring earlier/later than planned (partial-period effect)
5. Attrition impact      = Savings from unplanned departures (partially offset by backfill costs)
```

### Spend Category Decomposition

Used for operating expense analysis when price/volume is not applicable.

```
Total OpEx Variance = Actual OpEx - Budget OpEx

Decompose by:
1. Headcount-driven costs    (salaries, benefits, payroll taxes, recruiting)
2. Volume-driven costs       (hosting, transaction fees, commissions, shipping)
3. Discretionary spend       (travel, events, professional services, marketing programs)
4. Contractual/fixed costs   (rent, insurance, software licenses, subscriptions)
5. One-time / non-recurring  (severance, legal settlements, write-offs, project costs)
6. Timing / phasing          (spend shifted between periods vs plan)
```

## Materiality Thresholds and Investigation Triggers

### Setting Thresholds

Materiality thresholds determine which variances require investigation and narrative explanation. Set thresholds based on:

1. **Financial statement materiality:** Typically 1-5% of a key benchmark (revenue, total assets, net income)
2. **Line item size:** Larger line items warrant lower percentage thresholds
3. **Volatility:** More volatile line items may need higher thresholds to avoid noise
4. **Management attention:** What level of variance would change a decision?

### Recommended Threshold Framework

| Comparison Type | Dollar Threshold | Percentage Threshold | Trigger |
|----------------|-----------------|---------------------|---------|
| Actual vs Budget | Organization-specific | 10% | Either exceeded |
| Actual vs Prior Period | Organization-specific | 15% | Either exceeded |
| Actual vs Forecast | Organization-specific | 5% | Either exceeded |
| Sequential (MoM) | Organization-specific | 20% | Either exceeded |

*Set dollar thresholds based on your organization's size. Common practice: 0.5%-1% of revenue for income statement items.*

### Investigation Priority

When multiple variances exceed thresholds, prioritize investigation by:

1. **Largest absolute dollar variance** — biggest P&L impact
2. **Largest percentage variance** — may indicate process issue or error
3. **Unexpected direction** — variance opposite to trend or expectation
4. **New variance** — item that was on track and is now off
5. **Cumulative/trending variance** — growing each period

## Narrative Generation for Variance Explanations

### Structure for Each Variance Narrative

```
[Line Item]: [Favorable/Unfavorable] variance of $[amount] ([percentage]%)
vs [comparison basis] for [period]

Driver: [Primary driver description]
[2-3 sentences explaining the business reason for the variance, with specific
quantification of contributing factors]

Outlook: [One-time / Expected to continue / Improving / Deteriorating]
Action: [None required / Monitor / Investigate further / Update forecast]
```

### Narrative Quality Checklist

Good variance narratives should be:

- [ ] **Specific:** Names the actual driver, not just "higher than expected"
- [ ] **Quantified:** Includes dollar and percentage impact of each driver
- [ ] **Causal:** Explains WHY it happened, not just WHAT happened
- [ ] **Forward-looking:** States whether the variance is expected to continue
- [ ] **Actionable:** Identifies any required follow-up or decision
- [ ] **Concise:** 2-4 sentences, not a paragraph of filler

### Common Narrative Anti-Patterns to Avoid

- "Revenue was higher than budget due to higher revenue" (circular — no actual explanation)
- "Expenses were elevated this period" (vague — which expenses? why?)
- "Timing" without specifying what was early/late and when it will normalize
- "One-time" without explaining what the item was
- "Various small items" for a material variance (must decompose further)
- Focusing only on the largest driver and ignoring offsetting items

## Waterfall Chart Methodology

### Concept

A waterfall (or bridge) chart shows how you get from one value to another through a series of positive and negative contributors. Used to visualize variance decomposition.

### Data Structure

```
Starting value:  [Base/Budget/Prior period amount]
Drivers:         [List of contributing factors with signed amounts]
Ending value:    [Actual/Current period amount]

Verification:    Starting value + Sum of all drivers = Ending value
```

### Text-Based Waterfall Format

When a charting tool is not available, present as a text waterfall:

```
WATERFALL: Revenue — Q4 Actual vs Q4 Budget

Q4 Budget Revenue                                    $10,000K
  |
  |--[+] Volume growth (new customers)               +$800K
  |--[+] Expansion revenue (existing customers)      +$400K
  |--[-] Price reductions / discounting               -$200K
  |--[-] Churn / contraction                          -$350K
  |--[+] FX tailwind                                  +$50K
  |--[-] Timing (deals slipped to Q1)                 -$150K
  |
Q4 Actual Revenue                                    $10,550K

Net Variance: +$550K (+5.5% favorable)
```

### Bridge Reconciliation Table

Complement the waterfall with a reconciliation table:

| Driver | Amount | % of Variance | Cumulative |
|--------|--------|---------------|------------|
| Volume growth | +$800K | 145% | +$800K |
| Expansion revenue | +$400K | 73% | +$1,200K |
| Price reductions | -$200K | -36% | +$1,000K |
| Churn / contraction | -$350K | -64% | +$650K |
| FX tailwind | +$50K | 9% | +$700K |
| Timing (deal slippage) | -$150K | -27% | +$550K |
| **Total variance** | **+$550K** | **100%** | |

*Note: Percentages can exceed 100% for individual drivers when there are offsetting items.*

### Waterfall Best Practices

1. Order drivers from largest positive to largest negative (or in logical business sequence)
2. Keep to 5-8 drivers maximum — aggregate smaller items into "Other"
3. Verify the waterfall reconciles (start + drivers = end)
4. Color-code: green for favorable, red for unfavorable (in visual charts)
5. Label each bar with both the amount and a brief description
6. Include a "Total Variance" summary bar

## Budget vs Actual vs Forecast Comparisons

### Three-Way Comparison Framework

| Metric | Budget | Forecast | Actual | Bud Var ($) | Bud Var (%) | Fcast Var ($) | Fcast Var (%) |
|--------|--------|----------|--------|-------------|-------------|---------------|---------------|
| Revenue | $X | $X | $X | $X | X% | $X | X% |
| COGS | $X | $X | $X | $X | X% | $X | X% |
| Gross Profit | $X | $X | $X | $X | X% | $X | X% |

### When to Use Each Comparison

- **Actual vs Budget:** Annual performance measurement, compensation decisions, board reporting. Budget is set at the beginning of the year and typically not changed.
- **Actual vs Forecast:** Operational management, identifying emerging issues. Forecast is updated periodically (monthly or quarterly) to reflect current expectations.
- **Forecast vs Budget:** Understanding how expectations have changed since planning. Useful for identifying planning accuracy issues.
- **Actual vs Prior Period:** Trend analysis, sequential performance. Useful when budget is not meaningful (new business lines, post-acquisition).
- **Actual vs Prior Year:** Year-over-year growth analysis, seasonality-adjusted comparison.

### Forecast Accuracy Analysis

Track how accurate forecasts are over time to improve planning:

```
Forecast Accuracy = 1 - |Actual - Forecast| / |Actual|

MAPE (Mean Absolute Percentage Error) = Average of |Actual - Forecast| / |Actual| across periods
```

| Period | Forecast | Actual | Variance | Accuracy |
|--------|----------|--------|----------|----------|
| Jan    | $X       | $X     | $X (X%)  | XX%      |
| Feb    | $X       | $X     | $X (X%)  | XX%      |
| ...    | ...      | ...    | ...      | ...      |
| **Avg**|          |        | **MAPE** | **XX%**  |

### Variance Trending

Track how variances evolve over the year to identify systematic bias:

- **Consistently favorable:** Budget may be too conservative (sandbagging)
- **Consistently unfavorable:** Budget may be too aggressive or execution issues
- **Growing unfavorable:** Deteriorating performance or unrealistic targets
- **Shrinking variance:** Forecast accuracy improving through the year (normal pattern)
- **Volatile:** Unpredictable business or poor forecasting methodology

## FashionUnited Variance Analysis

FashionUnited performs monthly variance analysis comparing actuals to budget and prior year, with focus on revenue by market and revenue stream.

### FashionUnited Materiality Thresholds

| Category | EUR Threshold | % Threshold | Action |
|----------|--------------|-------------|--------|
| Total Revenue | EUR 10,000 | 5% | Leadership discussion |
| Revenue by Stream | EUR 5,000 | 10% | Finance investigation |
| OpEx Category | EUR 5,000 | 15% | Finance investigation |
| Individual Line | EUR 2,500 | 20% | Document explanation |

### FashionUnited Revenue Variance Drivers

When analyzing revenue variances, decompose by:

**Display Advertising:**
- Impression volume (traffic changes, new ad inventory)
- CPM rates (market pricing, premium placements)
- Fill rate (sold vs available inventory)
- New vs existing advertisers

**Job Postings:**
- Number of postings sold
- Average price per posting (single vs bundle, featured vs standard)
- Customer mix (direct vs agency, large vs SMB)
- Market-specific demand (fashion industry hiring trends)

**Employer Branding:**
- New contracts signed
- Renewals vs churn
- Contract value (package tier, add-ons)
- Timing (annual contracts, payment timing)

**Subscriptions:**
- New subscriber acquisition
- Churn/cancellations
- ARPU changes (plan tier, usage-based pricing)
- Market mix

### FashionUnited OpEx Variance Drivers

| Category | Key Drivers |
|----------|-------------|
| Personnel | Headcount changes, salary adjustments, bonus accruals, contractor spend |
| Content | Freelance rates, translation volume, photography licensing |
| Hosting | Traffic-driven costs, new infrastructure, cloud optimization |
| Marketing | Events, campaigns, sponsorships (often discretionary/timing) |
| Professional Services | Legal, accounting, consulting (project-based, timing variable) |

### FashionUnited Market-Level Analysis

For multi-market revenue analysis:

```
REVENUE VARIANCE BY MARKET — [Month] Actual vs Budget

Market          Budget      Actual      Var (EUR)   Var (%)   YoY Growth
-----------     --------    --------    ---------   -------   ----------
Netherlands     EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
Germany         EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
UK              EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
France          EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
US              EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
Other           EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
-----------     --------    --------    ---------   -------   ----------
TOTAL           EUR X,XXX   EUR X,XXX   EUR X,XXX   X.X%      X.X%
```

### FashionUnited Waterfall Example

```
WATERFALL: Total Revenue — [Month] Actual vs Budget

Budget Revenue                                       EUR XXX,XXX
  |
  |--[+] Display Advertising - higher CPMs           +EUR X,XXX
  |--[+] Job Postings - increased volume             +EUR X,XXX
  |--[-] Employer Branding - delayed renewal         -EUR X,XXX
  |--[+] Media Partnership - event coverage          +EUR X,XXX
  |--[-] FX impact (GBP weakness)                    -EUR X,XXX
  |
Actual Revenue                                       EUR XXX,XXX

Net Variance: +EUR X,XXX (+X.X% favorable)
```

### FashionUnited FX Variance

Given FashionUnited's multi-currency operations, isolate FX impact:

1. **Transaction FX**: Revenue invoiced in foreign currency translated at different rates than budget
2. **Translation FX**: Subsidiary results translated at different rates than budget
3. **Revaluation FX**: Month-end mark-to-market of monetary balances

**FX Variance Calculation:**
```
FX Impact = Actual Revenue at Budget FX Rates - Actual Revenue at Actual FX Rates

Budget FX Rates (annual budget):
  EUR/USD: 1.10
  EUR/GBP: 0.86
  EUR/CHF: 0.95

Actual Average Rates (month):
  EUR/USD: [actual]
  EUR/GBP: [actual]
  EUR/CHF: [actual]
```

### FashionUnited Variance Narrative Template

```
[Revenue Stream/Market]: [Favorable/Unfavorable] variance of EUR [amount] ([X]%)
vs budget for [month]

Driver: [Primary driver]
[2-3 sentences with specific quantification. Reference number of customers,
campaigns, or transactions affected. Note any one-time items.]

Outlook: [One-time / Continuing trend / Seasonal pattern / Action being taken]
Action: [None / Monitor / Investigate / Update forecast / Escalate]
```

**Example:**
```
Job Posting Revenue - Germany: Favorable variance of EUR 12,500 (+8%)
vs budget for January

Driver: Increased hiring activity in fashion retail sector
Strong Q1 hiring by German fashion retailers, with 45 additional job postings
sold vs budget. Average price per posting stable at EUR 295. Three new
enterprise customers added, contributing EUR 4,200 in bundle sales.

Outlook: Continuing trend - German retail hiring expected to remain strong
through Q1 based on customer conversations and market indicators.
Action: Monitor - consider increasing Q2 forecast if trend continues.
```
