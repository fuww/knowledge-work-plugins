# FashionUnited Customization Review

Review of the "Making them yours" checklist and assessment of customization completeness across all plugins.

## Summary

| Checklist Item | Status | Notes |
|----------------|--------|-------|
| Swap connectors | Complete | All `.mcp.json` files configured for FashionUnited tools |
| Add company context | Mostly Complete | CONNECTORS.md files have excellent FashionUnited context |
| Adjust workflows | Partial | Many skill/command files still use `~~` placeholders |
| Build new plugins | N/A | No new plugins needed; existing set covers FashionUnited needs |

**Overall Assessment:** 80% complete. Infrastructure and documentation are fully customized, but skill/command content still uses generic placeholders.

---

## What Was Done Well

### 1. MCP Server Configurations (Complete)

All 10 plugins have `.mcp.json` files configured with FashionUnited's tool stack:

| Tool | MCP Server | Used In |
|------|------------|---------|
| Google Chat | `workspace-mcp` (via Google Workspace) | All plugins |
| Google Workspace | `workspace-mcp` | All plugins |
| Vtiger CRM | `https://mcp.pipedream.com/app/vtiger_crm` | productivity, sales, customer-support, legal, finance, enterprise-search |
| GitHub | `@modelcontextprotocol/server-github` | productivity, sales, customer-support, product-management, data, enterprise-search, legal |
| BigQuery | `https://bigquery.googleapis.com/mcp` | finance, data, enterprise-search |
| Plausible | `@alexanderop/plausible-mcp` | marketing, data |
| Mailchimp | Zapier MCP | marketing |
| Social Champ | Zapier MCP | marketing |
| Figma | `https://mcp.figma.com/mcp` | marketing |

### 2. CONNECTORS.md Files (Excellent)

Every plugin has a comprehensive CONNECTORS.md with:

- **Tool mapping tables** — Clear placeholder-to-tool mappings
- **FashionUnited-specific context** — Business operations, revenue streams, client types
- **Setup requirements** — Clear instructions for each MCP server
- **Domain knowledge** — Industry-specific context per role

Standout examples:
- `finance/CONNECTORS.md` — Detailed chart of accounts, multi-currency operations, month-end procedures
- `marketing/CONNECTORS.md` — Complete multi-language operations, editorial standards, brand voice
- `customer-support/CONNECTORS.md` — Platform knowledge for job board support

### 3. Plugin Manifests (Complete)

All `plugin.json` files updated:
- Author changed from "Anthropic" to "FashionUnited"
- Descriptions include FashionUnited context where appropriate (data, enterprise-search, customer-support, cowork-plugin-management)

### 4. Top-Level Documentation (Complete)

- `README.md` — FashionUnited fork notice, tool stack table, updated plugin descriptions
- `FASHIONUNITED-CONNECTORS.md` — Canonical mapping reference
- `marketplace.json` — Updated with FashionUnited authorship

---

## Gaps and Improvement Areas

### 1. Placeholder Usage in Skills/Commands

**Issue:** Many skill and command files still use `~~` placeholder syntax instead of FashionUnited-specific tool names.

**Count by plugin:**

| Plugin | Files with `~~` | Examples |
|--------|-----------------|----------|
| enterprise-search | 3 skills | `~~chat`, `~~CRM`, `~~data warehouse` throughout |
| customer-support | 5 commands | `~~knowledge base`, `~~CRM`, `~~chat` |
| product-management | 6 commands | `~~project tracker`, `~~design`, `~~knowledge base` |
| finance | 4 commands | `~~erp`, `~~data warehouse` |
| legal | 3 commands | `~~CLM`, `~~e-signature` |
| productivity | 1 file | `~~project tracker` (note: `~~Task~~` is markdown strikethrough, not a placeholder) |
| sales | 2 files | `~~chat` |
| data | 1 file | General references |
| marketing | 1 file | General references |

**Impact:** When Claude reads these skills, it sees generic placeholders rather than "Vtiger CRM" or "BigQuery", reducing specificity.

**Recommendation:** Replace remaining `~~` placeholders with actual tool names in skill/command files. The CONNECTORS.md provides the mapping, but the active content should use concrete tool names.

### 2. Some Placeholders Are Intentionally Generic

The following `~~` usages are appropriate and should NOT be changed:

| File | Reason |
|------|--------|
| `FASHIONUNITED-CONNECTORS.md` | Reference document explaining placeholder mappings |
| `cowork-plugin-management/` references | This plugin helps customize OTHER plugins, so generic references are correct |
| `CONNECTORS.md` files | Document the placeholder-to-tool mapping for reference |

### 3. Tool-Specific Placeholders Without MCP

Some plugins reference tools that don't have MCP servers configured:

| Placeholder | Plugin | Current Status |
|-------------|--------|----------------|
| `~~erp` | finance | Documented as "manual spreadsheet workflows" — acceptable |
| `~~CLM` | legal | Contract lifecycle management — not used |
| `~~e-signature` | legal | E-signature platform — not used |
| `~~conversation intelligence` | enterprise-search | Call recording — not used |

**Recommendation:** These are correctly documented in CONNECTORS.md as "not used" or "manual placeholder". No action needed unless FashionUnited adopts these tools.

### 4. Plugin Descriptions Could Be More Specific

Some `plugin.json` descriptions are generic:

| Plugin | Current Description | Could Add |
|--------|---------------------|-----------|
| productivity | Generic task management | "for fashion industry professionals" |
| sales | Generic sales workflows | "for B2B fashion advertising" |
| product-management | Generic PM workflows | "for fashion B2B products" |
| marketing | Generic marketing workflows | "for fashion media operations" |
| legal | Generic legal workflows | "for media advertising agreements" |
| finance | Generic finance workflows | "for multi-market fashion media company" |

**Impact:** Low — these descriptions appear in plugin listings but don't affect functionality.

---

## Remaining Work

### High Priority

1. **Replace `~~` placeholders in active skill/command content** — Estimated 30-40 files need tool name substitutions. This would make Claude's responses more specific to FashionUnited tools.

### Medium Priority

2. **Enhance plugin.json descriptions** — Add FashionUnited context to the 6 plugins with generic descriptions.

3. **Add FashionUnited GraphQL API** — The GraphQL API (`https://api.fashionunited.com/graphql`) is documented in cowork-plugin-management but not configured in other plugins that could use it (data, enterprise-search).

### Low Priority

4. **Create FashionUnited-specific commands** — Potential new commands:
   - `/data:fashion-market-report` — Generate market insights from BigQuery
   - `/enterprise-search:brand-lookup` — Comprehensive brand information
   - `/marketing:editorial-calendar` — Generate content calendar for markets

5. **Add FashionUnited domain knowledge** — Skills could include more fashion industry context:
   - Fashion week calendars
   - Trade fair schedules
   - Seasonal content planning

---

## Checklist Compliance

| "Making them yours" Step | Status | Evidence |
|--------------------------|--------|----------|
| Swap connectors — Edit `.mcp.json` | Done | All 10 plugins have FashionUnited tool configs |
| Add company context — terminology, org structure, processes | Done | CONNECTORS.md files have extensive context |
| Adjust workflows — match how your team actually does things | Partial | CONNECTORS.md describes workflows, but skill files use generic placeholders |
| Build new plugins | N/A | Existing plugins cover FashionUnited needs |

---

## Conclusion

The FashionUnited customization is substantially complete. The infrastructure layer (`.mcp.json`, `CONNECTORS.md`, `plugin.json`) is fully configured. The main gap is that skill/command files still use `~~` placeholder syntax, which could be replaced with concrete FashionUnited tool names for better specificity.

The current state is functional — Claude will use the correct MCP servers and can reference CONNECTORS.md for context. Replacing the remaining placeholders would improve Claude's responses by making tool references more explicit.

**Recommendation:** Close the customization epic as the plugins are usable. Track placeholder replacement as a separate improvement task if desired.
