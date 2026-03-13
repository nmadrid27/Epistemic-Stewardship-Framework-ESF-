---
entities: [ESF]
---

# End-to-End Walkthrough: Faculty Toolkit

This walkthrough follows one faculty member through one task, start to finish. Every artifact she creates is shown. Every gate she crosses is documented.

By the end you will see what the ESF Level 1 process looks like in practice: not as a diagram, but as actual work.

---

## Meet Dr. Kim

Sarah Kim is an associate professor of illustration. She has used AI to draft course materials for two quarters but has no formal process for doing so. She heard about the ESF toolkit at a faculty workshop and wants to try it on a real task: designing a new project brief for her Intermediate Illustration course.

She chose this task because project briefs are medium-weight content: they shape student learning directly and carry her professional authority, but they are not as high-stakes as tenure materials or accreditation reports.

---

## Step 1: Install and Onboard

**Terminal:**

```bash
# Dr. Kim already has a faculty repo from last quarter
cd ~/faculty-teaching
curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash
```

**Then in Claude Code:**

```
claude
/esf-onboarding
```

Onboarding asks:

1. **Name:** Sarah Kim
2. **Institution:** [her university]
3. **Department:** Illustration
4. **Courses this term:** ILLU 225 (Intermediate Illustration), ILLU 340 (Advanced Studio)

Then it asks if she has project briefs to provide. She drops her existing ILLU 225 brief into `courses/illu-225/briefs/`. The toolkit reviews it against five ESF alignment criteria and offers suggestions. She notes the feedback, decides to address it in the new brief she is about to write.

**Her repo after onboarding:**

```
faculty-teaching/
├── .claude/
│   ├── agents/esf-faculty.md        ← personalized: Sarah Kim, Illustration
│   ├── skills/
│   │   ├── esf-onboarding/
│   │   ├── curriculum-dev/
│   │   └── document-production/
│   └── reference/
├── courses/
│   ├── illu-225/
│   │   ├── briefs/
│   │   │   └── existing-brief-narrative-series.md
│   │   └── materials/
│   └── illu-340/
│       ├── briefs/
│       └── materials/
├── templates/
│   ├── directive-memo-template.md
│   ├── integrity-report-template.md
│   └── course-ai-policy-template.md
└── WORKFLOW.md
```

---

## Step 2: Assess Content Epistemic Weight

Before starting, Dr. Kim determines the weight of her task.

**The question:** How much intellectual authority does this content carry?

| Weight | Criteria | Examples |
|--------|----------|---------|
| **High** | Your professional reputation or institutional standing depends on accuracy | Tenure materials, exams, accreditation reports |
| **Medium** | Shapes student learning directly, represents your professional judgment | Syllabi, project briefs, rubrics, committee reports |
| **Low** | Administrative or logistical, minimal intellectual stakes | Schedules, agendas, resource lists |

A project brief is **medium weight**. It shapes how students approach a 4-week assignment. It carries her name and her pedagogical judgment. But it is not a tenure document or an exam.

**Medium weight requires:** Scope, Direct (abbreviated Directive Memo), Build, Validate, Disclose.

---

## Step 3: Scope the Task

Dr. Kim defines the parameters before writing anything.

**What she determines:**

- **Audience:** Sophomore illustration students (15 in section)
- **Purpose:** A 4-week editorial illustration project connecting students' visual storytelling to current events
- **Format:** Standard institutional brief format with learning outcomes, deliverables, timeline, and grading criteria
- **Constraints:** Must align with ILLU 225 course outcomes. Must include critique checkpoints at Weeks 2 and 4. Students use their own tools and media.

She writes these down in plain text. This is not a template; it is thinking.

---

## Step 4: Write the Directive Memo (No AI)

Dr. Kim opens `templates/directive-memo-template.md` and fills it in. This is the critical step: she establishes her intellectual direction before AI sees the task.

**Her completed Directive Memo:**

```markdown
# Directive Memo

**Document:** ILLU 225 Project Brief, Editorial Illustration Series
**Date:** 2026-03-15
**Content Epistemic Weight:** Medium

## Thesis

This brief asks students to produce a 3-piece editorial illustration series
responding to a current event they select. The core pedagogical purpose is
connecting illustration skill to editorial judgment: students must argue
a visual position on a real topic, not just demonstrate technique.

## Emphasis

- Students choose their own topic. The brief does not prescribe subject matter.
- Visual argument is the assessment focus, not rendering quality.
- Process documentation (thumbnails, research, revisions) is a required
  deliverable, not optional.

## De-Emphasis

- Do not emphasize technical skill benchmarks. This is not a rendering exercise.
- Avoid language that frames illustration as decoration. Every piece argues
  something.

## Rationale

My students produce technically strong work but struggle to articulate what
their illustrations say. They default to "it looks good" rather than
"it argues X." This brief creates conditions where visual argument is the
primary success criterion.

## Voice

Direct and practical. This is a working document students reference weekly.
No inspirational language. Clear deliverables, clear timeline, clear criteria.

## Non-Negotiables

- Students must select a real current event (not hypothetical)
- 3-piece series minimum (not a single illustration)
- Thumbnail phase required before any final rendering begins
- Critique at Week 2 (concept review) and Week 4 (final crit)
- Process documentation is graded, not just final pieces

## Ownership Test

- [x] I wrote this memo before seeing any AI-generated content for this brief
- [x] The thesis reflects my actual pedagogical position
- [x] I can explain my rationale to a colleague without referencing AI
- [x] The non-negotiables are based on what I know my students need
```

That took 12 minutes. She wrote it in one sitting, no revisions needed. The Ownership Test confirmed she is ready to proceed.

---

## Step 5: Build (AI-Assisted Drafting)

Dr. Kim opens Claude Code with her Directive Memo saved. She asks the AI to draft a project brief guided by the memo.

**What she says:**

> I need to draft a project brief for ILLU 225. My Directive Memo is in courses/illu-225/directive-memos/editorial-series-memo.md. Follow it closely. Use the standard brief format.

**What the AI produces:** A full draft brief structured around her thesis. It includes learning outcomes, a 4-week timeline, deliverables (3 illustrations, thumbnail development, artist statement, process documentation), and grading criteria weighted toward visual argument.

**What she notices immediately:**

The AI added a section on "AI-assisted research" suggesting students could use AI to find current events. This was not in her Directive Memo. She flags it.

**Five Questions check (mid-build):**

| # | Question | Answer |
|---|----------|--------|
| 1 | Can I defend this? | Mostly. The structure follows my memo. The AI research section does not. |
| 2 | Is this mine? | The thesis and non-negotiables are mine. The AI research section is not. |
| 3 | Did I verify? | The learning outcomes align with ILLU 225 course goals. Checked. |
| 4 | Would I teach this? | Yes, except the AI section, which I would not have included. |
| 5 | Is my disclosure honest? | Not yet. I have not written disclosure. |

Question 2 flagged a problem. She removes the AI research section entirely. Students in ILLU 225 find their own topics; that is part of the editorial judgment she is building.

She also revises the grading criteria. The AI weighted "technical execution" at 30%. Her memo says visual argument is the focus. She changes it to 15% technical execution, 40% visual argument, 25% process documentation, 20% artist statement.

---

## Step 6: Validate (Alignment Check)

After revising, Dr. Kim runs the validation step: comparing the final brief against her Directive Memo point by point.

**Alignment check:**

| Memo Element | Brief Status | Notes |
|-------------|-------------|-------|
| Thesis: visual argument, not technique | Aligned | Grading weights revised to match |
| Emphasis: student choice, process documentation | Aligned | Both present and prominent |
| De-emphasis: no technical benchmarks, no "decoration" framing | Aligned | Technical execution at 15%, not 30% |
| Non-negotiable: real current event | Present | Brief requires topic selection by Week 1 |
| Non-negotiable: 3-piece series | Present | Clearly stated in deliverables |
| Non-negotiable: thumbnails before rendering | Present | Week 2 concept review serves as gate |
| Non-negotiable: process documentation graded | Present | 25% of grade |
| AI research section (not in memo) | Removed | Caught and removed during Build |

**Final Five Questions:**

| # | Question | Answer |
|---|----------|--------|
| 1 | Can I defend this? | Yes. Every element traces to my Directive Memo. |
| 2 | Is this mine? | Yes. The revisions I made are the brief's defining choices. |
| 3 | Did I verify? | Yes. Learning outcomes checked against ILLU 225 course goals. |
| 4 | Would I teach this? | Yes. I will use this brief starting Week 5. |
| 5 | Is my disclosure honest? | Yes. See below. |

All five answered yes. She proceeds to disclosure.

---

## Step 7: Disclose

For medium-weight content, Dr. Kim writes a standard disclosure (not a full Integrity Report; those are required for high-weight content only).

**Her disclosure** (appended to the brief):

> This project brief was produced through human-AI collaboration. Sarah Kim directed all pedagogical decisions, including the assessment focus on visual argument over technical execution, the requirement for process documentation as a graded deliverable, and the 4-week timeline with critique checkpoints. AI contributed structural drafting based on a Directive Memo written before any AI engagement. An AI-generated section on AI-assisted topic research was removed during revision as inconsistent with the course's editorial judgment goals. Grading weights were revised from AI's initial proposal to reflect the instructor's pedagogical priorities.

Specific. Honest. Documents both what AI contributed and what she changed.

**The toolkit also saves a Gate Verification Record** at `courses/illu-225/gate-records/editorial-series-gate-record.md`, documenting that all Five Questions were answered affirmatively at both the mid-build and final validation checkpoints.

---

## What Dr. Kim's Repo Looks Like Now

```
faculty-teaching/
├── .claude/
│   └── [toolkit configuration]
├── courses/
│   ├── illu-225/
│   │   ├── briefs/
│   │   │   ├── existing-brief-narrative-series.md
│   │   │   └── editorial-illustration-series.md    ← the new brief
│   │   ├── directive-memos/
│   │   │   └── editorial-series-memo.md            ← her intellectual direction
│   │   ├── gate-records/
│   │   │   └── editorial-series-gate-record.md     ← validation record
│   │   └── materials/
│   └── illu-340/
│       └── [empty, not yet used]
├── templates/
└── WORKFLOW.md
```

Every artifact has a clear function. The Directive Memo records what Dr. Kim decided before AI saw the task. The brief itself reflects her revisions and judgment calls. The gate record documents that she validated the output against her own stated position. The disclosure is part of the brief, not a separate form.

---

## What Changes at High Weight

If Dr. Kim were writing a tenure narrative or an accreditation self-study (high-weight content), two things change:

1. **The Directive Memo is longer.** High-weight tasks require a full memo, not abbreviated. The thesis, rationale, and non-negotiables are more detailed because the stakes demand it.
2. **An Integrity Report replaces the gate record.** The Integrity Report documents the full audit trail: what the AI produced, what she changed, what she verified independently, and how the final document maps to her Directive Memo.

The process is the same. The documentation scales with the stakes.

---

## What Changes at Low Weight

If Dr. Kim were formatting a reading list or scheduling office hours (low-weight content), the full workflow is not needed. She skips the Directive Memo and goes straight from Scope to Build, with an attribution footer:

> Formatted with AI assistance.

Low-weight content does not require validation gates or disclosure statements. The Content Epistemic Weight system prevents the framework from becoming overhead on tasks that do not carry intellectual stakes.

---

## Key Takeaways

1. **The Directive Memo is yours alone.** 12 minutes of writing before AI engages. Those 12 minutes are where intellectual ownership is established.
2. **AI drafts; you direct.** The AI produced a complete brief. Dr. Kim removed a section, revised grading weights, and verified alignment. The final brief reflects her judgment, not the AI's defaults.
3. **The Five Questions caught a real problem.** Question 2 ("Is this mine?") identified the AI research section as something she would not have included. The framework surfaced it; she removed it.
4. **Disclosure is specific, not performative.** "Produced with AI" tells the reader nothing. Dr. Kim's disclosure names what AI did, what she changed, and why. That specificity is what makes it honest.
5. **Weight scales the process, not the principle.** The same intellectual ownership principle applies at every level. The documentation just matches the stakes.

---

*Epistemic Stewardship Framework, Faculty Toolkit Walkthrough*
*Based on a medium-weight task: designing a project brief for ILLU 225*
