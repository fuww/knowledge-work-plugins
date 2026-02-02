---
description: Multi-source research on a customer question or topic with source attribution
argument-hint: "<question or topic>"
---

# Research

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Multi-source research on a customer question, platform topic, or account-related inquiry. Synthesizes findings from all available sources with clear attribution. Optimized for FashionUnited job board, XML feed, and employer branding research.

## Usage

```
/research <question or topic>
```

Examples:
- `/research Does our XML feed support custom fields for applicant source tracking?`
- `/research What are the required fields for XML job feed validation?`
- `/research Has this client reported feed issues before? What was the resolution?`
- `/research Best practices for ATS integration with FashionUnited`
- `/research How does the scraper handle jobs with no application URL?`

## Workflow

### 1. Parse the Research Request

Identify what type of research is needed:
- **Platform question**: Something about FashionUnited's capabilities (e.g., "Does our XML feed support salary ranges?")
- **Issue investigation**: Background on a reported problem (e.g., "Has this feed validation error been reported before?")
- **Account context**: History with a specific client (e.g., "What did we tell this client about their scraper config?")
- **Integration research**: ATS-specific questions (e.g., "How does Greenhouse format XML feeds?")

### 2. Search Available Sources

Search in priority order, adapting to what is connected:

**Tier 1 — Internal Documentation (highest confidence):**
- ~~knowledge base (if connected): feed specs, integration guides, troubleshooting docs
- ~~cloud storage: internal documents, XML schemas, client-specific configs
- ~~CRM notes: previous answers to similar questions, account context

**Tier 2 — Team Communications:**
- ~~chat: search for the topic in relevant channels; check if teammates have discussed or answered this before
- ~~email: search for previous correspondence on this topic
- ~~CRM (if connected): check if this has been asked/resolved before for this client

**Tier 3 — External Sources:**
- Web search: ATS documentation, integration guides, XML standards
- Vendor documentation: Workday, Greenhouse, Lever, etc.

### 3. Synthesize Findings

Compile results into a structured research brief:

```
## Research: [Question/Topic]

### Answer
[Clear, direct answer to the question — lead with the bottom line]

**Confidence:** [High / Medium / Low]
[Explain what drives the confidence level]

### Key Findings

**From [Source 1]:**
- [Finding with specific detail]
- [Finding with specific detail]

**From [Source 2]:**
- [Finding with specific detail]

### Context & Nuance
[Any caveats, edge cases, or additional context that matters]

### Sources
1. [Source name/link] — [what it contributed]
2. [Source name/link] — [what it contributed]
3. [Source name/link] — [what it contributed]

### Gaps & Unknowns
- [What couldn't be confirmed]
- [What might need verification from engineering]

### Recommended Next Steps
- [Action if the answer needs to go to a client]
- [Action if further research is needed]
- [Who to consult for verification if needed]
```

### 4. Handle Insufficient Sources

If no connected sources yield results:

- Perform web research on the topic
- Ask the user for internal context:
  - "I couldn't find this in connected sources. Do you have internal docs about XML feed specs?"
  - "Has the engineering team discussed this? Any ~~chat channels I should check?"
  - "Is there a product owner who would know the answer?"
- Be transparent about limitations:
  - "This answer is based on web research only — please verify against internal documentation before sharing with the client."
  - "I found a possible answer but couldn't confirm it from an authoritative internal source."

### 5. Client-Facing Considerations

If the research is to answer a client question:

- Flag if the answer involves platform roadmap, pricing, or custom development
- Note if the answer differs from what may have been communicated previously
- Suggest appropriate caveats for the client-facing response
- Offer to draft the client response: "Want me to draft a response to the client based on these findings?"

### 6. Knowledge Capture

After research is complete, suggest capturing the knowledge:

- "Should I save these findings to your knowledge base for future reference?"
- "Want me to create a FAQ entry based on this research?"
- "This might be worth documenting — should I draft a runbook entry for XML feed troubleshooting?"

This helps build institutional knowledge and reduces duplicate research effort across the team.
