# ESF Student Toolkit — Sample Data

This folder contains pre-filled AI-201 sample data for testing the toolkit without running onboarding.

**Sample student:** Alex Rivera, BFA Motion Media Design, AI-201 (Creative Computing with AI)
**Sample project:** Project 2 — Responsive System (reaction-diffusion system with sound input)
**Phase:** Explore (Position Statement complete, working on implementation)

---

## How to Use

Copy these files into your portfolio repo after running the installer:

```bash
# From inside your portfolio repo, after running install.sh:
cp path/to/sample/agents/esf-student.md .claude/agents/esf-student.md
cp -r path/to/sample/projects/ai-201 projects/
```

Or install with the sample flag:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash -s -- --sample
```

Then open Claude Code and start working:

```bash
claude
```

Try: "I want to keep working on my responsive system. I'm in the Explore phase and need to think through my shader implementation."

The toolkit will load Alex's context, check for the Position Statement (it exists), confirm the phase, and engage as a thinking partner from there.

---

## What's Included

| File | What it demonstrates |
|------|---------------------|
| `agents/esf-student.md` | Fully personalized agent — AI-201 calibration, 3 RoR required, Explore phase |
| `projects/ai-201/briefs/p2-responsive-system.md` | Realistic AI-201 project brief — tool-agnostic, emergence-focused |
| `projects/ai-201/position-statements/responsive-system.md` | Student-voice position statement with 3-element Design Intent |
| `projects/ai-201/records-of-resistance/ror-01.md` | Example Record of Resistance — AI suggestion documented and deliberately rejected |

---

## What to Test

- **Gate enforcement:** Delete the position statement file and try to start a project session. The toolkit should block until it's restored.
- **Phase awareness:** The agent knows Alex is in Explore phase. Ask about the Inquire phase artifacts — it should know they're complete.
- **AI calibration:** AI-201 calibration means less hand-holding. Ask a vague question and notice how the toolkit pushes back rather than filling in the gaps.
- **Records of Resistance:** Ask the toolkit to help you review your RoR count. It should know 3 are required and 1 is complete.
