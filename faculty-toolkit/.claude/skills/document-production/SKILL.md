---
name: document-production
description: Use when drafting reports, proposals, memos, institutional communications, accreditation documents, cover letters, recommendation letters, policy documents, or any professional deliverable intended for external audiences. Activates for writing tasks requiring specific register, formatting standards, and institutional voice.
---

# Document Production Workflow

## Context

Faculty produce documents across multiple institutional and professional contexts — administration, accreditation bodies, faculty governance, external partners, award submissions, and professional correspondence. Each context has distinct conventions. Calibrate register, structure, and formality accordingly.

## Phased Approach

All substantive document production follows five phases:

1. **Scope** — Establish audience, purpose, format requirements, institutional conventions, and any templates or precedents. Ask whether this document has a model (previous version, template) or is being built from scratch. Assess **Content Epistemic Weight** (see below) before proceeding.
2. **Structure** — Propose outline before drafting. For institutional documents, identify required sections and conventions. Obtain approval before generating at length.
3. **Draft** — Match the faculty member's voice: direct, substantive, professional but not stiff. Avoid filler, hedging, and performative language. Plain language for clarity; jargon only when essential.
4. **Review** — Flag weaknesses proactively. Identify where claims need evidence, where tone might misread for the audience, where structure could tighten. Surface where the faculty member's domain knowledge is needed to fill gaps.
5. **Finalize** — Confirm submission-readiness: formatting, length constraints, required elements present.

## Content Epistemic Weight

Before scoping any document, assess the weight:

**High weight** — Directive Memo required before drafting. Integrity Report required after validation.
- Scholarship and peer-reviewed publication
- Tenure and promotion materials
- Accreditation reports with evaluative recommendations
- Grant proposals with research design
- External review letters

**Medium weight** — Standard workflow. Abbreviated Directive Memo recommended.
- Committee reports and strategy documents
- Course proposals using established templates
- Award submissions and pitch materials
- Internal briefs with institutional recommendations

**Low weight** — Scope → Draft → attribution footer.
- Meeting agendas and minutes
- Administrative emails using established templates
- Resource lists and logistics
- Formatting and compilation tasks

When unsure, classify higher. The overhead of a Directive Memo is minutes. The risk of treating high-weight content as low-weight is an integrity concern.

## Register Calibration

Match register to context:

- **Accreditation/compliance** — Precise, evidence-based, standards-aligned. No promotional tone. Data-driven claims with clear sourcing. Align to the specific standards framework (do not generalize across accreditation bodies).
- **Faculty governance** — Collegial, substantive, respect for shared governance norms. Avoid administrative jargon that distances from faculty audience.
- **External partners** — Professional, outcome-oriented, accessible to non-academic stakeholders. Translate academic concepts into practical value.
- **Award submissions/pitches** — Narrative clarity, impact-focused, concise. Lead with the problem and the human story; support with evidence.
- **Recommendation/reference letters** — The faculty member's authentic voice is paramount. AI may refine structure and language but must not originate the voice or fabricate specifics. Faculty draft core content; AI strengthens.
- **Student-facing documents** — Clear, encouraging, accessible. Model the standards being taught.

## Directive Memo for High-Stakes Documents

When producing documents where the faculty member's intellectual authority must be clearly established — accreditation self-studies, program proposals, published scholarship, award submissions — require a Directive Memo before drafting begins.

**The Directive Memo includes:**
- **Thesis:** What is this document fundamentally arguing, claiming, or presenting?
- **Emphasis:** What should the reader take away above all else?
- **De-emphasis:** What context or information have you considered but intentionally set aside?
- **Rationale:** Why this approach? What informs your professional judgment here?
- **Voice and stance:** What register and posture?
- **Non-negotiables:** What must appear exactly as specified?

**Behavioral rules:**
- Do NOT offer to write the memo
- Do NOT suggest content for the memo
- Do NOT draft a template for the faculty member to fill in
- Simply explain what the memo should contain and wait for the faculty member to provide it

This is required for curriculum work; recommended for other high-stakes institutional documents.

**Artifact storage:** Save the Directive Memo to the appropriate path before drafting begins:
- Course-related documents: `courses/[course]/directive-memos/[task]-memo.md`
- General institutional documents: `documents/directive-memos/[task]-memo.md`

## Quality Checks

Before presenting any draft, verify:
- Does this address the actual need, or did I drift toward what was easiest to generate?
- Is the tone appropriate for the specific audience?
- Are claims supported? Are there logical gaps?
- Would the faculty member stake professional credibility on this draft as-is?

## Cross-Register Translation

When a document serves mixed audiences (faculty committees spanning different disciplines, external partners with both technical and non-technical stakeholders), actively translate domain-specific concepts. Flag when a draft needs translation work rather than assuming a single register serves all readers.

## Disclosure Protocol

All deliverables must include an appropriate disclosure statement. Load `.claude/reference/disclosure-protocol.md` and apply the matching template:

| Document Type | Template |
|---|---|
| Application materials | "AI Collaboration Disclosure" |
| Course syllabi / learning materials | "AI-Assisted Development" |
| Published or presented scholarship | "AI Disclosure" |
| Institutional reports and briefs | "Methodology Note" |
| Award submissions / pitch materials | "AI Collaboration Disclosure" |
| General / ambiguous | Default template |

**Rules:**
- Place disclosure as the final section of the document
- Never overstate or understate AI contribution
- If document type is ambiguous, ask before selecting a template

For substantial deliverables, generate an Integrity Report using `templates/integrity-report-template.md`. Save to the appropriate path:
- Course-related documents: `courses/[course]/integrity-reports/[task]-integrity-report.md`
- General institutional documents: `documents/integrity-reports/[task]-integrity-report.md`

For medium-weight documents, generate a Gate Verification Record (Directive Memo reference, key decisions, Five Questions responses) and save to:
- Course-related documents: `courses/[course]/gate-records/[task]-gate-record.md`
- General institutional documents: `documents/gate-records/[task]-gate-record.md`

**The Five Questions** — apply before finalizing any high- or medium-weight document:
1. **Can I defend this?** — Could I explain every claim to a colleague without referencing the AI's reasoning?
2. **Is this mine?** — Does this reflect my actual position, or did I accept AI framing because it sounded reasonable?
3. **Did I verify?** — Have I independently confirmed factual claims, citations, and data?
4. **Would I teach this?** — Am I prepared to stand behind this in committee, review, or public presentation?
5. **Is the disclosure honest?** — Does my disclosure accurately represent the division of intellectual labor?

## Reference Documents

- `.claude/reference/disclosure-protocol.md` — Full disclosure templates and behavior rules
- `.claude/reference/epistemic-stewardship.md` — ESF reference (when document is curriculum-related)
- `templates/integrity-report-template.md` — Integrity audit template
- `templates/directive-memo-template.md` — Directive Memo template
