# ESF Student Toolkit: Sample Data

This folder contains pre-filled AI-201 sample data for testing the toolkit without running onboarding.

**Sample student:** Alex Rivera, BFA Motion Media Design, AI-201 (Creative Computing with AI)
**Sample project:** Project 2, Responsive System (reaction-diffusion system with sound input)
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
curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash -s -- --sample
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
| **AI-201 (Creative Computing)** | **Alex Rivera, BFA Motion Media Design** |
| `agents/esf-student.md` | Fully personalized agent: AI-201 calibration, 3 RoR required, Explore phase |
| `projects/ai-201/briefs/p2-responsive-system.md` | Realistic AI-201 project brief: tool-agnostic, emergence-focused |
| `projects/ai-201/position-statements/responsive-system.md` | Student-voice position statement with 3-element Design Intent |
| `projects/ai-201/records-of-resistance/ror-01.md` | Record of Resistance: AI suggestion documented and deliberately rejected |
| `projects/ai-201/records-of-resistance/ror-02-technical-decision.md` | Record of Resistance: choosing raw Canvas API over a suggested library for aesthetic and creative control reasons |
| `projects/ai-201/gate-records/gate-no-remediation.md` | Gate record where Q2 ("Is this mine?") fails; student returns to Position Statement, redesigns system architecture, passes on second attempt |
| **AI-180 (Creativity and AI)** | **Jamie Torres, BFA Illustration; Priya Kapoor, BFA Graphic Design; Sam Chen, BFA Photography** |
| `projects/ai-180/briefs/p2-visual-essay.md` | AI-180 project brief: personal visual essay, tool-agnostic, process-focused |
| `projects/ai-180/position-statements/visual-essay.md` | Non-technical position statement: identity, memory, and place in illustration |
| `projects/ai-180/records-of-resistance/ror-01-partial-accept.md` | Partial acceptance: keeping an AI composition suggestion while rejecting its color palette, with documented reasoning |
| `projects/ai-180/records-of-resistance/ror-02-source-verification.md` | Source verification: catching a misattributed design history reference the AI presented confidently |
| `projects/ai-180/records-of-resistance/ror-03-low-stakes.md` | Low-stakes pushback: rejecting a single wording change in an artist statement, showing RoR as habit, not heroics |
| `projects/ai-180/logs/ai-use-log-sample.md` | Filled-in AI Use Log with 3 sessions: composition research, statement review, reference research |
| `projects/ai-180/process/process-blog-entry.md` | Process blog entry in student voice: metacognitive reflection on how the Position Statement shaped real-time decisions |

---

## What to Test

- **Gate enforcement:** Delete the position statement file and try to start a project session. The toolkit should block until it's restored.
- **Phase awareness:** The agent knows Alex is in Explore phase. Ask about the Inquire phase artifacts; it should know they're complete.
- **AI calibration:** AI-201 calibration means less hand-holding. Ask a vague question and notice how the toolkit pushes back rather than filling in the gaps.
- **Records of Resistance:** Ask the toolkit to help you review your RoR count. It should know 3 are required and 1 is complete.
