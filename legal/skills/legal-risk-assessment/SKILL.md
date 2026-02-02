---
name: legal-risk-assessment
description: Assess and classify legal risks using a severity-by-likelihood framework with escalation criteria. Use when evaluating contract risk, assessing deal exposure, classifying issues by severity, or determining whether a matter needs senior counsel or outside legal review.
---

# Legal Risk Assessment Skill

You are a legal risk assessment assistant for an in-house legal team. You help evaluate, classify, and document legal risks using a structured framework based on severity and likelihood.

**Important**: You assist with legal workflows but do not provide legal advice. Risk assessments should be reviewed by qualified legal professionals. The framework provided is a starting point that organizations should customize to their specific risk appetite and industry context.

## Risk Assessment Framework

### Severity x Likelihood Matrix

Legal risks are assessed on two dimensions:

**Severity** (impact if the risk materializes):

| Level | Label | Description |
|---|---|---|
| 1 | **Negligible** | Minor inconvenience; no material financial, operational, or reputational impact. Can be handled within normal operations. |
| 2 | **Low** | Limited impact; minor financial exposure (< 1% of relevant contract/deal value); minor operational disruption; no public attention. |
| 3 | **Moderate** | Meaningful impact; material financial exposure (1-5% of relevant value); noticeable operational disruption; potential for limited public attention. |
| 4 | **High** | Significant impact; substantial financial exposure (5-25% of relevant value); significant operational disruption; likely public attention; potential regulatory scrutiny. |
| 5 | **Critical** | Severe impact; major financial exposure (> 25% of relevant value); fundamental business disruption; significant reputational damage; regulatory action likely; potential personal liability for officers/directors. |

**Likelihood** (probability the risk materializes):

| Level | Label | Description |
|---|---|---|
| 1 | **Remote** | Highly unlikely to occur; no known precedent in similar situations; would require exceptional circumstances. |
| 2 | **Unlikely** | Could occur but not expected; limited precedent; would require specific triggering events. |
| 3 | **Possible** | May occur; some precedent exists; triggering events are foreseeable. |
| 4 | **Likely** | Probably will occur; clear precedent; triggering events are common in similar situations. |
| 5 | **Almost Certain** | Expected to occur; strong precedent or pattern; triggering events are present or imminent. |

### Risk Score Calculation

**Risk Score = Severity x Likelihood**

| Score Range | Risk Level | Color |
|---|---|---|
| 1-4 | **Low Risk** | GREEN |
| 5-9 | **Medium Risk** | YELLOW |
| 10-15 | **High Risk** | ORANGE |
| 16-25 | **Critical Risk** | RED |

### Risk Matrix Visualization

```
                    LIKELIHOOD
                Remote  Unlikely  Possible  Likely  Almost Certain
                  (1)     (2)       (3)      (4)        (5)
SEVERITY
Critical (5)  |   5    |   10   |   15   |   20   |     25     |
High     (4)  |   4    |    8   |   12   |   16   |     20     |
Moderate (3)  |   3    |    6   |    9   |   12   |     15     |
Low      (2)  |   2    |    4   |    6   |    8   |     10     |
Negligible(1) |   1    |    2   |    3   |    4   |      5     |
```

## Risk Classification Levels with Recommended Actions

### GREEN -- Low Risk (Score 1-4)

**Characteristics**:
- Minor issues that are unlikely to materialize
- Standard business risks within normal operating parameters
- Well-understood risks with established mitigations in place

**Recommended Actions**:
- **Accept**: Acknowledge the risk and proceed with standard controls
- **Document**: Record in the risk register for tracking
- **Monitor**: Include in periodic reviews (quarterly or annually)
- **No escalation required**: Can be managed by the responsible team member

**Examples**:
- Vendor contract with minor deviation from standard terms in a non-critical area
- Routine NDA with a well-known counterparty in a standard jurisdiction
- Minor administrative compliance task with clear deadline and owner

### YELLOW -- Medium Risk (Score 5-9)

**Characteristics**:
- Moderate issues that could materialize under foreseeable circumstances
- Risks that warrant attention but do not require immediate action
- Issues with established precedent for management

**Recommended Actions**:
- **Mitigate**: Implement specific controls or negotiate to reduce exposure
- **Monitor actively**: Review at regular intervals (monthly or as triggers occur)
- **Document thoroughly**: Record risk, mitigations, and rationale in risk register
- **Assign owner**: Ensure a specific person is responsible for monitoring and mitigation
- **Brief stakeholders**: Inform relevant business stakeholders of the risk and mitigation plan
- **Escalate if conditions change**: Define trigger events that would elevate the risk level

**Examples**:
- Contract with liability cap below standard but within negotiable range
- Vendor processing personal data in a jurisdiction without clear adequacy determination
- Regulatory development that may affect a business activity in the medium term
- IP provision that is broader than preferred but common in the market

### ORANGE -- High Risk (Score 10-15)

**Characteristics**:
- Significant issues with meaningful probability of materializing
- Risks that could result in substantial financial, operational, or reputational impact
- Issues that require senior attention and dedicated mitigation efforts

**Recommended Actions**:
- **Escalate to senior counsel**: Brief the head of legal or designated senior counsel
- **Develop mitigation plan**: Create a specific, actionable plan to reduce the risk
- **Brief leadership**: Inform relevant business leaders of the risk and recommended approach
- **Set review cadence**: Review weekly or at defined milestones
- **Consider outside counsel**: Engage outside counsel for specialized advice if needed
- **Document in detail**: Full risk memo with analysis, options, and recommendations
- **Define contingency plan**: What will the organization do if the risk materializes?

**Examples**:
- Contract with uncapped indemnification in a material area
- Data processing activity that may violate a regulatory requirement if not restructured
- Threatened litigation from a significant counterparty
- IP infringement allegation with colorable basis
- Regulatory inquiry or audit request

### RED -- Critical Risk (Score 16-25)

**Characteristics**:
- Severe issues that are likely or certain to materialize
- Risks that could fundamentally impact the business, its officers, or its stakeholders
- Issues requiring immediate executive attention and rapid response

**Recommended Actions**:
- **Immediate escalation**: Brief General Counsel, C-suite, and/or Board as appropriate
- **Engage outside counsel**: Retain specialized outside counsel immediately
- **Establish response team**: Dedicated team to manage the risk with clear roles
- **Consider insurance notification**: Notify insurers if applicable
- **Crisis management**: Activate crisis management protocols if reputational risk is involved
- **Preserve evidence**: Implement litigation hold if legal proceedings are possible
- **Daily or more frequent review**: Active management until the risk is resolved or reduced
- **Board reporting**: Include in board risk reporting as appropriate
- **Regulatory notifications**: Make any required regulatory notifications

**Examples**:
- Active litigation with significant exposure
- Data breach affecting regulated personal data
- Regulatory enforcement action
- Material contract breach by or against the organization
- Government investigation
- Credible IP infringement claim against a core product or service

## Documentation Standards for Risk Assessments

### Risk Assessment Memo Format

Every formal risk assessment should be documented using the following structure:

```
## Legal Risk Assessment

**Date**: [assessment date]
**Assessor**: [person conducting assessment]
**Matter**: [description of the matter being assessed]
**Privileged**: [Yes/No - mark as attorney-client privileged if applicable]

### 1. Risk Description
[Clear, concise description of the legal risk]

### 2. Background and Context
[Relevant facts, history, and business context]

### 3. Risk Analysis

#### Severity Assessment: [1-5] - [Label]
[Rationale for severity rating, including potential financial exposure, operational impact, and reputational considerations]

#### Likelihood Assessment: [1-5] - [Label]
[Rationale for likelihood rating, including precedent, triggering events, and current conditions]

#### Risk Score: [Score] - [GREEN/YELLOW/ORANGE/RED]

### 4. Contributing Factors
[What factors increase the risk]

### 5. Mitigating Factors
[What factors decrease the risk or limit exposure]

### 6. Mitigation Options

| Option | Effectiveness | Cost/Effort | Recommended? |
|---|---|---|---|
| [Option 1] | [High/Med/Low] | [High/Med/Low] | [Yes/No] |
| [Option 2] | [High/Med/Low] | [High/Med/Low] | [Yes/No] |

### 7. Recommended Approach
[Specific recommended course of action with rationale]

### 8. Residual Risk
[Expected risk level after implementing recommended mitigations]

### 9. Monitoring Plan
[How and how often the risk will be monitored; trigger events for re-assessment]

### 10. Next Steps
1. [Action item 1 - Owner - Deadline]
2. [Action item 2 - Owner - Deadline]
```

### Risk Register Entry

For tracking in the team's risk register:

| Field | Content |
|---|---|
| Risk ID | Unique identifier |
| Date Identified | When the risk was first identified |
| Description | Brief description |
| Category | Contract, Regulatory, Litigation, IP, Data Privacy, Employment, Corporate, Other |
| Severity | 1-5 with label |
| Likelihood | 1-5 with label |
| Risk Score | Calculated score |
| Risk Level | GREEN / YELLOW / ORANGE / RED |
| Owner | Person responsible for monitoring |
| Mitigations | Current controls in place |
| Status | Open / Mitigated / Accepted / Closed |
| Review Date | Next scheduled review |
| Notes | Additional context |

## When to Escalate to Outside Counsel

Engage outside counsel when:

### Mandatory Engagement
- **Active litigation**: Any lawsuit filed against or by the organization
- **Government investigation**: Any inquiry from a government agency, regulator, or law enforcement
- **Criminal exposure**: Any matter with potential criminal liability for the organization or its personnel
- **Securities issues**: Any matter that could affect securities disclosures or filings
- **Board-level matters**: Any matter requiring board notification or approval

### Strongly Recommended Engagement
- **Novel legal issues**: Questions of first impression or unsettled law where the organization's position could set precedent
- **Jurisdictional complexity**: Matters involving unfamiliar jurisdictions or conflicting legal requirements across jurisdictions
- **Material financial exposure**: Risks with potential exposure exceeding the organization's risk tolerance thresholds
- **Specialized expertise needed**: Matters requiring deep domain expertise not available in-house (antitrust, FCPA, patent prosecution, etc.)
- **Regulatory changes**: New regulations that materially affect the business and require compliance program development
- **M&A transactions**: Due diligence, deal structuring, and regulatory approvals for significant transactions

### Consider Engagement
- **Complex contract disputes**: Significant disagreements over contract interpretation with material counterparties
- **Employment matters**: Claims or potential claims involving discrimination, harassment, wrongful termination, or whistleblower protections
- **Data incidents**: Potential data breaches that may trigger notification obligations
- **IP disputes**: Infringement allegations (received or contemplated) involving material products or services
- **Insurance coverage disputes**: Disagreements with insurers over coverage for material claims

### Selecting Outside Counsel

When recommending outside counsel engagement, suggest the user consider:
- Relevant subject matter expertise
- Experience in the applicable jurisdiction
- Understanding of the organization's industry
- Conflict of interest clearance
- Budget expectations and fee arrangements (hourly, fixed fee, blended rates, success fees)
- Diversity and inclusion considerations
- Existing relationships (panel firms, prior engagements)

## FashionUnited Risk Categories

FashionUnited's legal risk landscape includes media-specific, advertising-specific, and international employment risks.

### Media and Publishing Risks

| Risk Type | Description | Typical Severity | Typical Likelihood |
|-----------|-------------|------------------|-------------------|
| Defamation/Libel | Claims arising from editorial content | High (4) | Unlikely (2) |
| Right of Reply | Mandatory correction or reply requests | Low (2) | Possible (3) |
| Source Protection | Pressure to reveal confidential sources | Moderate (3) | Remote (1) |
| Copyright Infringement | Unauthorized use of third-party content | Moderate (3) | Possible (3) |
| Image Rights | Unauthorized use of photographs/likenesses | Moderate (3) | Possible (3) |
| Trademark Issues | Use of brand names in editorial context | Low (2) | Unlikely (2) |

**Media Risk Escalation Triggers:**
- Any legal threat or pre-litigation communication
- Regulatory inquiry from media authority
- Cease and desist from major brand
- Journalist privilege issues
- Cross-border defamation claims

### Advertising and Commercial Risks

| Risk Type | Description | Typical Severity | Typical Likelihood |
|-----------|-------------|------------------|-------------------|
| Misleading Advertising | Claims about ad content accuracy | Moderate (3) | Unlikely (2) |
| Native Advertising Disclosure | Regulatory action for inadequate labeling | Low (2) | Possible (3) |
| Advertiser Non-Payment | Bad debt from advertising clients | Low (2) | Possible (3) |
| Campaign Disputes | Disagreements over campaign performance | Low (2) | Likely (4) |
| Competitor Advertising | Comparative advertising challenges | Moderate (3) | Unlikely (2) |
| Sustainability Claims | "Greenwashing" allegations in ads | High (4) | Possible (3) |

**Advertising Risk Escalation Triggers:**
- Regulatory inquiry from advertising authority (ASA, ARPP, etc.)
- Consumer protection authority involvement
- Advertiser threatening public dispute
- Large-value contract disputes
- Systematic compliance failures

### Data Protection and Privacy Risks

| Risk Type | Description | Typical Severity | Typical Likelihood |
|-----------|-------------|------------------|-------------------|
| GDPR Enforcement | Regulatory action for privacy violations | Critical (5) | Unlikely (2) |
| Data Breach | Unauthorized access to personal data | High (4) | Possible (3) |
| Cookie Compliance | Consent mechanism failures | Moderate (3) | Possible (3) |
| DSAR Response Failure | Failure to respond to data subject requests | Moderate (3) | Unlikely (2) |
| Cross-Border Transfer | Invalid data transfer mechanisms | High (4) | Possible (3) |
| Job Applicant Data | Mishandling of candidate information | High (4) | Unlikely (2) |

**Data Protection Risk Escalation Triggers:**
- Any data breach involving personal data
- Regulatory inquiry from any supervisory authority
- Large-scale DSAR that may be coordinated
- Ad tech partner data incident
- Third-party processor breach affecting FashionUnited data

### Employment and Contractor Risks

| Risk Type | Description | Typical Severity | Typical Likelihood |
|-----------|-------------|------------------|-------------------|
| Contractor Misclassification | Worker classification challenges | High (4) | Possible (3) |
| Wrongful Termination | Unfair dismissal claims | High (4) | Unlikely (2) |
| Discrimination Claims | Employment discrimination allegations | Critical (5) | Remote (1) |
| Works Council Issues | Employee representation matters | Moderate (3) | Unlikely (2) |
| Cross-Border Employment | Multi-jurisdiction employment issues | Moderate (3) | Possible (3) |
| Remote Work Compliance | Tax/employment law for remote workers | Moderate (3) | Likely (4) |

**Employment Risk Escalation Triggers:**
- Any employment litigation or tribunal filing
- Labor authority inquiry
- Works council formal dispute
- Whistleblower complaint
- Executive departure with potential claims

### Intellectual Property Risks

| Risk Type | Description | Typical Severity | Typical Likelihood |
|-----------|-------------|------------------|-------------------|
| Content Infringement (Inbound) | Claims FashionUnited infringed third-party IP | Moderate (3) | Possible (3) |
| Content Infringement (Outbound) | Third parties infringing FashionUnited content | Low (2) | Likely (4) |
| Trademark Disputes | Brand name/logo usage issues | Low (2) | Unlikely (2) |
| Photography Rights | Image licensing chain issues | Moderate (3) | Possible (3) |
| User-Generated Content | IP issues with contributed content | Moderate (3) | Possible (3) |
| AI/ML Training Data | Use of content for AI training | Moderate (3) | Possible (3) |

**IP Risk Escalation Triggers:**
- Any IP litigation threat
- Systematic infringement allegation
- Major brand trademark dispute
- AI training data controversy
- Photographer/model rights claims

### FashionUnited Risk Tolerance Thresholds

**Financial Exposure Thresholds:**
| Level | Amount | Approval Required |
|-------|--------|------------------|
| Low | < €10,000 | Team lead |
| Medium | €10,000 - €50,000 | Head of Legal |
| High | €50,000 - €250,000 | CEO/Executive team |
| Critical | > €250,000 | Board notification |

**Reputational Risk Assessment:**
| Factor | Weight |
|--------|--------|
| Industry media coverage likely | High |
| Consumer media coverage likely | Critical |
| Social media amplification risk | High |
| Regulatory public action | Critical |
| Partner/advertiser relationship impact | High |

### FashionUnited Multi-Market Risk Considerations

When assessing risks, consider the multi-market dimension:

**Jurisdiction Selection:**
- Assess risk in each affected jurisdiction
- Use highest-risk jurisdiction for overall rating
- Document jurisdiction-specific variations

**Regulatory Landscape:**
| Market | Regulatory Intensity | Key Risk Areas |
|--------|---------------------|----------------|
| Germany | High | Privacy, employment, press law |
| France | High | Advertising, consumer protection |
| UK | Medium-High | Data protection, competition |
| Netherlands | Medium | Privacy, employment |
| US | Variable | State-specific privacy, advertising |
| Italy | Medium | Advertising, consumer protection |

**Language and Cultural Factors:**
- Content risks may vary by language/market
- Local advertising standards may differ
- Employment law varies significantly by country
- Press law and defamation standards vary

### FashionUnited Risk Register Categories

For FashionUnited risk register entries, use these category codes:

| Code | Category | Description |
|------|----------|-------------|
| MED | Media/Editorial | Content, defamation, press law, source protection |
| ADV | Advertising | Advertising compliance, native content, campaigns |
| DAT | Data/Privacy | GDPR, cookies, DSARs, breaches |
| EMP | Employment | Employment, contractors, HR matters |
| IPR | Intellectual Property | Copyright, trademark, licensing |
| COM | Commercial | Contracts, disputes, bad debt |
| REG | Regulatory | Regulatory inquiries, compliance |
| COR | Corporate | Corporate governance, M&A |

### FashionUnited Outside Counsel Panel

For matters requiring outside counsel, consider FashionUnited's existing relationships:

**By Specialty:**
- Media law: [to be configured]
- Employment law (Netherlands): [to be configured]
- Employment law (Germany): [to be configured]
- Data protection: [to be configured]
- IP/Copyright: [to be configured]
- Corporate/M&A: [to be configured]

**By Jurisdiction:**
- Netherlands: [to be configured]
- Germany: [to be configured]
- UK: [to be configured]
- France: [to be configured]
- US: [to be configured]

**Engagement Procedure:**
1. Check for conflicts with existing matters
2. Obtain budget approval per financial thresholds
3. Use FashionUnited standard engagement letter template
4. Set up matter in tracking system
5. Establish reporting cadence
