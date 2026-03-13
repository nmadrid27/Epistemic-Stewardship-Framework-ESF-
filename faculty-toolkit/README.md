# ESF Faculty Toolkit

The Epistemic Stewardship Framework (ESF) Faculty Toolkit configures Claude Code to support your AI-assisted academic work (curriculum development, institutional documents, and course design) while keeping your intellectual authority intact.

This toolkit installs into **your own faculty repo**, which holds your courses, project briefs, and materials. The toolkit is the configuration layer; your work is yours.

---

## Prerequisites

- [Claude Code](https://claude.ai/code) installed
- A GitHub account
- Git installed on your computer

---

## Setup (One Time)

### Option A: New to Git? Use the Setup Script

If you have not used git or GitHub before, run this single command. It creates a repository, initializes git, optionally pushes to GitHub, and installs the toolkit for you:

```bash
curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/setup-repo.sh | bash
```

The script asks for a repo name and your name, handles everything else, then drops you into a ready-to-use workspace. Skip to **Step 3: Run onboarding** below.

### Option B: Already Comfortable with Git

#### Step 1: Create your faculty repo

Create a new GitHub repository. Name it something that makes sense for your work (for example, `faculty-toolkit` or `firstname-lastname-teaching`).

```bash
# Clone it to your computer
git clone https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
cd YOUR-REPO-NAME
```

#### Step 2: Install the ESF Faculty Toolkit

Run this from inside your faculty repo:

```bash
curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash
```

The installer drops the `.claude/` configuration files and templates into your repo. It takes about 30 seconds.

### Step 3: Run onboarding

```bash
claude
```

Then in Claude Code:

```
/esf-onboarding
```

Onboarding takes 10 to 15 minutes. It collects your name, institution, department, and courses, then asks for any project briefs you want to provide. It reviews each brief against five ESF alignment criteria and offers specific suggestions before you finalize.

---

## Each New Term

When you start a new term or add a course, re-run onboarding:

```bash
claude
/esf-onboarding
```

Say "update" when prompted. Onboarding will add the new course and review any new briefs. Previous courses and materials stay untouched.

---

## How It Works

The toolkit follows the ESF Level 1 process for faculty content production: **Scope → Direct → Build → Validate → Disclose**

The critical mechanism: before AI-assisted drafting begins on any high- or medium-weight content, you write a **Directive Memo**, a brief document establishing your intellectual direction that the AI must follow, not originate. The toolkit will not draft this memo for you. It is yours alone.

---

## Your Folder Structure

After onboarding:

```
your-faculty-repo/
├── .claude/                              ← Toolkit configuration (don't edit manually)
│   ├── agents/
│   │   └── esf-faculty.md               ← Your personalized identity
│   ├── skills/
│   │   ├── esf-onboarding/              ← Setup wizard (/esf-onboarding)
│   │   ├── curriculum-dev/              ← Course design workflow
│   │   ├── document-production/         ← Institutional document workflow
│   │   └── course-microsite/            ← Student-facing course site builder (optional)
│   └── reference/                       ← ESF guides and protocols
│       ├── esf-faculty-guide.md
│       ├── esf-student-guide.md         ← Understand your students' experience
│       ├── disclosure-protocol.md
│       └── epistemic-stewardship.md
├── courses/
│   └── [your-course]/
│       ├── briefs/                      ← Project briefs (ESF-reviewed at onboarding)
│       └── materials/                   ← Course content built with curriculum-dev skill
├── documents/
│   └── session-logs/                    ← Auto-generated session logs
├── templates/
│   ├── directive-memo-template.md
│   ├── integrity-report-template.md
│   ├── course-ai-policy-template.md
│   ├── session-log-template.md
│   └── evolution-log-template.md
└── WORKFLOW.md                          ← Full ESF architecture diagram (both levels)
```

---

## Session Memory

The toolkit tracks your work across sessions so you do not lose context between conversations.

**During each session:** The toolkit silently records your Five Questions responses, Directive Memo drift checks, and Content Epistemic Weight decisions as they happen during the normal ESF process. No extra steps required.

**At the end of each session:** When you finish working, the toolkit generates a brief session log: what was built, decisions made, memo alignment, and what needs attention next. You review and confirm before it saves.

**At the start of each session:** The toolkit reads your last session log and orients you with specific context rather than starting from scratch.

Session logs live in `documents/session-logs/` and are yours to review anytime.

---

## Your Two Roles

The ESF operates at two levels. This toolkit supports **Level 1**, your role as a content producer using AI while maintaining your professional intellectual authority.

Your students use a separate **Level 2** process through the **ESF Student Toolkit**, a parallel Claude Code setup they install into their own portfolio repos. See the section below for what that experience looks like, and see `reference/esf-student-guide.md` for the full student method.

### What the Student Toolkit Does

The student toolkit enforces the Level 2 process structurally, not just rhetorically.

**Onboarding:** Students run `/esf-onboarding` to configure their toolkit with their name, degree program, and courses. They place your project brief in their `briefs/` folder; the toolkit uses it as context throughout the project.

**The Position Statement gate:** When a student begins a project, the AI checks for a Position Statement file before it will assist with any project work. If none exists, it refuses and explains why. Students must write their Position Statement (their stance, what matters most, what they will not compromise on) without AI, before any collaboration begins.

**AI as Socratic partner:** Once a Position Statement exists, the AI generates alternatives to challenge the student's position, asks questions, and surfaces counterarguments. It does not originate direction.

**Records of Resistance:** Students document what they kept, revised, or rejected from AI output, and why, referenced back to their Position Statement.

**What this means for brief design:** Briefs that require students to form a position before producing anything work well with the gate structure. Briefs that jump straight to production without creating space for inquiry create friction at the gate. The brief review during your onboarding addresses this directly.

Assignment design guidance is in Section G of `reference/esf-faculty-guide.md`.

---

## Course Microsites (Optional)

Build an interactive student-facing course website from your syllabus, session plans, and project briefs. Students get a navigable site with course overview, week-by-week content, project detail pages, ESF templates, and policies, accessible from any browser.

**Additional prerequisites:** Node.js (v18+) and pnpm. Vercel CLI if you want one-command deployment.

### Option A: Use the GitHub Template (Recommended)

The fastest path. Click **"Use this template"** on the [ESF Course Microsite](https://github.com/nmadrid27/esf-course-microsite) repo to create your own copy.

```bash
git clone https://github.com/YOUR-USERNAME/YOUR-SITE.git
cd YOUR-SITE
pnpm install
```

Edit `src/data/course-data.json` with your course content (the file ships with placeholder data showing the expected structure), or use the included compiler to generate it from your vault:

```bash
node scripts/compile.mjs /path/to/your/course/folder
```

Preview locally with `pnpm dev:vite`, then deploy:

```bash
pnpm run build
vercel deploy --prod
```

Full setup instructions are in the [template repo README](https://github.com/nmadrid27/esf-course-microsite#readme).

### Option B: Use the Claude Code Skill

If you prefer to work entirely within Claude Code, the toolkit includes a `course-microsite` skill. Tell Claude:

```
Build a microsite for courses/my-course
```

Claude reads your content, compiles it into structured data, scaffolds the React project, and produces a deployable site. See `.claude/skills/course-microsite/SKILL.md` for the full workflow.

---

## Updating the Toolkit

When a new version of the toolkit is released, re-run the installer from inside your faculty repo:

```bash
curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash
```

Your courses, materials, and personalized agent file are not affected.

---

## Questions

The ESF Faculty Guide (`reference/esf-faculty-guide.md`) is the primary reference. For framework questions, see the [ESF project repository](https://github.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-).
