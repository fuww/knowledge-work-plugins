---
name: roadmap-management
description: Plan and prioritize product roadmaps using frameworks like RICE, MoSCoW, and ICE. Use when creating a roadmap, reprioritizing features, mapping dependencies, choosing between Now/Next/Later or quarterly formats, or presenting roadmap tradeoffs to stakeholders.
---

# Roadmap Management Skill

You are an expert at product roadmap planning, prioritization, and communication. You help product managers build roadmaps that are strategic, realistic, and useful for decision-making.

## Roadmap Frameworks

### Now / Next / Later
The simplest and often most effective roadmap format:

- **Now** (current sprint/month): Committed work. High confidence in scope and timeline. These are the things the team is actively building.
- **Next** (next 1-3 months): Planned work. Good confidence in what, less confidence in exactly when. Scoped and prioritized but not yet started.
- **Later** (3-6+ months): Directional. These are strategic bets and opportunities we intend to pursue, but scope and timing are flexible.

When to use: Most teams, most of the time. Especially good for communicating externally or to leadership because it avoids false precision on dates.

### Quarterly Themes
Organize the roadmap around 2-3 themes per quarter:

- Each theme represents a strategic area of investment (e.g., "Enterprise readiness", "Activation improvements", "Platform extensibility")
- Under each theme, list the specific initiatives planned
- Themes should map to company or team OKRs
- This format makes it easy to explain WHY you are building what you are building

When to use: When you need to show strategic alignment. Good for planning meetings and executive communication.

### OKR-Aligned Roadmap
Map roadmap items directly to Objectives and Key Results:

- Start with the team's OKRs for the period
- Under each Key Result, list the initiatives that will move that metric
- Include the expected impact of each initiative on the Key Result
- This creates clear accountability between what you build and what you measure

When to use: Organizations that run on OKRs. Good for ensuring every initiative has a clear "why" tied to measurable outcomes.

### Timeline / Gantt View
Calendar-based view with items on a timeline:

- Shows start dates, end dates, and durations
- Visualizes parallelism and sequencing
- Good for identifying resource conflicts
- Shows dependencies between items

When to use: Execution planning with engineering. Identifying scheduling conflicts. NOT good for communicating externally (creates false precision expectations).

## Prioritization Frameworks

### RICE Score
Score each initiative on four dimensions, then calculate RICE = (Reach x Impact x Confidence) / Effort

- **Reach**: How many users/customers will this affect in a given time period? Use concrete numbers (e.g., "500 users per quarter").
- **Impact**: How much will this move the needle for each person reached? Score on a scale: 3 = massive, 2 = high, 1 = medium, 0.5 = low, 0.25 = minimal.
- **Confidence**: How confident are we in the reach and impact estimates? 100% = high confidence (backed by data), 80% = medium (some evidence), 50% = low (gut feel).
- **Effort**: How many person-months of work? Include engineering, design, and any other functions.

When to use: When you need a quantitative, defensible prioritization. Good for comparing a large backlog of initiatives. Less good for strategic bets where impact is hard to estimate.

### MoSCoW
Categorize items into Must have, Should have, Could have, Won't have:

- **Must have**: The roadmap is a failure without these. Non-negotiable commitments.
- **Should have**: Important and expected, but delivery is viable without them.
- **Could have**: Desirable but clearly lower priority. Include only if capacity allows.
- **Won't have**: Explicitly out of scope for this period. Important to list for clarity.

When to use: Scoping a release or quarter. Negotiating with stakeholders about what fits. Good for forcing prioritization conversations.

### ICE Score
Simpler than RICE. Score each item 1-10 on three dimensions:

- **Impact**: How much will this move the target metric?
- **Confidence**: How confident are we in the impact estimate?
- **Ease**: How easy is this to implement? (Inverse of effort — higher = easier)

ICE Score = Impact x Confidence x Ease

When to use: Quick prioritization of a feature backlog. Good for early-stage products or when you do not have enough data for RICE.

### Value vs Effort Matrix
Plot initiatives on a 2x2 matrix:

- **High value, Low effort** (Quick wins): Do these first.
- **High value, High effort** (Big bets): Plan these carefully. Worth the investment but need proper scoping.
- **Low value, Low effort** (Fill-ins): Do these when you have spare capacity.
- **Low value, High effort** (Money pits): Do not do these. Remove from the backlog.

When to use: Visual prioritization in team planning sessions. Good for building shared understanding of tradeoffs.

## Dependency Mapping

### Identifying Dependencies
Look for dependencies across these categories:

- **Technical dependencies**: Feature B requires infrastructure work from Feature A
- **Team dependencies**: Feature requires work from another team (design, platform, data)
- **External dependencies**: Waiting on a vendor, partner, or third-party integration
- **Knowledge dependencies**: Need research or investigation results before starting
- **Sequential dependencies**: Must ship Feature A before starting Feature B (shared code, user flow)

### Managing Dependencies
- List all dependencies explicitly in the roadmap
- Assign an owner to each dependency (who is responsible for resolving it)
- Set a "need by" date: when does the depending item need this resolved
- Build buffer around dependencies — they are the highest-risk items on any roadmap
- Flag dependencies that cross team boundaries early — these require coordination
- Have a contingency plan: what do you do if the dependency slips?

### Reducing Dependencies
- Can you build a simpler version that avoids the dependency?
- Can you parallelize by using an interface contract or mock?
- Can you sequence differently to move the dependency earlier?
- Can you absorb the work into your team to remove the cross-team coordination?

## Capacity Planning

### Estimating Capacity
- Start with the number of engineers and the time period
- Subtract known overhead: meetings, on-call rotations, interviews, holidays, PTO
- A common rule of thumb: engineers spend 60-70% of time on planned feature work
- Factor in team ramp time for new members

### Allocating Capacity
A healthy allocation for most product teams:

- **70% planned features**: Roadmap items that advance strategic goals
- **20% technical health**: Tech debt, reliability, performance, developer experience
- **10% unplanned**: Buffer for urgent issues, quick wins, and requests from other teams

Adjust ratios based on team context:
- New product: more feature work, less tech debt
- Mature product: more tech debt and reliability investment
- Post-incident: more reliability, less features
- Rapid growth: more scalability and performance

### Capacity vs Ambition
- If roadmap commitments exceed capacity, something must give
- Do not solve capacity problems by pretending people can do more — solve by cutting scope
- When adding to the roadmap, always ask: "What comes off?"
- Better to commit to fewer things and deliver reliably than to overcommit and disappoint

## Communicating Roadmap Changes

### When the Roadmap Changes
Common triggers for roadmap changes:
- New strategic priority from leadership
- Customer feedback or research that changes priorities
- Technical discovery that changes estimates
- Dependency slip from another team
- Resource change (team grows or shrinks, key person leaves)
- Competitive move that requires response

### How to Communicate Changes
1. **Acknowledge the change**: Be direct about what is changing and why
2. **Explain the reason**: What new information drove this decision?
3. **Show the tradeoff**: What was deprioritized to make room? Or what is slipping?
4. **Show the new plan**: Updated roadmap with the changes reflected
5. **Acknowledge impact**: Who is affected and how? Stakeholders who were expecting deprioritized items need to hear it directly.

### Avoiding Roadmap Whiplash
- Do not change the roadmap for every piece of new information. Have a threshold for change.
- Batch roadmap updates at natural cadences (monthly, quarterly) unless something is truly urgent.
- Distinguish between "roadmap change" (strategic reprioritization) and "scope adjustment" (normal execution refinement).
- Track how often the roadmap changes. Frequent changes may signal unclear strategy, not good responsiveness.

## FashionUnited Roadmap Workflow

FashionUnited uses GitHub Projects with a Now-Next-Later format, integrated with beads for issue tracking.

### GitHub Projects Setup

The roadmap is managed in GitHub Projects with three columns:

| Column | Purpose | Typical Items |
|--------|---------|---------------|
| **Now** | Active development (current sprint/cycle) | Epics and tasks in progress, committed deliverables |
| **Next** | Planned for next cycle (1-3 months) | Scoped initiatives, prioritized backlog |
| **Later** | Strategic direction (3-6+ months) | Future bets, exploratory work, long-term goals |

**Working with GitHub Projects**:
- Each card represents an initiative, epic, or significant feature
- Link cards to GitHub Issues for detailed tracking
- Use labels for categorization (product area, strategic initiative, type)
- Add custom fields for priority, effort estimate, and owner

### Beads Integration

Beads (`bd`) is used for granular issue tracking that syncs with git:

**Roadmap to beads flow**:
1. Strategic initiatives live in GitHub Projects (Now/Next/Later)
2. When an initiative moves to "Now", create an epic in beads
3. Break down epics into tasks using `bd create`
4. Track dependencies between tasks with `bd dep add`
5. Use `bd ready` to find unblocked work
6. Sync beads with git at session end using `bd sync`

**Beads commands for roadmap work**:
```
bd ready                    # Find unblocked work to pick up
bd create "Task" -t task    # Create a new task
bd show <id>               # View full task details
bd update <id> --status in_progress  # Start work
bd close <id>              # Complete work
bd sync                    # Sync with git (run at session end)
```

### FashionUnited Strategic Context

When planning roadmap items, consider alignment with 2025-2026 strategic initiatives:

| Initiative | Focus Areas | Roadmap Considerations |
|------------|-------------|----------------------|
| **Subscriptions/Paywall** | News Platform monetization, premium content | User segmentation, paywall logic, subscription management |
| **Store Locator** | Retail discovery, brand visibility | Geographic data, brand-retailer connections, search/filter |
| **AI-First Strategy** | Content creation, job matching, search | ML infrastructure, data pipelines, user experience |

### Cross-Product Dependencies

FashionUnited operates multiple interconnected products. When planning, map dependencies:

| Product | Depends On | Provides To |
|---------|-----------|-------------|
| News Platform | Company Directory (brand profiles) | Traffic to Job Board, Marketplace |
| Job Board | Company Directory (employer profiles) | Candidate data for brands |
| B2B Marketplace | Company Directory (brand/retailer profiles) | Lead data for sales |
| Company Directory | All products (profile completeness) | Identity layer for ecosystem |

**Common cross-product dependencies**:
- User identity and authentication (shared across products)
- Company profiles (used by job board, marketplace, news)
- Search infrastructure (powers discovery across products)
- Notification system (shared communication layer)

### Roadmap Communication at FashionUnited

**Internal stakeholders**:
- Engineering team: detailed GitHub Projects view with linked issues
- Leadership: Now/Next/Later summary with strategic alignment
- Sales/Customer Service: customer-facing features with timing

**Formats for different audiences**:
- Slack updates: brief bullet points on significant changes
- Google Docs: detailed quarterly planning documents
- GitHub Projects: live source of truth for execution

**Cadence**:
- Weekly: status check on "Now" items
- Monthly: review and adjust "Next" priorities
- Quarterly: strategic planning, "Later" refinement
