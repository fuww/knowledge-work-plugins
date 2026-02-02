---
description: Review content against FashionUnited brand voice, style guide, and editorial ethics
argument-hint: "<content to review>"
---

# Brand Review

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Review marketing content against FashionUnited brand voice, style guidelines, editorial ethics, and messaging standards. Flag deviations and provide specific improvement suggestions.

## Trigger

User runs `/brand-review` or asks to review, check, or audit content against brand guidelines.

## Inputs

1. **Content to review** — accept content in any of these forms:
   - Pasted directly into the conversation
   - A file path or Google Workspace document reference
   - A URL to a published page
   - Multiple pieces for batch review

2. **Content type** (helps calibrate review):
   - News article
   - Newsletter
   - Social media post
   - Press release
   - Partnership content

3. **Market/Language** (optional) — specify if reviewing for a specific market (e.g., German, French)

## FashionUnited Brand Guidelines

FashionUnited brand voice is pre-configured with these attributes:

| Attribute | We Are | We Are Not |
|-----------|--------|------------|
| Authoritative | Expert, well-researched, industry-leading | Arrogant, dismissive, inaccessible |
| Accessible | Clear, jargon-free, welcoming | Dumbed-down, simplistic, condescending |
| Professional | Business-appropriate, polished, reliable | Stuffy, overly formal, impersonal |
| Global | Culturally aware, inclusive, internationally minded | Regionally biased, insensitive, parochial |
| Timely | Current, news-driven, relevant | Stale, dated, out of touch |

## Review Process

### With Brand Guidelines Configured

Evaluate the content against each of these dimensions:

#### Voice and Tone
- Does the content match the defined brand voice attributes?
- Is the tone appropriate for the content type and audience?
- Are there shifts in voice that feel inconsistent?
- Flag specific sentences or phrases that deviate with an explanation of why

#### Terminology and Language
- Are preferred brand terms used correctly?
- Are any "avoid" terms or phrases present?
- Is jargon level appropriate for the target audience?
- Are product names, feature names, and branded terms used correctly (capitalization, formatting)?

#### Messaging Pillars
- Does the content align with defined messaging pillars or value propositions?
- Are claims consistent with approved messaging?
- Is the content reinforcing or contradicting brand positioning?

#### Style Guide Compliance
- Grammar and punctuation per style guide (e.g., Oxford comma, title case vs. sentence case)
- Formatting conventions (headers, lists, emphasis)
- Number formatting, date formatting
- Acronym usage (defined on first use?)

### Without Brand Guidelines (Generic Review)

Evaluate the content for:

#### Clarity
- Is the main message clear within the first paragraph?
- Are sentences concise and easy to understand?
- Is the structure logical and easy to follow?
- Are there ambiguous statements or unclear references?

#### Consistency
- Is the tone consistent throughout?
- Are terms used consistently (no switching between synonyms for the same concept)?
- Is formatting consistent (headers, lists, capitalization)?

#### Professionalism
- Is the content free of typos, grammatical errors, and awkward phrasing?
- Is the tone appropriate for the intended audience?
- Are claims supported or substantiated?

### FashionUnited Editorial Ethics (Always Checked)

All content must adhere to FashionUnited editorial standards:

| Standard | Check For |
|----------|-----------|
| Objectivity | Balanced coverage, fact-based reporting, no promotional bias in news content |
| Attribution | Clear sourcing for all quotes and data, proper credit for images |
| Separation | Clear distinction between editorial and sponsored/partner content |
| Embargoes | Respect for agreed publication dates with partners and sources |
| Conflicts | No undisclosed relationships that could bias coverage |

### Legal and Compliance Flags (Always Checked)

Regardless of content type, flag:
- **Unsubstantiated claims** — superlatives ("best", "fastest", "only") without evidence or qualification
- **Missing attribution** — quotes, data, or images without proper sourcing
- **Comparative claims** — comparisons to competitors that could be challenged
- **Sponsored content labeling** — partner or advertiser content not clearly labeled
- **Testimonial issues** — quotes or endorsements without attribution or disclosure
- **Copyright concerns** — content that appears to be closely paraphrased from other sources or images without proper licensing

## Output Format

Present the review as:

### Summary
- Overall assessment: how well the content aligns with brand standards (or general quality)
- 1-2 sentence summary of the biggest strengths
- 1-2 sentence summary of the most important improvements

### Detailed Findings

For each issue found, provide:

| Issue | Location | Severity | Suggestion |
|-------|----------|----------|------------|

Where severity is:
- **High** — contradicts brand voice, contains compliance risk, or significantly undermines messaging
- **Medium** — inconsistent with guidelines but not damaging
- **Low** — minor style or preference issue

### Revised Sections

For the top 3-5 highest-severity issues, provide a before/after showing the original text and a suggested revision.

### Legal/Compliance Flags

List any legal or compliance concerns separately with recommended actions.

## After Review

Ask: "Would you like me to:
- Revise the full content with these suggestions applied?
- Focus on fixing just the high-severity issues?
- Review additional content against the same guidelines?
- Adapt this content for a different language market?
- Check if this content is suitable for both editorial and newsletter distribution?"
