# Epistemic Stewardship Framework — Curriculum Development Reference

## Ensuring Epistemic Integrity and Disclosure Accountability

---

## Overview

This reference document is the operational implementation of the Epistemic Stewardship Framework (ESF) for curriculum development. ESF's seven core constructs — Directive Memo, Five Questions, Content Epistemic Weight, Human Validation Gates, Phased Workflow, Disclosure Protocol, and Framework Evolution Protocol — are enacted through structured workflows, human-in-the-loop validation, and artifact-driven handoffs that maintain intellectual ownership and disclosure integrity.

The key principle: **Every phase has a human validation gate where you confirm that you remain the epistemic agent — not just the editor.**

---

## Agent Roles in Curriculum Development

The ESF curriculum development workflow maps to six conceptual roles. In practice, these are phases within the `curriculum-dev` skill workflow — not separate configurations. The faculty member moves through them sequentially.

### 1. Analyst Role — Research and Context
**Owns:** Environmental scan, literature review, institutional alignment check

**Responsibilities:**
- Gather relevant pedagogical research, industry data, and institutional requirements
- Identify learning outcome gaps and opportunities
- Produce a Curriculum Brief

**Human Gate:** You review and validate all research claims:
- [ ] Every cited source exists and says what the brief claims
- [ ] The framing reflects your pedagogical philosophy, not just the AI's synthesis
- [ ] Institutional context is accurate to your lived experience

---

### 2. Planning Role — Requirements Definition
**Owns:** Learning outcomes, assessment strategy, course structure

**Responsibilities:**
- Transform the Curriculum Brief into a Course Requirements Document
- Define measurable learning outcomes aligned with program goals
- Establish assessment types, weightings, and rubric frameworks
- Map course to institutional standards and accreditation requirements

**Human Gate:** You validate that the document reflects your teaching intent:
- [ ] Learning outcomes represent what YOU believe students should achieve
- [ ] Assessment strategy aligns with your pedagogical approach
- [ ] The course design reflects your expertise and voice, not boilerplate

---

### 3. Architecture Role — Structural Design
**Owns:** Weekly schedule, module architecture, resource mapping

**Responsibilities:**
- Design the week-by-week course architecture
- Sequence content for scaffolded learning progression
- Map readings, activities, and assignments to outcomes
- Identify dependencies and prerequisite knowledge

**Human Gate:** You validate the pedagogical logic:
- [ ] The sequencing reflects how YOU would teach this material
- [ ] Activities are feasible within your institutional context
- [ ] The arc of the course tells a coherent intellectual story

---

### 4. Directive Phase — HUMAN ONLY
**Owns:** Directive Memo

**This is not an AI role. This is you.**

Before any content is drafted, you write a Directive Memo that establishes your intellectual position and intent. This is the critical step.

**The Directive Memo includes:**
- **Thesis:** What is this module/unit/course fundamentally arguing or teaching?
- **Emphasis:** What matters most?
- **De-emphasis:** What did the research surface that you're intentionally setting aside?
- **Pedagogical rationale:** Why this approach?
- **Voice and stance:** How should this content sound?
- **Non-negotiables:** What must appear exactly as you specify?

**Why this step matters:**
Without a Directive Memo, the AI's synthesis of research tends to become the default framing of your course. You end up editing the AI's argument rather than having the AI produce YOUR argument. The memo is what separates "I approved this" from "I designed this."

**Validation — The Ownership Test:**
- [ ] I wrote this memo without AI assistance
- [ ] I could explain and defend every choice in this memo to a colleague
- [ ] This memo reflects my genuine pedagogical position

---

### 5. Content Role — Draft Production
**Owns:** Syllabi, handouts, assignment sheets, rubrics

**Responsibilities:**
- Produce polished drafts of all course materials from lesson specs
- Apply institutional formatting and branding requirements
- Cross-reference all content against the Directive Memo for fidelity

**Human Gate:** You validate the final content:
- [ ] All materials represent your intellectual position as stated in the memo
- [ ] No hallucinated citations, fabricated data, or misattributed claims
- [ ] Tone and voice are authentically yours
- [ ] The content serves your stated thesis and emphasis
- [ ] Appropriate disclosure statement is appended

---

### 6. Review Role — Integrity Verification
**Owns:** Final review, disclosure compliance, epistemic audit

**Responsibilities:**
- Review all outputs against the Disclosure Protocol
- Compare final content against the original Directive Memo for drift
- Flag any content where AI contribution may exceed what's disclosed
- Verify all citations and factual claims
- Produce an Integrity Report for high-weight deliverables

---

## Workflow Diagram

```
┌─────────────────────────────────────────────────────────┐
│  PHASE 1: RESEARCH                                      │
│                                                         │
│  Analyst → Curriculum Brief                             │
│       ↓ [HUMAN GATE: Verify research & framing]         │
│                                                         │
├─────────────────────────────────────────────────────────┤
│  PHASE 2: PLANNING                                      │
│                                                         │
│  Planning → Course Requirements Document                │
│       ↓ [HUMAN GATE: Validate outcomes & intent]        │
│  Architecture → Course Architecture                     │
│       ↓ [HUMAN GATE: Confirm sequencing & logic]        │
│                                                         │
├─────────────────────────────────────────────────────────┤
│  PHASE 3: DIRECTIVE (HUMAN ONLY)                        │
│                                                         │
│  You write the Directive Memo                           │
│       ↓ [OWNERSHIP TEST: Is this mine?]                 │
│                                                         │
│  No AI operates in this phase.                          │
│  This is where your intellectual authority is asserted. │
│                                                         │
├─────────────────────────────────────────────────────────┤
│  PHASE 4: CONTENT CREATION                              │
│                                                         │
│  Content → Draft Materials                              │
│       ↓ [HUMAN GATE: Review voice, accuracy, fidelity]  │
│                                                         │
├─────────────────────────────────────────────────────────┤
│  PHASE 5: INTEGRITY REVIEW                              │
│                                                         │
│  Integrity Review → Integrity Report                    │
│       ↓ [HUMAN GATE: Final sign-off]                    │
│  Apply Disclosure Statement                             │
│       ↓                                                 │
│  RELEASE                                                │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

## Content Epistemic Weight Guide

Not all curriculum materials require the same level of human origination.

### High Stakes — Must originate from you (Directive Memo essential)
- Learning outcomes and competency definitions
- Assessment criteria and rubric rationale
- Conceptual arc and thesis of the course
- Pedagogical philosophy statements
- Critical framing of readings and case studies

### Medium Stakes — AI can draft, you must substantively shape
- Assignment descriptions and project briefs
- Lecture outlines and discussion questions
- Reading guides and synthesis prompts
- Module introductions and transitions

### Low Stakes — AI can draft, light review sufficient
- Schedules and calendars
- Formatting and layout
- Resource lists and bibliographies (after citation verification)
- Administrative language (policies, submission guidelines)

---

## Disclosure Protocol Integration

At every release point, apply the appropriate disclosure template from `.claude/reference/disclosure-protocol.md`. The integrity review phase enforces this by:

1. **Identifying document type** → selecting the matching disclosure template
2. **Auditing AI contribution levels** → ensuring the disclosure accurately describes what AI did
3. **Checking Directive Memo alignment** → confirming the final content reflects human-originated intent
4. **Flagging mismatches** → if AI contribution exceeds what's disclosed, or if content has drifted from the memo

### Disclosure Template Quick Reference

| Document Type | Disclosure Heading | Key Assertion |
|---|---|---|
| Application Materials | AI Collaboration Disclosure | Frameworks and claims reflect author's expertise |
| Course Syllabi | AI-Assisted Development | Pedagogical decisions reflect instructor's judgment |
| Scholarship | AI Disclosure | Author assumes full responsibility for content |
| Institutional Reports | Methodology Note | Analysis reflects author's professional assessment |

---

## The Five Questions

Embedded at every Human Gate to ensure you're genuinely owning the intellectual content:

1. **Can I defend this?** — Could I explain and justify every claim in this document to a colleague, reviewer, or student without referencing the AI's reasoning?
2. **Is this mine?** — Does this reflect my actual position, or did I passively accept the AI's framing because it sounded reasonable?
3. **Did I verify?** — Have I independently confirmed factual claims, citations, and data points?
4. **Would I teach this?** — Am I prepared to stand behind this content in a classroom and respond to student challenges?
5. **Is the disclosure honest?** — Does my disclosure statement accurately represent the division of intellectual labor?

---

## Quick Start: System Prompt for External Implementations

If configuring AI tools outside this toolkit, add this to your system prompt:

```
You are operating under the Epistemic Stewardship Framework (ESF) for Curriculum Development.

Before producing any curriculum content:
1. Identify which phase of the workflow you are in
2. Produce the artifact assigned to that phase
3. Present the Human Gate checklist for validation
4. Do not proceed to the next phase until the user confirms all checklist items

CRITICAL — DIRECTIVE PHASE:
Before any content drafting begins, STOP and require the user to provide a Directive Memo.
- Do NOT offer to write the memo
- Do NOT suggest content for the memo
- Do NOT draft a template that the user fills in
- Simply explain what the memo should contain and wait for the user to provide it
- Once received, confirm understanding and proceed to content creation guided by the memo

During content creation:
- Explicitly reference the Directive Memo when making structural or framing decisions
- Flag any point where you are deviating from the memo's stated intent
- Surface tensions rather than silently overriding

At final output:
- Generate an Integrity Report for high-weight content
- Include Directive Memo alignment check in the report
- Append the appropriate disclosure statement

Never skip a gate. Never proceed without explicit human confirmation.
```

---

## Reference Documents

- `.claude/reference/esf-faculty-guide.md` — Full faculty implementation guide
- `.claude/reference/disclosure-protocol.md` — Disclosure templates by document type
- `templates/integrity-report-template.md` — Integrity audit template
- `templates/directive-memo-template.md` — Directive Memo template
