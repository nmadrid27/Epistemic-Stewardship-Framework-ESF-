# Applied AI Curriculum Team — Onboarding

Welcome to the Applied AI curriculum team. This document is your start point. It covers what you're building, how the process works, how to get set up, and where everything lives. Read it before anything else.

---

## What We're Building

The Applied AI degree is a four-year program that develops AI fluency in creative practitioners — not as engineers, but as directors and intentional users of AI systems.

The foundational pipeline is:

```
AI 101: DISCOVER  →  AI 180: THINK  →  AI 201: BUILD  →  AI 301: DESIGN
```

Each course builds on the last. Students who skip ahead lose the foundation. The program is designed sequentially and must be taught that way.

**The "Creatives First" principle runs through everything.** Every activity produces a portfolio artifact, not a written analysis. Students choose their own tools based on their research and creative goals — we do not prescribe specific tools. Examples come from art, design, and media. Assessment is studio-based.

Read the program overview for the full picture before working on course content:
[Applied AI Program and Epistemic Stewardship — Overview](https://github.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/blob/main/implementation-guide/ESF-Faculty-Guide.md)

---

## The Methodology: Epistemic Stewardship Framework (ESF)

The ESF is integrated into the program's instructional design. It is not a separate policy layer — it is how curriculum development works on this team.

It operates at two levels:

**Level 1 (you):** Faculty and curriculum developers use AI to produce course materials while maintaining genuine intellectual authority over what they create. The process is: Scope → Direct → Build → Validate → Disclose. The core requirement is a **Directive Memo** — a short document you write before AI-assisted drafting begins, establishing your intellectual direction. AI follows that direction. It does not originate it.

**Level 2 (students):** Students use AI in their coursework through a structured process that requires them to form their own position before AI engagement begins. Faculty-designed assignments create the conditions for students to practice this. The two levels are connected: how you design an assignment shapes how well students can engage with it epistemically.

The ESF is documented at: [github.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-](https://github.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-)

---

## Getting Set Up

You need two things: **Claude Code** and the **ESF Faculty Toolkit**.

### Step 1 — Install Claude Code

[claude.ai/code](https://claude.ai/code) — follow the install instructions. Contact Nathan if you need account access.

### Step 2 — Create your faculty repo

Create a new GitHub repository for your curriculum work. Name it something like `applied-ai-faculty` or `firstname-lastname-curriculum`. Clone it to your computer.

```bash
git clone https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
cd YOUR-REPO-NAME
```

### Step 3 — Install the ESF Faculty Toolkit

Run this from inside your faculty repo:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash
```

### Step 4 — Run onboarding

```bash
claude
```

Then in Claude Code:

```
/esf-onboarding
```

Onboarding takes 10–15 minutes. It collects your courses and reviews any project briefs you provide for ESF alignment. At the end, your toolkit is personalized and your folder structure is ready.

---

## How Curriculum Development Works

Once set up, the workflow for any course content is:

**1. Assess the weight of what you're building.**
- *High weight* (exams, capstone rubrics, assessment criteria): Directive Memo required, Integrity Report required
- *Medium weight* (assignments, syllabi, learning materials): standard workflow
- *Low weight* (schedules, resource lists, formatting): Scope → Build → attribution

**2. Write your Directive Memo before AI drafts anything.**
The memo captures your pedagogical intent: what this content should accomplish, what it should emphasize, what it should avoid, and what must be present regardless of how drafting goes. The `curriculum-dev` skill will prompt you through this. You cannot skip it for high- or medium-weight content.

**3. Use the `curriculum-dev` skill for course materials.**
In Claude Code, describe what you're building and the skill activates. It walks you through Scope, Direct, Build, Validate, and Disclose. At each gate, you review and confirm before moving forward.

**4. Validate against your Directive Memo.**
Before any content is finalized, check it against what you wrote in step 2. If it drifted, either revise the content or make a conscious decision that the drift was warranted and document it.

**5. Apply the Five Questions before submitting anything.**
1. Can I defend this? Could I explain every decision without citing AI reasoning?
2. Is this mine? Does this reflect my actual pedagogical position?
3. Did I verify? Have I checked facts, sources, and learning objective alignment?
4. Would I teach this? Am I ready to stand behind this content in the classroom?
5. Is my disclosure honest? Does my disclosure accurately reflect AI's contribution?

---

## What Is Fixed and What Is Flexible

**Fixed — do not alter:**
- Course catalog descriptions (locked; changes require formal curriculum committee approval)
- The "Creatives First" principle: every activity produces a portfolio artifact
- The sequential course pipeline: AI 101 → 180 → 201 → 301

**Flexible — your domain:**
- Module sequencing within courses
- Project briefs and assignment design
- Assessment rubric language
- Specific activities and studio exercises
- Examples and reference material

When in doubt about whether something is fixed, ask Nathan before drafting.

---

## Where Everything Lives

| Location | What's There |
|----------|-------------|
| [ESF Framework Repo](https://github.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-) | Framework documentation, guides, workflow diagrams, install scripts |
| `faculty-toolkit/.claude/reference/esf-faculty-guide.md` | Full Level 1 workflow in depth (in your installed toolkit) |
| `faculty-toolkit/.claude/reference/esf-student-guide.md` | Full Level 2 student workflow (in your installed toolkit) |
| `faculty-toolkit/templates/` | Directive Memo, Integrity Report, Course AI Policy templates |
| `courses/[course]/briefs/` | Project briefs reviewed at onboarding (in your faculty repo) |
| `courses/[course]/materials/` | Course content you build with the curriculum-dev skill |

---

## Questions

Contact Nathan Madrid — nmadrid@scad.edu

If something in the toolkit isn't working, re-run `/esf-onboarding` first. Most configuration issues resolve at onboarding.

---

*Applied AI Curriculum Team | ESF-Integrated Development Process*
*Nathan Madrid*
