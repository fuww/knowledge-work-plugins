---
description: Draft a professional customer-facing response tailored to the situation and relationship
argument-hint: "<situation description>"
---

# Draft Response

> If you see unfamiliar placeholders or need to check which tools are connected, see [CONNECTORS.md](../CONNECTORS.md).

Draft a professional, customer-facing response tailored to the situation, customer relationship, and communication context. Optimized for FashionUnited's job board, employer branding, and advertising clients.

## Usage

```
/draft-response <context about the customer question, issue, or request>
```

Examples:
- `/draft-response Recruitment agency asking when their XML feed will be fixed — been 3 days`
- `/draft-response Fashion brand escalation — employer branding page still shows old content`
- `/draft-response Responding to a feature request for bulk job editing we won't be building`
- `/draft-response Client asking why their banner campaign underperformed compared to forecast`
- `/draft-response New client onboarding — explaining how XML feed validation works`

## Workflow

### 1. Understand the Context

Parse the user's input to determine:

- **Client**: Who is the communication for? Fashion brand, retailer, recruitment agency?
- **Product area**: Job posting, XML feed, scraper, employer branding, or advertising?
- **Situation type**: Question, issue, escalation, announcement, negotiation, bad news, good news, follow-up
- **Urgency**: Is this time-sensitive? Jobs not appearing? Campaign deadline?
- **Channel**: Email, support ticket, chat, or other (adjust formality accordingly)
- **Relationship stage**: New client, established, frustrated/escalated

### 2. Research Context

Gather relevant background from available sources:

**~~email:**
- Previous correspondence with this client on this topic
- Any commitments or timelines previously shared
- Tone and style of the existing thread

**~~chat:**
- Internal discussions about this client or topic
- Any guidance from product or engineering
- Similar situations and how they were handled

**~~CRM (if connected):**
- Account details and plan level
- Contact information and key stakeholders
- Previous escalations or sensitive issues

**~~knowledge base:**
- Official documentation or help articles to reference
- Product roadmap information (if shareable)
- Policy or process documentation

### 3. Generate the Draft

Produce a response tailored to the situation:

```
## Draft Response

**To:** [Client contact name]
**Re:** [Subject/topic]
**Channel:** [Email / Ticket / Chat]
**Tone:** [Empathetic / Professional / Technical / Celebratory / Candid]

---

[Draft response text]

---

### Notes for You (internal — do not send)
- **Why this approach:** [Rationale for tone and content choices]
- **Things to verify:** [Any facts or commitments to confirm before sending]
- **Risk factors:** [Anything sensitive about this response]
- **Follow-up needed:** [Actions to take after sending]
- **Escalation note:** [If this should be reviewed by someone else first]
```

### 4. Situation-Specific Approaches

**Answering a platform question:**
- Lead with the direct answer
- Provide relevant documentation links
- Offer to connect them with the right resource if needed
- If you don't know the answer: say so honestly, commit to finding out, give a timeline

**Responding to a job posting issue:**
- Acknowledge the impact on their recruitment
- State what you know about the issue and its status
- Provide workaround if available (manual posting, temporary feed fix)
- Set expectations for resolution timeline
- Commit to updates at regular intervals

**Handling an escalation:**
- Acknowledge the severity and their frustration
- Take ownership (no deflecting or excuse-making)
- Provide a clear action plan with timeline
- Identify the person accountable for resolution
- Offer a meeting or call if appropriate for the severity

**Delivering bad news (feature not planned, feed limitation):**
- Be direct — don't bury the news
- Explain the reasoning honestly
- Acknowledge the impact on them specifically
- Offer alternatives or mitigation
- Provide a clear path forward

**Sharing good news (issue resolved, feature launched):**
- Lead with the positive outcome
- Connect it to their specific goals or use case
- Suggest next steps to capitalize on the good news
- Express genuine enthusiasm

**Declining a request (custom development, exception):**
- Acknowledge the request and its reasoning
- Be honest about the decision
- Explain the why without being dismissive
- Offer alternatives when possible
- Leave the door open for future conversation

### 5. Response Quality Checks

Before presenting the draft, verify:

- [ ] Tone matches the situation and relationship
- [ ] No commitments beyond what's authorized
- [ ] No product roadmap details that shouldn't be shared externally
- [ ] Accurate references to previous conversations
- [ ] Clear next steps and ownership
- [ ] Appropriate for the stakeholder level
- [ ] Length is appropriate for the channel (shorter for chat, fuller for email)

### 6. Offer Iterations

After presenting the draft:
- "Want me to adjust the tone? (more formal, more casual, more empathetic, more direct)"
- "Should I add or remove any specific points?"
- "Want me to make this shorter/longer?"
- "Should I draft a version for a different stakeholder?"
- "Want me to draft the internal escalation note as well?"
- "Should I prepare a follow-up message to send after [X days] if no response?"
