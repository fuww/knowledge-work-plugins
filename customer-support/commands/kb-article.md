---
description: Draft a knowledge base article from a resolved issue or common question
argument-hint: "<resolved issue or ticket>"
---

# KB Article

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Draft a publish-ready knowledge base article from a resolved support issue, common question, or documented workaround. Structures the content for searchability and self-service. Optimized for FashionUnited's job board, XML feed, and employer branding documentation.

## Usage

```
/kb-article <resolved issue, ticket reference, or topic description>
```

Examples:
- `/kb-article How to troubleshoot XML feed validation errors — resolved this for 4 clients this month`
- `/kb-article Common question: why are some jobs from my feed not appearing?`
- `/kb-article How to set up a new XML feed integration with Greenhouse`
- `/kb-article Known issue: employer branding page images not updating after upload`
- `/kb-article How to configure scraper URL patterns for multi-location job sites`

## Workflow

### 1. Understand the Source Material

Parse the input to identify:

- **What was the problem?** The original issue, question, or error
- **What was the solution?** The resolution, workaround, or answer
- **Product area**: Job posting, XML feed, scraper, employer branding, or advertising?
- **Who does this affect?** Client type, integration type, or configuration
- **How common is this?** One-off or recurring issue
- **What article type fits best?** Use the article types from the **knowledge-management** skill (how-to, troubleshooting, FAQ, known issue, reference)

If a ticket reference is provided, look up the full context:

- **~~CRM**: Pull the ticket thread, resolution, and any internal notes
- **~~knowledge base**: Check if a similar article already exists (update vs. create new)
- **~~project tracker**: Check if there's a related bug or feature request

### 2. Draft the Article

Using the article structure and formatting standards from the **knowledge-management** skill:

- Follow the template for the chosen article type (how-to, troubleshooting, FAQ, known issue, or reference)
- Apply the searchability best practices: client-language title, plain-language opening sentence, exact error messages, common synonyms
- Keep it scannable: headers, numbered steps, short paragraphs
- Include FashionUnited-specific context: dashboard paths, feed validation rules, ATS-specific notes

### 3. Generate the Article

Present the draft with metadata:

```
## KB Article Draft

**Title:** [Article title]
**Type:** [How-to / Troubleshooting / FAQ / Known Issue / Reference]
**Category:** [Job Posting / XML Feeds / Scraper / Employer Branding / Advertising]
**Tags:** [Searchable tags — include ATS names, error messages, product areas]
**Audience:** [All clients / Enterprise / Recruitment agencies / Brands]

---

[Full article content — using the appropriate template
from the knowledge-management skill]

---

### Publishing Notes
- **Source:** [Ticket #, client conversation, or internal discussion]
- **Existing articles to update:** [If this overlaps with existing content]
- **Review needed from:** [SME or team if technical accuracy needs verification]
- **Suggested review date:** [When to revisit for accuracy]
```

### 4. FashionUnited-Specific Article Templates

**XML Feed Troubleshooting:**
```
# [Error or symptom] when importing XML feed

## Symptoms
- [What the client sees]
- [Error message if applicable]

## Common Causes
1. [Cause 1] — [How to identify]
2. [Cause 2] — [How to identify]

## Solution
### For [Cause 1]
[Steps]

### For [Cause 2]
[Steps]

## Verification
[How to confirm the fix worked]

## ATS-Specific Notes
- **Greenhouse:** [Notes]
- **Workday:** [Notes]
- **Lever:** [Notes]
```

**Employer Branding How-To:**
```
# How to [task] on your employer branding page

## Prerequisites
- [What's needed before starting]

## Steps
1. [Step with specific dashboard path]
2. [Step]
3. [Step]

## Verification
[How to confirm success — what they should see]

## Common Issues
- [Issue]: [Fix]

## Content Guidelines
[FashionUnited-specific content requirements or recommendations]
```

### 5. Offer Next Steps

After generating the article:
- "Want me to check if a similar article already exists in your ~~knowledge base?"
- "Should I adjust the technical depth for a different audience?"
- "Want me to draft a companion article (e.g., a how-to to go with this troubleshooting guide)?"
- "Should I create an internal-only version with additional technical detail?"
- "Want me to add ATS-specific sections for other integrations?"
