# ESF Student Toolkit

The Epistemic Stewardship Framework (ESF) Student Toolkit configures Claude Code to support your AI-assisted coursework — helping you develop and maintain your own ideas while working alongside AI.

This toolkit installs into **your own portfolio repo**, which you carry across the entire Applied AI program (AI 101 → AI 180 → AI 201 → AI 301). Your projects, position statements, and records of resistance accumulate there. The toolkit is the configuration layer; the work is yours.

---

## Prerequisites

- [Claude Code](https://claude.ai/code) installed
- A GitHub account
- Git installed on your computer

Your instructor will confirm whether a Claude subscription is required for your course.

---

## Setup (One Time)

### Step 1 — Create your portfolio repo

Create a new GitHub repository. Name it something you'll carry for four courses — for example, `applied-ai-portfolio` or `firstname-lastname-ai-portfolio`.

Make it **private** to keep your in-progress work protected. You can make it public later if you want to share your portfolio.

```bash
# Clone it to your computer
git clone https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
cd YOUR-REPO-NAME
```

### Step 2 — Install the ESF Student Toolkit

Run this from inside your portfolio repo:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
```

The installer drops the `.claude/` configuration files into your repo. It takes about 30 seconds.

### Step 3 — Run onboarding

```bash
claude
```

Then in Claude Code:

```
/esf-onboarding
```

Onboarding takes about 5 minutes. It asks for your name, degree program, and current course, then creates your project folder structure and personalizes your toolkit.

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

This is not optional — the toolkit enforces it. Before the AI will help with any project, it checks for a Position Statement file. If none exists, it stops and explains why. Your Position Statement records your own thinking before AI can shape your direction. It is what keeps your work yours.

Once your Position Statement exists, the AI acts as a thinking partner — generating alternatives to challenge your position, asking questions, surfacing counterarguments. It does not originate direction.

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
├── projects/
│   └── [your-course]/
│       ├── briefs/                 ← Drop your instructor's project brief here
│       ├── position-statements/    ← Write this before any AI engagement
│       ├── records-of-resistance/  ← Your deliberate choices about AI output
│       └── work/                   ← Your project output
└── WORKFLOW.md                     ← ESF Level 2 process diagram
```

After AI 301, your `projects/` folder spans all four courses — a documented record of your development across the program.

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

## Questions

Ask your instructor if something isn't working. The ESF Student Guide is in `.claude/reference/esf-student-guide.md` if you want to understand the methodology behind the process.
