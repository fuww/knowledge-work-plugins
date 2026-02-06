# Knowledge MCP Search Strategies

Query patterns for gathering organizational context during plugin customization.

## Finding Tool Names

**Source control:**
- Search: "GitHub" OR "GitLab" OR "Bitbucket"
- Search: "pull request" OR "merge request"
- Look for: repository links, CI/CD mentions

**Project management:**
- Search: "Asana" OR "Jira" OR "Linear" OR "Monday" OR "GitHub Issues"
- Search: "sprint" AND "tickets"
- Look for: task links, project board mentions

**Chat:**
- Search: "Google Chat" OR "Teams" OR "Discord"
- Look for: channel mentions, integration discussions

**Analytics:**
- Search: "Plausible" OR "Datadog" OR "Grafana" OR "Mixpanel"
- Search: "monitoring" OR "observability" OR "page views"
- Look for: dashboard links, alert configurations

**Design:**
- Search: "Figma" OR "Sketch" OR "Adobe XD"
- Look for: design file links, handoff discussions

**CRM:**
- Search: "Vtiger" OR "Salesforce" OR "HubSpot"
- Look for: deal mentions, customer record links, invoice references

**Email marketing:**
- Search: "Mailchimp" OR "Klaviyo" OR "newsletter"
- Look for: campaign mentions, subscriber lists

**Social media:**
- Search: "Social Champ" OR "Buffer" OR "Hootsuite"
- Look for: scheduling discussions, social posts

**Data warehouse:**
- Search: "BigQuery" OR "Snowflake" OR "Redshift"
- Search: "dataset" OR "data warehouse" OR "SQL"
- Look for: query discussions, data pipeline mentions

## Finding Organization Values

**Workspace/project IDs:**
- Search for existing integrations or bookmarked links
- Look for admin/setup documentation

**Team conventions:**
- Search: "story points" OR "estimation"
- Search: "workflow" OR "ticket status"
- Look for engineering process docs

**Channel/team names:**
- Search: "standup" OR "engineering" OR "releases"
- Look for channel naming patterns

## FashionUnited-Specific Patterns

When customizing plugins for FashionUnited, also search for:

**Industry context:**
- Search: "fashion week" OR "trade fair" OR "collection"
- Search: "B2B" OR "marketplace" OR "job board"
- Look for: seasonal planning, event coverage

**Product data:**
- Search: "GraphQL" OR "API" OR "jobs endpoint"
- Search: "marketplace" OR "Top 100" OR "editorial"
- Look for: data source discussions, API usage

**Markets:**
- Search: market names (e.g., "fashionunited.de", "fashionunited.uk")
- Look for: localization discussions, market-specific content

**Key Google Chat spaces:**
- `#editorial` — News coverage, content planning
- `#sales` — Advertising, partnerships
- `#product` — Product development, technical
- `#marketing` — Marketing campaigns, social media

## When Knowledge MCPs Are Unavailable

If no knowledge MCPs are configured, skip automatic discovery and proceed directly to AskUserQuestion for all categories. Note: AskUserQuestion always includes a Skip button and a free-text input box for custom answers, so do not include `None` or `Other` as options.
