---
type: architectural-decision
project: Epistemic Stewardship Framework
created: 2026-02-19
status: proposed
tags: [esf, two-level-model, student-process, design-thinking, socratic-method]
decision-by: Nathan Madrid
---

# ESF Architectural Decision: Two-Level Framework

## Decision

The Epistemic Stewardship Framework operates at two distinct levels with different process models, audiences, and purposes.

**Level 1: Content Production** (faculty, administrators, institutional leaders)
Uses the ESF workflow (Scope, Direct, Build, Validate, Disclose) to produce AI-assisted work with epistemic rigor. The Directive Memo, Content Epistemic Weight, Human Validation Gates, and Disclosure Protocol operate here. These practitioners are *authors* responsible for what they put into the world.

**Level 2: Epistemic Development** (students)
Uses a design thinking and Socratic process (Inquire, Position, Explore, Make, Reflect) to develop epistemic agency through coursework that engages with AI. Human gates require students to demonstrate their own thinking *before* AI enters the process. These learners are developing the capacity to become Level 1 practitioners.

## Rationale

The previous design treated faculty and students as parallel audiences receiving the same framework at different intensities. The two-level model recognizes a fundamental difference:

- Level 1 gates ask: **"Is this good enough to put into the world?"** (quality assurance)
- Level 2 gates ask: **"Do I actually understand what I'm doing?"** (learning verification)

Faculty *create the conditions* in which students develop. A professor using ESF Level 1 to design an assignment is also designing the epistemic environment a student works within at Level 2.

## Level 2 Student Process Model

| Phase | Design Thinking | Socratic Element | Human Gate |
|-------|----------------|------------------|------------|
| **Inquire** | Empathize | What is the problem? What do I already know? What assumptions am I making? | *Can I explain this in my own words?* |
| **Position** | Define | What is MY stance? What do I care about? What's non-negotiable? | *Have I written my position before consulting AI?* |
| **Explore** | Ideate | Engage AI as thinking partner. Generate options, challenge assumptions, pressure-test thinking. | *Can I distinguish my ideas from AI's suggestions?* |
| **Make** | Prototype | Build the work product with AI assistance, Five Questions active. | *Does this still reflect my position, or did I drift?* |
| **Reflect** | Test | Evaluate output, document what was kept/revised/rejected and why. | *Can I defend every part of this?* |

**Critical design move:** AI does not enter until Phase 3. Phases 1 and 2 are human-only. The Socratic questioning forces students to articulate their own understanding and position *before* they have AI output to react to. This is the epistemic ownership mechanism at the student level.

## Scholarly Basis

### "Human First, AI Second" Principle

| Source | Model | Key Insight |
|--------|-------|-------------|
| Hutson (2025). "Scaffolded Integration." *FARJES*, 2(1), 29-54. | Three-Tiered Scaffolded Framework | Independent proficiency required before AI access; timed tasks and oral defenses verify mastery |
| Washington State OSPI (2024/2025). *Washington Student Scaffolding Scale*. | H-AI-H Cycle | Every AI interaction bookended by human inquiry (before) and human reflection (after) |
| Pasmala, Hinon, & Wannapiroon (2026). "Research-Based Learning Integration with AI Research Assistants." *Higher Education Studies*, 16(1), 395-416. [PREPRINT — verify] | 5-Stage RBL Model | 90% human cognitive load on problem identification before AI assists |

### Socratic Questioning as Gate Mechanism

| Source | Model | Key Insight |
|--------|-------|-------------|
| Naeem (2025). "Teaching Skills and Intellectual Virtues with Generative AI." *Episteme*, 1-18. | Q-Tutor | AI that teaches questioning as intellectual virtue, not just technique |
| Favero, Perez-Ortiz, Kaser, & Oliver (2024). "Enhancing critical thinking in education by means of a Socratic chatbot." *AI in Education Workshop*, Springer, 17-32. | Maike chatbot | Socratic method guides critical reflection in educational settings |
| Degen & Asanov (2025). "Beyond Automation: Socratic AI, Epistemic Agency..." *arXiv*. [PREPRINT] | Kassel Socratic experiments | Controlled experiment: Socratic AI Tutor produces better epistemic agency than uninstructed chatbot |

### Process Artifacts as Assessment

| Source | Mechanism |
|--------|-----------|
| Plate & Hutson (2025). "Composition Pedagogy as AI-Native Coding." *World Journal of Arts, Education and Literature*, 2(11), 1-10. | "Rhetorical event" logs, auditable histories |
| Stoyanov (2026). "Delegated Reasoning and Epistemic Accountability..." *Preprints.org*. [PREPRINT] | "Epistemic audit" and traceability |
| Gobbo (2024). "Teaching creative AI at the Royal College of Art." *IJADE*. | 3C Protocol: Compare, Challenge, Curate |

### Additional Model

| Source | Model | Key Insight |
|--------|-------|-------------|
| Lei et al. (2025). "Generative AI-enabled CDIO teaching model." *Computer Applications in Engineering Education*, 33(5). | CDIO (Conceive-Design-Implement-Operate) | Students as "systems architects" managing multi-step workflows; significant gains in computational thinking |

## Mapping to Applied AI Pipeline

| Course | Level 2 Operating Phases | Gate Complexity |
|--------|-------------------------|-----------------|
| AI 101 (Discover) | Inquire + Position: learning to articulate before AI | Scaffolded by instructor |
| AI 180 (Think) | Full process, guided: developing critical evaluation | Reflection documentation required |
| AI 201 (Build) | Full process, independent: engineering the AI interaction | Self-assessed with peer review |
| AI 301 (Design) | Full process + designing systems for others | Students create gates for their own projects |

## Implications for ESF Deliverables

### Must Change

1. **Framework Document (Phase 1):** Add two-level architecture as structural principle. The 7 core constructs remain but their application differs by level.
2. **Student Guide (Phase 4):** Structural rewrite. Replace simplified Scope, Direct, Build, Validate, Disclose with Inquire, Position, Explore, Make, Reflect. Reframe Four Engagement Levels around the new process.
3. **Faculty Guide (Phase 3):** Add section on designing assignments that enforce the Level 2 process (requiring Position Statements before AI access).
4. **Literature Review (Phase 2):** Incorporate 7+ new sources from this decision's scholarly basis.
5. **Novel Contributions (Phase 2):** The two-level architecture with distinct process models may itself be a novel contribution.

### May Change

6. **Institutional Guide (Phase 5):** Assessment rubrics should differentiate Level 1 (faculty production quality) from Level 2 (student epistemic development).
7. **Comparison Matrix:** Update to show that ESF's two-level design is unique among compared frameworks.

### Unchanged

8. **Disclosure Protocol:** Applies at both levels, no structural change needed.
9. **Vault Infrastructure (Phase 6):** Already complete, no re-work needed.

## Epistemic Markers

- [ESTABLISHED] Two-level institutional/student distinction: supported by multiple independent sources
- [ESTABLISHED] Human-first sequencing: three independent frameworks converge on this principle
- [ESTABLISHED] Socratic questioning as gate mechanism: experimental evidence (Degen & Asanov)
- [INFERRED] Design thinking phases as Level 2 process labels: mapping is structurally sound but no single source uses this exact 5-phase naming for AI-integrated student work
- [UNVERIFIED] Pasmala et al. (2026), Stoyanov (2026): dated 2026, need verification as preprints
- [PREPRINT] Degen & Asanov (2025): arXiv, not peer-reviewed

## Origin

This decision emerged from Nathan's review of the ESF Human Gates (2026-02-19) and a query to the Applied AI Research NotebookLM notebook. The original seed idea is documented in `Teaching/ideas/2026-02-16-bmad-for-educators.md`, which proposed adapting design thinking (Empathize, Define, Ideate, Prototype, Test) for educators working with AI. ESF Level 1 addresses the educator side. Level 2 addresses the student side that the original idea did not fully develop.

---

> **AI Collaboration Disclosure:** This architectural decision was developed through human-AI collaboration. Nathan identified the two-level need and the design thinking + Socratic connection. AI queried NotebookLM sources for scholarly support and structured the decision document. All scholarly sources are from Nathan's curated notebook; citations should be independently verified before incorporation into ESF deliverables.
