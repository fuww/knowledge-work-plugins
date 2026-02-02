---
description: Draft fashion news articles, newsletters, social media posts, press releases, and case studies
argument-hint: "<content type and topic>"
---

# Draft Content

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Generate marketing content drafts tailored to a specific content type, audience, and brand voice. This command is configured for FashionUnited's editorial standards and multi-language content operations.

## Trigger

User runs `/draft-content` or asks to draft, write, or create marketing content.

## Inputs

Gather the following from the user. If not provided, ask before proceeding:

1. **Content type** — one of:
   - News article (fashion industry news, trend reports, company announcements)
   - Social media post (specify platform: LinkedIn, Twitter/X, Instagram, Facebook)
   - Newsletter (market-specific editorial digest)
   - Press release
   - Case study (partnership success story, advertiser spotlight)
   - Trade fair coverage (event preview, daily recap, trend report)

2. **Topic** — the subject or theme of the content

3. **Target audience** — who this content is for (fashion professionals, recruiters, brands, retailers, buyers, job seekers)

4. **Key messages** — 2-4 main points or takeaways to communicate

5. **Tone** — FashionUnited brand voice is authoritative yet accessible by default. Specify if different tone needed.

6. **Length** — target word count or format constraint (e.g., "800 words", "280 characters", "newsletter section")

7. **Language/Market** (optional) — specify if content is for a specific market (e.g., German, French, Spanish) for localization guidance

## Brand Voice

FashionUnited brand voice is pre-configured with these attributes:
- **Authoritative**: Expert industry knowledge, well-researched content
- **Accessible**: Clear language, avoiding unnecessary jargon
- **Professional**: Business-appropriate tone for B2B audience
- **Global**: Culturally aware, inclusive language
- **Timely**: Current, relevant, news-driven

Apply FashionUnited brand voice automatically unless the user specifies different requirements.

## Editorial Ethics

All content must adhere to FashionUnited editorial standards:
- Journalistic objectivity and fact-based reporting
- Clear attribution of sources and quotes
- Separation of news and sponsored content (clearly label sponsored/partner content)
- Respect for embargoes and exclusive access agreements
- No conflicts of interest

## Content Generation by Type

### News Article
- Newsworthy headline (provide 2-3 options) — factual, specific, action-oriented
- Lead paragraph answering who, what, when, where, why
- Body sections with supporting details, quotes, context
- Industry expert perspectives where relevant
- Clear attribution of all sources
- Related articles or context links
- SEO considerations: primary keyword in headline and lead, fashion industry terminology

### Trade Fair Coverage
- Event name, dates, location in the headline or subhead
- Event context and significance to the fashion industry
- Key exhibitors, trends, or announcements
- Quotes from organizers, exhibitors, or attendees
- Photo gallery recommendations
- Next event dates or call to action

### Blog Post
- Engaging headline (provide 2-3 options)
- Introduction with a hook (question, statistic, bold statement, or story)
- 3-5 organized sections with descriptive subheadings
- Supporting points, examples, or data references in each section
- Conclusion with a clear call to action
- SEO considerations: suggest a primary keyword, include it in the headline and first paragraph, use related keywords in subheadings

### Social Media Post
- Platform-appropriate format and length
- Hook in the first line
- Hashtag suggestions (3-5 relevant fashion industry hashtags)
- Call to action or engagement prompt
- Emoji usage appropriate to brand and platform (minimal for FashionUnited)
- If LinkedIn: professional framing, industry insights, paragraph breaks for readability
- If Twitter/X: concise, punchy, news-driven, within character limit
- If Instagram: visual-first language, fashion imagery focus, hashtag block
- Schedule via Social Champ for optimal posting times

### Newsletter (Mailchimp)
- Subject line (provide 2-3 options with open-rate considerations)
- Preview text (compelling, not repeating subject line)
- Market-specific greeting appropriate to the language/region
- Featured story with compelling headline and brief summary
- Additional story links with one-line descriptions
- Job board highlights (if relevant to that market's newsletter)
- Partner content section (clearly labeled)
- Social media follow links
- Unsubscribe and preference management links
- Note: Content will be distributed via Mailchimp to market-specific subscriber lists

### Landing Page Copy
- Headline and subheadline
- Hero section copy
- Value propositions (3-4 benefit-driven bullets or sections)
- Social proof placeholder (suggest testimonial or stat placement)
- Primary and secondary CTAs
- FAQ section suggestions
- SEO: meta title and meta description suggestions

### Press Release
- Headline following press release conventions
- Dateline and location
- Lead paragraph (who, what, when, where, why)
- Supporting quotes (provide placeholder guidance)
- Company boilerplate placeholder
- Media contact placeholder
- Standard press release formatting

### Case Study / Partnership Success Story
- Title emphasizing the result or partnership value
- Partner overview (company type, market position, goals)
- Challenge or opportunity section
- Solution section (partnership details, content produced, campaigns run)
- Results section with metrics (traffic, engagement, leads, brand awareness)
- Partner quote placeholder
- Call to action (become a partner, advertise with FashionUnited)
- Suitable for trade fair partnerships, federation collaborations, advertiser spotlights

## SEO Considerations (for web content)

For blog posts, landing pages, and other web-facing content:
- Suggest a primary keyword based on the topic
- Recommend keyword placement: headline, first paragraph, subheadings, meta description
- Suggest internal and external linking opportunities
- Recommend a meta description (under 160 characters)
- Note image alt text opportunities

## Output

Present the draft with clear formatting. After the draft, include:
- A brief note on FashionUnited brand voice application
- Any SEO recommendations (for web content)
- Multi-language considerations if applicable (key terms that may need localization)
- Suggestions for next steps (e.g., "Review with editor", "Add source quotes", "Pair with imagery from photo archive")

Ask: "Would you like me to:
- Revise any section or adjust the tone?
- Create a variation for a different channel (newsletter, social)?
- Adapt this content for a different language market?
- Schedule social promotion via Social Champ?"
