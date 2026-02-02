---
description: Design newsletter sequences for subscriber onboarding, re-engagement, or event follow-up
argument-hint: "[sequence type]"
---

# Email Sequence

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Design and draft complete email sequences with full copy, timing, branching logic, and performance benchmarks. Configured for FashionUnited's multi-language newsletter operations via Mailchimp.

## Trigger

User runs `/email-sequence` or asks to create, design, build, or draft an email sequence, drip campaign, nurture flow, or onboarding series.

## FashionUnited Newsletter Context

FashionUnited operates market-specific newsletters in 9 languages:
- **Daily newsletters**: English, German, French, Spanish, Italian, Dutch
- **Weekly newsletters**: Portuguese, Russian, Chinese

Common sequence types for FashionUnited:
- **Subscriber onboarding**: Welcome new subscribers and drive engagement
- **Re-engagement**: Win back inactive subscribers
- **Event follow-up**: Post-trade fair or fashion week engagement
- **Partnership welcome**: Onboard new federation or school partnership subscribers
- **Job board promotion**: Introduce job seeker features to newsletter subscribers

## Inputs

Gather the following from the user. If not provided, ask before proceeding:

1. **Sequence type** — one of:
   - Subscriber onboarding
   - Re-engagement
   - Event follow-up (trade fair, fashion week)
   - Partnership welcome
   - Job board promotion
   - Product launch (new FashionUnited feature)
   - Educational drip (fashion industry insights)

2. **Goal** — what the sequence should achieve (e.g., increase newsletter engagement, drive traffic to job board, convert to premium subscription)

3. **Audience** — who receives this sequence:
   - New subscribers (by market/language)
   - Inactive subscribers (define inactivity threshold)
   - Trade fair attendees
   - Federation members
   - Fashion students
   - Recruiters/HR professionals

4. **Market/Language** — which FashionUnited markets and languages (affects subject line localization, send times, content focus)

5. **Number of emails** (optional) — if not specified, recommend based on sequence type

6. **Timing/cadence preferences** (optional) — default is optimized for newsletter subscriber expectations

7. **Additional context** (optional):
   - Partner organizations involved
   - Event or campaign tie-in
   - Featured content or articles to promote
   - Job board features to highlight

## Process

### 1. Sequence Strategy

Before drafting any emails, define the overall sequence architecture:

- **Narrative arc** — what story does this sequence tell across all emails? What is the emotional and logical progression from first email to last?
- **Journey mapping** — map each email to a stage of the buyer or user journey (awareness, consideration, decision, activation, expansion)
- **Escalation logic** — how does the intensity, urgency, or value of each email build on the previous one?
- **Success definition** — what specific action signals that the sequence has done its job and the recipient should exit?

### 2. Individual Email Design

For each email in the sequence, produce:

#### Subject Line
- Provide 2-3 options per email
- Vary approaches: curiosity, benefit-driven, urgency, personalization, question-based
- Keep under 50 characters where possible; note preview behavior on mobile

#### Preview Text
- 40-90 characters that complement (not repeat) the subject line
- Should add context or intrigue that increases open likelihood

#### Email Purpose
- One sentence explaining why this email exists and what it moves the recipient toward

#### Body Copy
- Full draft ready to use
- Clear hierarchy: hook, body, CTA
- Short paragraphs (2-3 sentences max)
- Scannable formatting with bold key phrases where appropriate
- Personalization tokens where relevant (e.g., first name, company name, product used)

#### Primary CTA
- Button text and destination
- One primary CTA per email (secondary CTA only if appropriate for the sequence stage)

#### Timing
- Days after the trigger event or after the previous email
- Note if timing should adjust based on engagement (e.g., "send sooner if they opened but did not click")

#### Segment/Condition Notes
- Who receives this email vs. who skips it
- Any behavioral or attribute-based conditions (e.g., "only send to users who have not completed setup")

### 3. Sequence Logic

Define the flow control for the sequence:

- **Branching conditions** — alternate paths based on engagement. For example:
  - "If opened email 2 but did not click CTA, send email 2b (softer re-ask) instead of email 3"
  - "If clicked CTA in email 1, skip email 2 and go directly to email 3"
- **Exit conditions** — when a recipient converts (completes the desired action), remove them from the sequence. Define what "conversion" means for this sequence.
- **Re-entry rules** — can someone re-enter the sequence? Under what conditions? (e.g., "if a user churns again 90 days later, re-enter the win-back sequence")
- **Suppression rules** — do not send if the recipient is already in another active sequence, has unsubscribed from marketing, or has contacted support in the last 48 hours

### 4. Performance Benchmarks

Provide expected benchmarks based on the sequence type so the user can set targets:

| Metric | Onboarding | Lead Nurture | Re-engagement | Win-back |
|--------|-----------|--------------|---------------|----------|
| Open rate | 50-70% | 20-30% | 15-25% | 15-20% |
| Click-through rate | 10-20% | 3-7% | 2-5% | 2-4% |
| Conversion rate | 15-30% | 2-5% | 3-8% | 1-3% |
| Unsubscribe rate | <0.5% | <0.5% | 1-2% | 1-3% |

Adjust benchmarks based on industry and audience if the user has provided that context.

## Sequence Type Templates

Use these as starting frameworks. Adapt length and content based on the user's goal and audience.

**Onboarding (5-7 emails over 14-21 days):**
Welcome and set expectations -- Quick win to demonstrate value -- Core feature deep dive -- Advanced feature or integration -- Social proof and community -- Check-in and feedback request -- Upgrade prompt or next steps

**Lead Nurture (4-6 emails over 3-4 weeks):**
Value-first educational content -- Pain point identification -- Solution positioning with proof -- Social proof and results -- Soft CTA (trial, demo, resource) -- Direct CTA (buy, book, sign up)

**Re-engagement (3-4 emails over 10-14 days):**
"We miss you" with a compelling reason to return -- Value reminder highlighting what they are missing -- Incentive or exclusive offer -- Last chance with clear deadline

**Win-back (3-5 emails over 30 days):**
Friendly check-in asking what went wrong -- What is new since they left -- Special offer or incentive to return -- Feedback request (even if they do not come back) -- Final goodbye with door open

**Product Launch (4-6 emails over 2-3 weeks):**
Teaser or pre-announcement -- Launch announcement with full details -- Feature spotlight or use case -- Social proof and early results -- Limited-time offer or bonus -- Last chance or reminder

**Event Follow-up (3-4 emails over 7-10 days):**
Thank you with key takeaways or recordings -- Resource roundup from the event -- Related offer or next step -- Feedback survey

**Upgrade/Upsell (3-5 emails over 2-3 weeks):**
Usage milestone or success celebration -- Feature gap or limitation they are hitting -- Upgrade benefits with proof -- Limited-time incentive -- Direct comparison of plans

**Educational Drip (5-8 emails over 4-6 weeks):**
Introduction and what they will learn -- Lesson 1: foundational concept -- Lesson 2: intermediate concept -- Lesson 3: advanced concept -- Practical application or exercise -- Resource roundup -- Graduation and next steps

## Tool Integration

### Mailchimp (FashionUnited's email marketing platform)
- Reference how to set up the sequence as a Customer Journey in Mailchimp
- Use Mailchimp's features: send time optimization, conditional content, A/B testing
- Map branching logic to Mailchimp's journey builder
- Note list/audience segmentation by market and language
- Reference merge tags for personalization: `*|FNAME|*`, `*|LANGUAGE|*`, etc.

### Multi-Language Considerations
- Subject lines may need localization for each market
- Consider send time optimization per timezone
- Content may need market-specific adaptations (local events, market news)
- Use Mailchimp segments to manage multi-language audiences

### Mailchimp Setup Checklist
1. Create new Customer Journey in Mailchimp
2. Select audience and entry trigger
3. Add emails with specified delays
4. Configure conditional splits for engagement-based branching
5. Set up A/B tests for subject lines
6. Enable send time optimization
7. Set up tracking and reporting

## Output

Present the complete sequence with the following sections:

### Sequence Overview Table

| # | Subject Line | Purpose | Timing | Primary CTA | Condition |
|---|-------------|---------|--------|-------------|-----------|

### Full Email Drafts
Each email with subject line options, preview text, purpose, body copy, CTA, timing, and segment notes.

### Sequence Flow Diagram
A text-based diagram showing the email flow, branching paths, and exit points. Use a clear format such as:

```
[Trigger] --> Email 1 (Day 0)
                |
          Opened? --Yes--> Email 2 (Day 3)
                |              |
                No        Clicked CTA? --Yes--> [EXIT: Converted]
                |              |
                v              No
          Email 1b (Day 2)     |
                |              v
                +--------> Email 3 (Day 7)
                               |
                               v
                          Email 4 (Day 10)
                               |
                          [EXIT: Sequence complete]
```

### Branching Logic Notes
Summary of all conditions, exits, and suppressions in a reference list.

### A/B Test Suggestions
- 2-3 recommended A/B tests (subject lines, CTA text, send time, email length)
- What to test, how to split, and how to measure the winner

### Metrics to Track
- Primary conversion metric for the sequence
- Per-email metrics: open rate, CTR, unsubscribe rate
- Sequence-level metrics: overall conversion rate, time to conversion, drop-off points
- Recommended review cadence (e.g., "Review performance weekly for the first month, then monthly")

## After the Sequence

Ask: "Would you like me to:
- Revise the copy or tone for any specific email?
- Add a branching path for a specific scenario?
- Create a localized variation for another market/language?
- Draft the A/B test variants for the subject lines?
- Build a companion sequence (e.g., re-engagement for subscribers who don't convert)?
- Generate the Mailchimp setup instructions for this sequence?"
