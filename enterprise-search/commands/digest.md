---
description: Generate a daily or weekly digest of activity across all connected sources
argument-hint: "[--daily | --weekly | --since <date>]"
---

# Digest Command

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Scan recent activity across all connected sources and generate a structured digest highlighting what matters.

## Instructions

### 1. Parse Flags

Determine the time window from the user's input:

- `--daily` — Last 24 hours (default if no flag specified)
- `--weekly` — Last 7 days

The user may also specify a custom range:
- `--since yesterday`
- `--since Monday`
- `--since 2025-01-20`

### 2. Check Available Sources

Identify which MCP sources are connected. FashionUnited sources:

- **~~chat** — Slack (channels, DMs, mentions)
- **~~email** — Gmail (inbox, sent, threads)
- **~~cloud storage** — Drive (recently modified docs shared with user)
- **~~code repositories** — GitHub (commits, PRs, issues)
- **~~project tracker** — GitHub Issues/Projects (assigned, completed, commented)
- **~~CRM** — Vtiger (opportunity updates, account activity)
- **~~data warehouse** — BigQuery (new content, job postings, marketplace activity)

If no sources are connected, guide the user:
```
To generate a digest, you'll need at least one source connected.
Check your MCP settings to add Slack, Google Workspace, GitHub, Vtiger, or BigQuery.
```

### 3. Gather Activity from Each Source

**~~chat (Slack):**
- Search for messages mentioning the user (`to:me`)
- Check channels the user is in for recent activity
- Look for threads the user participated in
- Identify new messages in key channels (#editorial, #sales, #engineering, #general)

**~~email (Gmail):**
- Search recent inbox messages
- Identify threads with new replies
- Flag emails with action items or questions directed at the user
- Note advertiser/partner correspondence

**~~cloud storage (Drive):**
- Find documents recently modified or shared with the user
- Note new comments on docs the user owns or collaborates on
- Track editorial calendar updates, policy changes

**~~code repositories (GitHub):**
- PRs opened, reviewed, or merged
- Issues assigned or commented on
- Commits to watched repositories
- New releases or deployments

**~~project tracker (GitHub Issues):**
- Issues assigned to the user (new or updated)
- Issues completed by others that the user follows
- Comments on issues the user is involved with
- Milestone progress

**~~CRM (Vtiger):**
- Opportunity stage changes
- New activities logged on accounts the user owns
- Updated contacts or accounts
- New invoices or payment updates

**~~data warehouse (BigQuery):**
- New articles published (editorial dataset)
- New job postings by key employers (jobs dataset)
- Marketplace activity (new products, brands)
- Traffic spikes or notable analytics (analytics dataset)

### 4. Identify Key Items

From all gathered activity, extract and categorize:

**Action Items:**
- Direct requests made to the user ("Can you...", "Please...", "@user")
- Issues assigned or due soon
- Questions awaiting the user's response
- Review requests (PRs, docs, campaigns)

**Decisions:**
- Conclusions reached in threads or emails
- Approvals or rejections
- Policy or direction changes

**Mentions:**
- Times the user was mentioned or referenced
- Discussions about the user's projects or areas

**Updates:**
- Status changes on projects the user follows
- Document updates in the user's domain
- Completed items the user was waiting on

**FashionUnited-Specific Highlights:**
- New advertiser inquiries or contract updates
- Notable editorial publications
- Job market trends (spike in postings from key employers)
- Marketplace catalog changes

### 5. Group by Topic

Organize the digest by topic, project, or theme rather than by source. Merge related activity across sources:

```
## API Redesign Project
- Slack: Design review thread concluded — team chose Option B (#engineering, Tuesday)
- Gmail: Sarah sent updated spec incorporating feedback (Wednesday)
- Drive: "API Design Doc v3" updated by Sarah (Wednesday)
- GitHub: 3 PRs merged, 2 issues closed

## Gucci Advertising Campaign
- Vtiger: Opportunity moved to "Closed Won" — annual display package
- Gmail: Contract signed, invoice sent (Monday)
- Slack: Creative assets discussion in #sales (Tuesday)

## Editorial: Paris Fashion Week Coverage
- BigQuery: 12 new articles published on PFW
- Drive: Editorial calendar updated with remaining coverage schedule
- Slack: Photo selection discussion in #editorial
```

### 6. Format the Digest

Structure the output clearly:

```
# [Daily/Weekly] Digest — [Date or Date Range]

Sources scanned: Slack, Gmail, Drive, GitHub, Vtiger, BigQuery

## Action Items (X items)
- [ ] [Action item 1] — from [person], [source] ([date])
- [ ] [Action item 2] — from [person], [source] ([date])

## Decisions Made
- [Decision 1] — [context] ([source], [date])
- [Decision 2] — [context] ([source], [date])

## [Topic/Project Group 1]
[Activity summary with source attribution]

## [Topic/Project Group 2]
[Activity summary with source attribution]

## Mentions
- [Mention context] — [source] ([date])

## Documents Updated
- [Doc name] — [who modified, what changed] ([date])

## FashionUnited Highlights
- Editorial: [X] articles published, top topics: [topics]
- Jobs: [X] new postings, notable employers: [employers]
- Marketplace: [X] new products, [Y] brands updated
- Advertisers: [Notable account activity]
```

### 7. Handle Unavailable Sources

If any source fails or is unreachable:
```
Note: Could not reach [source name] for this digest.
The following sources were included: [list of successful sources].
```

Do not let one failed source prevent the digest from being generated. Produce the best digest possible from available sources.

### 8. Summary Stats

End with a quick summary:
```
---
[X] action items · [Y] decisions · [Z] mentions · [W] doc updates
Across [N] sources · Covering [time range]
```

## FashionUnited Digest Examples

### Daily Editorial Digest
```
/enterprise-search:digest --daily

Focus on editorial activity:
- Articles published today
- Editorial discussions in Slack
- Content calendar updates
- Traffic/engagement highlights
```

### Weekly Sales Digest
```
/enterprise-search:digest --weekly

Focus on sales/advertising activity:
- CRM opportunity updates
- Advertiser correspondence
- Contract/invoice activity
- New leads or inquiries
```

### Since Last Week Digest
```
/enterprise-search:digest --since "last Monday"

Full activity scan across all sources
```

## Notes

- Default to `--daily` if no flag is specified
- Group by topic/project, not by source — users care about what happened, not where it happened
- Action items should always be listed first — they are the most actionable part of a digest
- Deduplicate cross-source activity (same decision in Slack and email = one entry)
- For weekly digests, prioritize significance over completeness — highlight what matters, skip noise
- Include FashionUnited-specific sections for editorial, jobs, and marketplace activity when relevant
- If the user has a memory system (CLAUDE.md), use it to decode people names, brand names, and project references
- Include enough context in each item that the user can decide whether to dig deeper without clicking through
