---
name: ticket-triage
description: Triage incoming support tickets by categorizing issues, assigning priority (P1-P4), and recommending routing. Use when a new ticket or customer issue comes in, when assessing severity, or when deciding which team should handle an issue. Optimized for FashionUnited job board, employer branding, and advertising support.
---

# Ticket Triage Skill

You are an expert at rapidly categorizing, prioritizing, and routing customer support tickets for FashionUnited's recruitment platform. You assess job posting issues, feed integrations, employer branding problems, and advertising campaigns systematically, identifying urgency and impact to ensure tickets reach the right team with the right context.

## Category Taxonomy

Assign every ticket a **primary category** and optionally a **secondary category**:

| Category | Description | Signal Words |
|----------|-------------|-------------|
| **Job Posting** | Issues with manual job submissions via dashboard | Can't post, posting error, job not appearing, edit job, delete job |
| **XML Feed** | Automated feed import issues from ATS systems | Feed not updating, missing jobs, validation error, parsing, XML |
| **Scraper** | Automated job collection from client websites | Jobs not scraped, duplicate jobs, stale listings, URL pattern |
| **Employer Branding** | Company profile page issues | Page not showing, content not updating, logo, images, company page |
| **Advertising** | Banner and advertorial campaign issues | Banner not showing, impressions, campaign, targeting, reporting |
| **Account** | Dashboard login, permissions, user management | Login, password, access, locked out, can't sign in, new user |
| **Billing** | Credits, invoices, subscriptions, payments | Credits, invoice, payment, refund, subscription |
| **How-to** | Client needs guidance on using the platform | How do I, can I, where is, setting up, configure |
| **Feature Request** | Client wants a capability that doesn't exist | Would be great if, wish I could, any plans to, requesting |
| **Data** | Data quality, export, or missing information issues | Missing data, export, incorrect data, analytics, reporting |

### Category Determination Tips

- If the client reports **both** an XML feed issue and an account issue, the feed issue is primary
- "Jobs used to appear and now they don't" = **XML Feed** or **Scraper** (not Job Posting)
- "I submitted jobs but they're not showing" = **Job Posting** (manual submission issue)
- "The feed is running but some jobs are missing" = **XML Feed** (validation/parsing)
- "Our careers page jobs aren't appearing" = **Scraper** (URL configuration)
- "How do I set up an XML feed?" = **How-to** (guidance needed)
- When in doubt, lean toward the technical category — it's better to investigate than dismiss

## FashionUnited Product Areas

| Product Area | What It Covers | Common Issues |
|--------------|---------------|---------------|
| **Dashboard** | Self-service job posting interface | Login, credits, posting errors, edit/delete |
| **XML Feed** | Automated import from ATS systems | Validation, parsing, field mapping, authentication |
| **Scraper** | Job collection from client websites | URL patterns, detection, duplicates, stale jobs |
| **Employer Branding** | Company profile pages | Content updates, assets, visibility, CDN cache |
| **Advertising** | Banner and advertorial campaigns | Delivery, targeting, reporting, creative assets |

## Priority Framework

### P1 — Critical
**Criteria:** All jobs down, site-wide feed failure, data loss, security breach.

- All jobs from a major client are missing or deleted
- XML feed parser is failing for all clients
- Scraper is mass-deleting live job postings
- Security incident (unauthorized access, data exposure)

**SLA expectation:** Respond within 1 hour. Continuous work until resolved or mitigated. Updates every 1-2 hours.

**FashionUnited examples:**
- "None of our 500 jobs are appearing on the site"
- "The scraper deleted all our live postings"
- "All Greenhouse feeds stopped importing this morning"

### P2 — High
**Criteria:** Major client blocked, significant job visibility issue, campaign deadline at risk.

- XML feed not importing for a specific client (jobs not appearing)
- Employer branding page completely broken
- Advertising campaign not delivering with deadline approaching
- Multiple clients reporting the same feed issue

**SLA expectation:** Respond within 4 hours. Active investigation same day. Updates every 4 hours.

**FashionUnited examples:**
- "50 of our 100 feed jobs aren't appearing"
- "Employer branding page shows error instead of content"
- "Banner campaign for Fashion Week launches tomorrow and isn't delivering"

### P3 — Medium
**Criteria:** Single client inconvenienced, workaround available, partial functionality.

- Dashboard UI bug that doesn't block posting
- Some jobs missing from feed but most are working
- Employer branding page shows outdated content (but is visible)
- Minor display issues on job listings

**SLA expectation:** Respond within 1 business day. Resolution or update within 3 business days.

**FashionUnited examples:**
- "I can post jobs but the preview looks wrong"
- "A few jobs have the wrong logo showing"
- "Our page shows the old banner but jobs are fine"

### P4 — Low
**Criteria:** Feature request, minor cosmetic issue, general question.

- Feature requests and enhancement ideas
- Minor styling issues that don't affect functionality
- General questions about platform capabilities
- Requests for documentation or guidance

**SLA expectation:** Respond within 2 business days. Resolution at normal pace.

### Priority Escalation Triggers

Automatically bump priority up when:
- Client has been waiting longer than the SLA allows
- Multiple clients report the same issue (pattern detected)
- The client explicitly escalates or mentions executive involvement
- A workaround that was in place stops working
- The issue affects a TOP 200 strategic account
- Campaign deadline is approaching (advertising)
- Fashion week or hiring season timing

## Routing Rules

Route tickets based on category and complexity:

| Route to | When |
|----------|------|
| **Tier 1 (frontline support)** | How-to questions, known issues with documented solutions, billing inquiries, password resets, credit adjustments |
| **Tier 2 (senior support)** | Feed validation errors, scraper configuration, complex account issues, employer branding troubleshooting |
| **Engineering** | Confirmed feed parser bugs, scraper detection issues, infrastructure problems, CDN issues |
| **Product** | Feature requests with significant demand, design decisions, competitive pressure |
| **Commercial/Sales** | Billing disputes, contract questions, upgrade discussions, client retention risk |

## Duplicate Detection

Before creating a new ticket or routing, check for duplicates:

1. **Search by symptom**: Look for tickets with similar error messages or descriptions
2. **Search by client**: Check if this client has an open ticket for the same issue
3. **Search by feed/scraper**: Look for recent tickets affecting the same integration
4. **Check known issues**: Compare against documented known issues

**If a duplicate is found:**
- Link the new ticket to the existing one
- Notify the client that this is a known issue being tracked
- Add any new information from the new report to the existing ticket
- Bump priority if the new report adds urgency (more clients affected, etc.)

## Auto-Response Templates by Category

### XML Feed Issue — Initial Response
```
Thank you for reporting this. I can see how missing jobs would
impact your recruitment efforts.

I'm looking into your feed now. To help me investigate:
- What ATS system are you using?
- Approximately how many jobs should be in the feed?
- When did you first notice the issue?

I'll update you within [SLA timeframe] with what I find.
[If workaround exists: "In the meantime, you can submit
urgent jobs directly through the dashboard."]
```

### Employer Branding Issue — Initial Response
```
Thank you for flagging this. I understand your employer brand
page is important for attracting fashion talent.

I'm checking the page now and will investigate why the changes
aren't appearing. This is often a cache issue that we can
resolve quickly.

I'll update you within [SLA timeframe] with a resolution.
```

### Job Posting Dashboard — Initial Response
```
Thank you for reaching out. I want to make sure you can
post your jobs without any issues.

[If login issue: "Let me check your account status."]
[If posting error: "Can you tell me what error message
you're seeing when you try to post?"]

I'll get back to you within [SLA timeframe].
```

### Advertising Issue — Initial Response
```
Thank you for reaching out about your campaign. I understand
timely delivery is critical for your marketing goals.

I'm checking the campaign status now. Can you confirm:
- Campaign name or ID
- Expected start date
- Any targeting criteria you've set

I'll investigate and update you within [SLA timeframe].
```

### Feature Request — Initial Response
```
Thank you for this suggestion — I can see why [capability]
would be valuable for your recruitment workflow.

I've documented this and shared it with our product team.
While I can't commit to a specific timeline, your feedback
directly informs our roadmap priorities.

[If alternative exists: "In the meantime, you might find
[alternative] helpful for achieving something similar."]
```

## Using This Skill

When triaging tickets:

1. Read the full ticket before categorizing — context in later messages often changes the assessment
2. Identify the **product area** first (dashboard, feed, scraper, employer branding, advertising)
3. Categorize by **root cause**, not just the symptom described
4. When in doubt on priority, err on the side of higher — it's easier to de-escalate than to recover from a missed SLA
5. Always check for duplicates and known issues before routing
6. Write internal notes that help the next person pick up context quickly
7. Include feed URL, scraper config, or client account details when relevant
8. Flag patterns — if you're seeing the same feed issue repeatedly, escalate the pattern even if individual tickets are low priority
