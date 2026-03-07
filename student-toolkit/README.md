# ESF Student Toolkit

The Epistemic Stewardship Framework (ESF) Student Toolkit supports your AI-assisted coursework, helping you develop and maintain your own ideas while working alongside AI.

The ESF process works with any AI tool. This toolkit installs into **your own portfolio repo**, which you carry across the entire Applied AI program (AI 101 → AI 180 → AI 201 → AI 301). Your projects, position statements, and records of resistance accumulate there. The toolkit is the configuration layer; the work is yours.

---

## Which Setup Is Right for You?

| Setup                         | Best for                                        | What you get                                                                               |
| ----------------------------- | ----------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **Claude Code** (recommended) | Students using the terminal, or cowork          | Automatic context loading, file system checks, `/esf-onboarding` and `/esf-project` skills |
| **Any other AI tool**         | Students using ChatGPT, Gemini, Claude.ai, etc. | Plain-text prompts you paste at the start of each session                                  |

Both paths follow the same ESF process. Claude Code automates more of the workflow. The `prompts/` folder works anywhere.

---

## Prerequisites (Claude Code)

- [Claude Code](https://claude.ai/code) installed
- A GitHub account
- Git installed on your computer

Your instructor will confirm whether a Claude subscription is required for your course.

---

## Setup (One Time)

### Step 1: Create your portfolio repo

Create a new GitHub repository. Name it something you'll carry for four courses (for example, `applied-ai-portfolio` or `firstname-lastname-ai-portfolio`).

Make it **private** to keep your in-progress work protected. You can make it public later if you want to share your portfolio.

```bash
# Clone it to your computer
git clone https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
cd YOUR-REPO-NAME
```

### Step 2: Install the ESF Student Toolkit

Run this from inside your portfolio repo:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
```

The installer drops the `.claude/` configuration files into your repo. It takes about 30 seconds.

### Step 3: Run onboarding

```bash
claude
```

Then in Claude Code:

```
/esf-onboarding
```

Onboarding takes about 5 minutes. It asks for your name, degree program, and current course, then creates your project folder structure and personalizes your toolkit.

---

## Session Memory

The toolkit tracks your process across sessions so you do not lose context between work sessions.

**During each session:** The toolkit silently records your Five Questions responses, Records of Resistance, and Position Statement drift checks as they happen during the normal ESF process. No extra steps required.

**At the end of each session:** When you finish working, the toolkit generates a brief session log summarizing what happened: decisions made, questions answered, where you left off, and how your prompting evolved. You review and confirm it before it saves.

**At the start of each session:** The toolkit reads your last session log and orients you: "Last session you were working on X in Phase 4. You noted you wanted to verify the source in Section 2. Want to pick up there?"

**Across projects:** When you complete a project, the toolkit snapshots your growth metrics: Five Questions pass rate, Records of Resistance count, prompt evolution patterns. Over four courses, this builds a visible record of your development as an AI collaborator.

Your session logs live in `projects/[course]/logs/` and are yours to review anytime.

---

## Each New Course

When you start a new course in the program, re-run onboarding:

```bash
claude
/esf-onboarding
```

Say "update" when prompted. Onboarding will add the new course to your toolkit and create the right folder structure. Your previous courses and projects stay untouched.

---

## How It Works

The toolkit follows the ESF Level 2 process: **Inquire → Position → Explore → Make → Reflect**

**The critical rule: AI does not enter your project until you have written a Position Statement.**

This is not optional; the toolkit enforces it. Before the AI will help with any project, it checks for a Position Statement file. If none exists, it stops and explains why. Your Position Statement records your own thinking before AI can shape your direction. It is what keeps your work yours.

Your Position Statement does not need to be polished. Rough outlines, bullet points, and fragments are fine. What matters is that it captures your direction. When you bring it to Phase 3, the AI's first action is a readability pass: cleaning up grammar and sentence structure without changing your ideas. You review the cleaned version and confirm it still says what you meant before any exploration begins.

Once your Position Statement is confirmed, the AI acts as a thinking partner, generating alternatives to challenge your position, asking questions, surfacing counterarguments. It does not originate direction.

---

## Your Folder Structure

After onboarding for your first course:

```
your-portfolio-repo/
├── .claude/                        ← Toolkit configuration (don't edit manually)
│   ├── agents/
│   │   └── esf-student.md          ← Your personalized identity
│   ├── skills/
│   │   ├── esf-onboarding/         ← Setup wizard (/esf-onboarding)
│   │   └── esf-project/            ← Level 2 workflow skill (/esf-project)
│   └── reference/                  ← ESF guides and protocols
├── templates/
│   ├── ai-use-log-template.md      ← AI Use Log format
│   ├── student-reflection-template.md
│   ├── session-log-template.md     ← Auto-generated session logs
│   └── evolution-log-template.md   ← Track how your ESF practices evolve
├── projects/
│   └── [your-course]/
│       ├── briefs/                 ← Drop your instructor's project brief here
│       ├── position-statements/    ← Write this before any AI engagement
│       ├── records-of-resistance/  ← Your deliberate choices about AI output
│       ├── logs/                   ← Session logs (auto-generated)
│       └── work/                   ← Your project output
└── WORKFLOW.md                     ← ESF Level 2 process diagram
```

After AI 301, your `projects/` folder spans all four courses: a documented record of your development across the program.

---

## Updating the Toolkit

When a new version of the toolkit is released, re-run the installer from inside your portfolio repo:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
```

Your projects and personalized agent file are not affected.

---

## Testing the Toolkit

To try the toolkit before setting up your own profile, install with sample data:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash -s -- --sample
```

This installs a pre-filled AI-201 student profile (Alex Rivera, Responsive System project, Explore phase) with a project brief, position statement, and one Record of Resistance already in place.

Open Claude Code and say: "I want to keep working on my responsive system." The toolkit will load immediately without onboarding.

See `sample/README.md` for what to test and how to interpret the sample files.

---

## Using Other AI Tools

If you are not using Claude Code, use the plain-text prompts in the `prompts/` folder:

- `prompts/student-companion.md`: fill in your info and paste as your system prompt
- `prompts/project-workflow.md`: paste at the start of any project session
- `prompts/README.md`: full instructions for non-Claude Code setup

The same ESF process applies. The difference is that you paste context manually rather than having the toolkit load it automatically.

---

## Why This Matters Beyond the Classroom

The practices ESF builds are the same practices creative professionals use every day.

- **Position Statement = portfolio evidence of creative direction.** In a studio or agency, you pitch before you produce. A Position Statement is a creative brief you write for yourself. It proves you can define intent, set constraints, and direct a process. That is what hiring managers and creative directors look for.
- **Records of Resistance = demonstrable creative judgment.** Every working creative rejects ideas that do not serve the project, including their own. Your Records of Resistance document that editorial instinct in action. They show you can evaluate output critically, not just generate it.
- **Five Questions = professional practice.** "Can I defend this?" is the question every designer, illustrator, and creative technologist answers in client reviews, critiques, and portfolio presentations. Practicing it now means it is second nature when the stakes are real.

Your ESF portfolio is not just coursework. It is a documented record of how you think, decide, and direct creative work with AI. That record travels with you after graduation.

---

## Questions

Ask your instructor if something isn't working. The ESF Student Guide is in `.claude/reference/esf-student-guide.md` if you want to understand the method behind the process.

For the plain-text prompt version, the same content is in `prompts/project-workflow.md`.
