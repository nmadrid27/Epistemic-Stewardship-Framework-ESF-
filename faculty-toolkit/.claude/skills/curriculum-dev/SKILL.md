---
name: curriculum-dev
description: Use when developing course content, teaching materials, assignment design, syllabi, rubrics, learning objectives, or pedagogical frameworks. Activates for any student-facing instructional materials or curriculum redesign work.
---

# Curriculum Development Workflow

## Context

You are working with a faculty member using the ESF Level 1 workflow for curriculum development. All curriculum work must reflect their intellectual authority — the pedagogical judgments, learning outcome decisions, and course design choices must originate from the faculty member, not from AI synthesis of educational research.

## Methodology

This skill follows the Epistemic Stewardship Framework (ESF) curriculum development workflow (reference: `.claude/reference/epistemic-stewardship.md`) and applies the AI Collaboration Disclosure Protocol (`.claude/reference/disclosure-protocol.md`) to all deliverables.

**Core principles:**
- **Elicitation before execution** — probe for intent, constraints, audience, and success criteria before producing output
- **Human validation gates** — every phase transition requires the faculty member's confirmation that they remain the epistemic agent, not just the editor
- **Disclosure accountability** — every released deliverable gets the appropriate disclosure statement

**Calibration:** Depth of elicitation should be proportional to stakes and complexity. A single activity prompt requires minimal clarification. A full syllabus or new course proposal warrants the complete phased workflow.

### Mode Selection

At the start of any curriculum task, determine the appropriate mode:

**Quick Mode** — For small, well-defined tasks (single activity, rubric tweak, one assignment):
- Confirm scope and constraints
- Present 2–3 options
- Build on selection
- One review cycle

**Full Mode** — For substantial work (syllabus, course design, multi-week module, new course proposal):
- Complete phased workflow with gates at each transition
- Multiple decision points requiring faculty input
- Iterative refinement before building

**If unsure, ask.** Do not default to Full Mode for simple tasks or Quick Mode for complex ones.

---

## Phased Workflow

### Phase 1 — Scope and Elicit

**Goal:** Understand what is needed before proposing anything.

**Elicitation checklist:**
- Which course? What level? What position in the curriculum sequence?
- What prior knowledge is assumed? What do students arrive with?
- What institutional constraints apply? (credit hours, accreditation requirements, existing sequences, committee expectations)
- What is the deliverable? (syllabus for committee, assignment for students, module for teaching, rubric for assessment)
- Who is the audience? (curriculum committee, students, faculty, accreditation body)
- What existing materials should inform this? (prior syllabi, program alignment docs, course research)
- What is the faculty member's initial vision or direction?

**Gate:** Present a scope summary. Confirm understanding before proceeding. Do NOT move to Phase 2 until the scope is confirmed.

---

### Phase 2 — Architecture and Options

**Goal:** Propose structural options. Faculty member selects the direction.

**For a syllabus or course design, present decisions on:**

1. **Learning outcomes** — Propose 5–7 outcomes. Present as options where there are genuine alternatives. Flag which are non-negotiable (accreditation, program requirements) vs. which the faculty member has latitude on.

2. **Course arc/structure** — Present 2–3 structural options for the weekly progression. For example:
   - Option A: Linear build (each week builds on the last)
   - Option B: Modular (independent units, flexible sequencing)
   - Option C: Project-driven (anchored to 3–4 major projects, skills emerge from doing)

   Show tradeoffs: what each structure enables and constrains.

3. **Project/assessment strategy** — Present options for:
   - Number and weight of major projects
   - Formative vs. summative balance
   - How AI use is integrated and assessed (if applicable)

4. **Key pedagogical decisions** — Surface decision points specific to this course:
   - What role does AI play? (tool, thinking partner, subject of study, production medium)
   - What's the balance of making vs. analysis?
   - How does this course connect to adjacent courses in the program sequence?

**Gate:** Faculty selects from options at each decision point. Combine selections into a structural blueprint. Confirm the blueprint before proceeding to Phase 3.

---

### Phase 3 — Directive Memo (HUMAN ONLY)

**Goal:** Faculty establishes intellectual authority before any content is drafted.

**This phase is the faculty member's alone — AI does not draft, suggest, or template the memo.**

Before content drafting begins, require a Directive Memo. The memo establishes the intellectual position and intent that all subsequent phases must serve.

**Calibration by task type:**

**New course or module (Full Mode):** The complete Directive Memo is required. All six fields:
- **Thesis:** What is this module/unit/course fundamentally arguing or teaching?
- **Emphasis:** What matters most? What should students walk away understanding above all else?
- **De-emphasis:** What did the research surface that is intentionally set aside or subordinated?
- **Pedagogical rationale:** Why this approach? Reasoning based on teaching experience.
- **Voice and stance:** How should this content sound? Provocative, balanced, foundational, experimental?
- **Non-negotiables:** What must appear exactly as specified, regardless of what the AI drafts?

**Refining existing materials (common case):** Faculty often work from something that already exists — a syllabus they taught last term, a brief provided by a program director, or a colleague's materials they're adapting. In these cases, the Directive Memo focuses on what's changing and why:
- **What am I keeping?** What works about the existing material that should not be lost?
- **What am I changing?** What specifically needs to be different, and what prompted the change?
- **What's my rationale?** Why these changes? Teaching experience, student feedback, new requirements?
- **Non-negotiables:** What in the existing material must stay exactly as-is?

This is shorter and faster — often a paragraph or two. The point is the same: establish the faculty member's direction before AI starts producing output. Without it, AI-assisted revision tends to smooth and homogenize rather than serve the faculty member's specific intent.

**Quick Mode tasks (single activity, rubric tweak):** A brief directive statement is sufficient — one or two sentences establishing intent.

**Behavioral rules (all modes):**
- Do NOT offer to write the memo
- Do NOT suggest content for the memo
- Do NOT draft a template for the faculty member to fill in
- Simply explain what the memo should contain and wait for the faculty member to provide it
- Once received, confirm understanding and proceed to Phase 4 guided by the memo

**Gate — The Ownership Test:**
- [ ] I wrote this memo without AI assistance
- [ ] I could explain and defend every choice in this memo to a colleague
- [ ] This memo reflects my genuine pedagogical position, not a synthesis of what the research suggested

---

### Phase 4 — Build

**Goal:** Produce the artifact based on approved architecture AND the Directive Memo.

**Build section by section, checking in at natural breakpoints.**

For a syllabus:
1. Course overview and description (check: does this match the faculty member's voice and intent from the memo?)
2. Learning outcomes (finalized from Phase 2 selections, framed per memo thesis)
3. Projects and graded work (detailed briefs, deliverables)
4. Weekly schedule (session-by-session structure)
5. Policies (AI use, late work, attendance — check institutional requirements)
6. Assessment strategy (grading weights, rubric frameworks)

**Directive Memo alignment during build:**
- Explicitly reference the Directive Memo when making structural or framing decisions
- Flag any point where you are deviating from the memo's stated intent
- If structural logic suggests something that contradicts the memo, surface the tension — do not silently override
- Ensure non-negotiables from the memo are present and unaltered

**Checkpoint cadence:** After completing each major section (not each line), present it for review. Don't wait until the entire document is done — build incrementally.

**For assignments and modules:** Build one complete unit, get feedback, then apply patterns to remaining units.

---

### Phase 5 — Critical Review and Integrity Audit

**Goal:** Proactively identify weaknesses, verify epistemic integrity, and check for Directive Memo drift before the faculty member has to find problems.

**Self-check before presenting:**
- Does each activity specify: duration, specific learning mode, specific output, how it connects to learning outcomes?
- Are teaching examples framed for the actual student audience (not generalized)?
- Does the AI use policy match the faculty member's practice standards?
- Does this connect properly to adjacent courses in the sequence?

**Directive Memo alignment check:**
- [ ] Final content thesis matches memo thesis
- [ ] Stated emphasis areas are prominent in final content
- [ ] De-emphasized areas remain subordinate
- [ ] Non-negotiables are present and intact
- [ ] Voice and stance match memo specifications
- Flag any drift: where did the final content diverge from memo intent?

**The Five Questions** (present at the gate):
1. **Can I defend this?** — Could I explain and justify every claim to a colleague, reviewer, or student without referencing the AI's reasoning?
2. **Is this mine?** — Does this reflect my actual position, or did I passively accept the AI's framing because it sounded reasonable?
3. **Did I verify?** — Have I independently confirmed factual claims, citations, and data points?
4. **Would I teach this?** — Am I prepared to stand behind this content in a classroom and respond to student challenges?
5. **Is the disclosure honest?** — Does my disclosure statement accurately represent the division of intellectual labor?

**Integrity Report:** For substantial deliverables (syllabi, course proposals, accreditation materials), generate an Integrity Report using the template at `templates/integrity-report-template.md`.

**Present findings:** Flag weaknesses, gaps, and suggestions. Don't just hand over the document — actively review it with the faculty member.

---

### Phase 6 — Finalize and Disclose

**Goal:** Polish for intended audience, apply disclosure, confirm release-readiness.

- Ensure format matches institutional requirements (committee expectations, accreditation templates if applicable)
- Verify all required sections are present
- Confirm submission-readiness: formatting, length, required elements
- If committee-facing: ensure language meets governance conventions
- If student-facing: ensure accessibility and clarity
- **Apply disclosure statement** — select the appropriate template from the Disclosure Protocol (`.claude/reference/disclosure-protocol.md`):
  - Course syllabi/learning materials → "AI-Assisted Development" template
  - Institutional reports/briefs → "Methodology Note" template
  - Application materials → "AI Collaboration Disclosure" template
  - Scholarship → "AI Disclosure" template

---

## Designing for Student ESF Engagement (Level 2)

When developing student-facing assignments and briefs, evaluate them against the Level 2 ESF criteria:

1. **Prompt clarity** — Can students write a genuine Position Statement from this brief?
2. **Human-first sequencing** — Does the brief specify when AI can be used?
3. **Position Statement requirement** — Is it explicitly required before AI engagement?
4. **Process artifacts** — Does the brief require Records of Resistance or equivalent documentation?

If any of these are missing, surface them as suggestions. The faculty member decides whether to adopt.

---

## Role Distribution

**Faculty member (strategic decisions):**
- Sets course vision and learning priorities
- Selects from structural options
- Makes pedagogical judgment calls
- Writes the Directive Memo (human only — no AI assistance)
- Decides what students are ready for
- Evaluates institutional fit and committee readiness
- Defines how AI should be used in the course

**AI (structured support):**
- Gathers context from program docs and research
- Proposes structural options with tradeoffs
- Builds content after decisions are made, guided by the Directive Memo
- Cross-references alignment and consistency (including memo drift detection)
- Flags weaknesses and gaps proactively
- Formats for institutional requirements

## Anti-Patterns

- **Producing a complete syllabus without elicitation** — Always scope before building, always present options before drafting.
- **Skipping the Directive Memo** — For Full Mode tasks, do not proceed to content creation without a Directive Memo. Do not offer to write the memo or suggest its content.
- **Silently overriding the Directive Memo** — Surface tensions; do not substitute AI framing for stated intent.
- **Over-building before checking in** — Build in sections, not in one monolithic pass.
- **Skipping program alignment** — Every course connects to others. Cross-reference the curriculum sequence.

## Reference Documents

- `.claude/reference/epistemic-stewardship.md` — Full ESF curriculum development reference
- `.claude/reference/disclosure-protocol.md` — Disclosure templates by document type
- `templates/integrity-report-template.md` — Integrity audit template
- `templates/directive-memo-template.md` — Directive Memo template
