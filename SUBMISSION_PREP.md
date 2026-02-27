---
title: "ESF Submission Preparation"
type: submission-prep
last-updated: 2026-02-24
manuscript-version: "3.1"
status: in-progress
---

# ESF Submission Preparation

Working task list for preparing the Epistemic Stewardship Framework manuscript for publication. Tasks are venue-agnostic by default; tailoring notes mark what changes per venue type.

**Manuscript location:** `Writing/epistemic-stewardship/`
**Manuscript status:** `MANUSCRIPT_STATUS.md`

---

## Venue Decision (Do This First)

- [ ] **Select target venue**: until this is decided, all length/format tasks are blocked
  - **Journal article** (6,000–10,000 words): *Computers & Education*, *Teaching in Higher Education*, *Higher Education Research & Development*, *AI & Society*
  - **Conference paper** (3,000–6,000 words): EDUCAUSE Annual, FLN Symposium, AERA
  - **Edited volume chapter** (5,000–8,000 words): invitation or open call: check CFPs
  - **Practitioner publication** (2,000–4,000 words): *EDUCAUSE Review*, *Inside Higher Ed*, *Chronicle*

- [ ] **Read submission guidelines** for selected venue: note word limit, formatting, citation style, abstract requirements, blind review policy

---

## Phase 1; Core Document (Venue-Agnostic)

These apply to any submission. Complete before tailoring.

### Abstract

- [ ] Draft a 200–300 word abstract covering: problem statement, framework description, scholarly basis, key contributions, implications
  - *Tailoring note:* Conference abstracts are often 150 words max; practitioner venues may want a plain-language lede

### Introduction

- [ ] Write a standalone introduction (750–1,000 words) that:
  - Opens with the concrete problem (AI tools commoditizing content production without protecting intellectual accountability)
  - Establishes the gap in existing frameworks
  - States the paper's contribution
  - Previews the structure
  - *Tailoring note:* For practitioner venues, reduce citations and add a practitioner-facing hook. For conference, tighten to 500 words.

### Conclusion

- [ ] Write a conclusion (500–750 words) that:
  - Summarizes the two-level architecture and 6 novel contributions
  - Addresses limitations honestly (single-practitioner validation, bootstrapping tension, citation verification gap)
  - Proposes concrete next steps (empirical validation, multi-institution pilot)
  - *Tailoring note:* Practitioner venues: end with 3 actionable takeaways. Conference: close with a research agenda.

---

## Phase 2; Manuscript Condensation

The full manuscript is modular (~35,000 words across all deliverables). A submission draws from those components.

- [ ] **Determine the core argument** of the submission: choose ONE:
  - Option A: Full framework introduction (Framework Document as spine)
  - Option B: Pedagogical application focus (Student Guide + AI course integration as primary evidence)
  - Option C: Institutional implementation (Institutional Guide + Accreditation Crosswalk as primary evidence)
  - Option D: Novel contributions + theoretical grounding (Literature Review + Comparison Matrix as primary evidence)

- [ ] **Draft a unified manuscript** from the selected components
  - Draw section summaries from existing deliverables: do not rewrite from scratch
  - Target word count determined by venue guidelines
  - Maintain the Two-Level Architecture as the central organizing concept

- [ ] **Compress the literature review** to an in-text synthesis (~800–1,200 words for a journal article): the full 7,000-word standalone review is a project document, not a submission section

- [ ] **Select 12–18 citations** from the 31-source bibliography as the tightest scholarly basis for the submission argument
  - *Note:* Full bibliography available at `research/`: select by concept cluster relevance to the submission's focus

---

## Phase 3; Citation and Reference Cleanup

- [x] ~~**Bearman 2024 verification**~~: **RESOLVED (2026-02-24).** Original citation was fabricated. Replaced with Bearman et al. (2023) *Higher Education* + Fischer et al. (2024) *AEIH* 49(2) 233–245. Both PDF-verified. Source count updated to 32.

- [x] **Hutson verification**: **RESOLVED (2026-02-24).** PDF confirmed: "Scaffolded Integration: Aligning AI Literacy with Authentic Assessment through a Revised Taxonomy in Education." FARJES, Vol. 2, Issue 1, 2025, pp. 29–54. All citation details verified.

- [ ] **Remaining 8 partially-confirmed sources**: full bibliographic check before submission
  - Sources confirmed via web search but not PDF: see `MANUSCRIPT_STATUS.md` Task A tracker for status
  - *Priority:* any source cited prominently in the selected submission argument

- [ ] **Format all citations** to the target venue's style (APA, MLA, Chicago, or venue-specific)
  - Full bibliography with DOIs available in `framework/ESF-Literature-Review.md`

---

## Phase 4; Disclosure and Integrity

- [ ] **AI disclosure statement**: finalize and include; match template to document type
  - Template: `.claude/reference/disclosure-protocol.md`
  - *Tailoring note:* Many academic journals do not accept AI-assisted authorship as primary drafting: check policy. Disclosure may need to be in acknowledgments rather than as a section.

- [ ] **Five Questions self-check** before submission:
  - [ ] Can I defend this?
  - [ ] Is this mine?
  - [ ] Did I verify?
  - [ ] Would I teach this?
  - [ ] Is the disclosure honest?

- [ ] Review `ESF-Integrity-Report.md` for open items: three pre-publication flags:
  1. Directive Memo bootstrapping tension: document in limitations
  2. Citation verification gap (23/31 need full bibliographic confirmation); resolve in Phase 3
  3. Single-practitioner validation: address in limitations

---

## Phase 5; Formatting and Submission Mechanics

*All items in this phase are venue-specific: complete after venue selection.*

- [ ] **Format manuscript** to venue template (anonymized if blind review)
- [ ] **Write cover letter**: include: article type, word count, alignment with venue focus, statement that it is not under review elsewhere
- [ ] **Prepare author bio** (50–100 words): institutional role, research focus, contact
- [ ] **Keywords**: 4–6 terms aligned with venue's taxonomy
  - Suggested: epistemic stewardship, AI-assisted academic work, faculty workflow, higher education, intellectual accountability, pedagogical framework
- [ ] **Confirm submission system** (ScholarOne, Editorial Manager, etc.) and create account if needed
- [ ] **Check for required supplementary materials** (data, instruments, permissions)

---

## Phase 6; Post-Submission

- [ ] Log submission in `MANUSCRIPT_STATUS.md` (venue, date, submission ID)
- [ ] Set calendar reminder for follow-up (typically 6–8 weeks for journals, conference notification varies)
- [ ] Prepare a revision response protocol: keep notes on reviewer concerns as they come in
- [ ] If rejected: review feedback, select alternate venue, update `MANUSCRIPT_STATUS.md`

---

## Quick Reference: What Requires Tailoring

| Task | Journal | Conference | Practitioner |
|------|---------|------------|--------------|
| Abstract | 200–300 words | 150 words max | 150 words, plain language |
| Introduction | Full scholarly | Tight 500 words | Hook-first, fewer citations |
| Word count | 6,000–10,000 | 3,000–6,000 | 2,000–4,000 |
| Citations | Full 12–18 | 8–12 | 4–8, accessible |
| Disclosure | Per journal AI policy | Per org policy | Standard acknowledgment |
| Limitations | Full section | Brief paragraph | Optional |
| Cover letter | Required | Abstract submission | Query letter |

---

*Last updated: 2026-02-24 | Manuscript v3.1*
