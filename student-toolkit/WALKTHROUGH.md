---
entities: [ESF, Records-of-Resistance]
---

# End-to-End Walkthrough: Student Toolkit

This walkthrough follows one student through one project, start to finish. Every artifact she creates is shown. Every gate she crosses is documented.

By the end you will see what the ESF Level 2 process looks like in practice, not as a diagram, but as actual work.

---

## Meet Maya

Maya Chen is a second-year graphic design student in her program's THINK-level course (the second in the sequence). She finished Project 1 (Process Journal) without AI. Now she is starting Project 2, the Defixation Portfolio: her first project where AI is required. She installed the student toolkit at the start of the quarter.

Her brief asks for 5 substantially different responses to a creative problem using 4 defixation techniques, plus one AI-assisted session. She must write a Position Statement before the AI session and submit an AI Use Log with at least 1 Record of Resistance.

---

## Step 1: Install and Onboard

Maya already did this in Week 1. Here is what it looked like.

**Terminal:**

```bash
git clone https://github.com/mayachen/ai-portfolio.git
cd ai-portfolio
curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
```

**Then in Claude Code:**

```
claude
/esf-onboarding
```

Onboarding asked three things:

1. **Name:** Maya Chen
2. **Degree program:** Graphic Design, BFA
3. **Current course:** THINK-level course (second in the sequence)

It created her folder structure and personalized her agent file. Took about 5 minutes.

**Her repo after onboarding:**

```
ai-portfolio/
├── .claude/
│   ├── agents/esf-student.md       ← personalized with her name and program
│   ├── skills/
│   └── reference/
├── projects/
│   └── think-course/
│       ├── briefs/
│       ├── position-statements/
│       ├── records-of-resistance/
│       └── work/
├── templates/
└── WORKFLOW.md
```

---

## Step 2: Drop the Project Brief

At the start of Week 4, Maya saves the Project 2 brief her instructor provided:

```
projects/think-course/briefs/project-02-defixation-portfolio.md
```

She chose a real brief from her Typography II class: "Design a wayfinding system for a local independent bookstore." Specific enough to constrain, open enough for multiple directions.

---

## Step 3: Phase 1, Inquire (No AI)

Maya reads the brief carefully and writes inquiry notes in her own words. No AI tool is open.

**What she writes** (in a notebook, a note on her phone, wherever she thinks):

> What is this actually asking? 5 responses that start from completely different premises. Not 5 variations. Different premises.
>
> What do I already know? In P1 I found anchoring bias and availability heuristic in my work. My first instinct is always typography-forward. Every wayfinding solution I can think of right now starts with type.
>
> What assumptions am I making? That my first direction (type-based) is the strongest. That signage is the only medium for wayfinding.
>
> What am I uncertain about? How to use random stimulus without it feeling forced. Whether lateral thinking and perspective shift will produce responses that are actually buildable.

**The gate:** Can she explain the assignment in her own words without the brief in front of her? Yes. She moves to Phase 2.

---

## Step 4: Phase 2, Position Statement (No AI)

Maya opens her Position Statement file:

```
projects/think-course/position-statements/p2-position-statement.md
```

**What she writes** (rough, not polished; this is the point):

> **My position:** I think my strongest work happens when I abandon my first instinct. My P1 bias map showed I anchor on typographic solutions for everything. This project is my chance to prove I can start from genuinely different places.
>
> **What matters most:** Real range. Five directions that a viewer would not guess came from the same person. If all five look like "Maya's style," I failed.
>
> **Non-negotiable:** AI will not replace any of my four human responses. Response 5 is a challenge to my existing four, not a fifth creative direction. I decide what to keep.

That took 8 minutes. Rough. Full of fragments. Exactly right.

**What happens if she skips this step:**

If Maya opens Claude Code and says "Help me brainstorm responses for my wayfinding project," the toolkit checks for a Position Statement file. None exists. It responds:

> I can't help with this project yet.
>
> You need a Position Statement first. This is not a rule; it is the mechanism that keeps your work yours. Write your position, what matters most, and what you will not compromise on. Save it to `projects/think-course/position-statements/`. Once it exists, come back and we will begin.

The gate holds. AI does not engage until she has documented her own thinking.

---

## Step 5: Responses 1 Through 4 (Human Only)

Maya spends Weeks 4 and 5 producing her four human-generated responses. No AI involved.

1. **Lateral thinking:** What if there are no signs? Wayfinding through scent zones (coffee near literary fiction, paper near stationery).
2. **Analogical reasoning:** Bookstore as forest ecosystem. Sections organized by growth pattern, not genre. A canopy map at the entrance.
3. **Constraint manipulation:** Remove all text. Wayfinding through color, texture, and material only.
4. **Random stimulus:** She pulled the word "tide" from a random generator. Wayfinding as tidal flow: paths that shift based on time of day, with "high tide" and "low tide" zones.

Each response starts from a different premise. Range demonstrated.

---

## Step 6: Phase 3, Explore (AI Enters as Thinking Partner)

Maya has her Position Statement saved. She opens Claude Code.

**First thing that happens (Claude Code toolkit feature):** The AI does a readability pass on her Position Statement. It cleans up grammar and sentence structure without changing her ideas:

> Your Position Statement looks clear. I cleaned up a few sentence fragments for readability. Here is the updated version. Does this still say what you meant?

Maya reviews. It still says what she meant. She confirms.

*Note: The readability pass is a feature of the Claude Code student toolkit. Students using other AI tools skip this step and bring their Position Statement into the conversation as-is. The substance is the same: your Position Statement anchors Phase 3 regardless of which tool you use.*

**Then the AI challenges her position:**

> You wrote that your strongest work happens when you abandon your first instinct. Looking at your four responses, Response 3 (no text, wayfinding through material only) is the most radical departure from your typography-first default. Response 1 (scent zones) still uses spatial logic you are comfortable with.
>
> Question: Is abandoning your first instinct always the goal? Or is the goal understanding when your instinct serves the brief and when it does not?

Maya sits with this. The AI is not telling her what to do. It is asking whether her own stated position holds up under pressure.

**She decides:** The question is useful. She revises her thinking. Her instinct is not always wrong; the problem is that she does not test it. She notes this in her process log.

**The AI also surfaces a research connection:**

> Your random stimulus response (tidal flow) connects to work on temporal wayfinding in exhibition design. Want me to find examples?

Maya says yes. The AI finds two relevant references. She checks them independently (Phase 3 does not mean accepting AI claims unchecked).

---

## Step 7: Phase 4, Make (Response 5, AI-Assisted)

Maya asks the AI to look at her four responses and identify which direction is least explored.

**AI output:**

> Your four responses explore spatial organization (scent, ecosystem, material, tidal). None of them address the social dimension of wayfinding: how people follow other people, not signs. A fifth direction could explore wayfinding as social behavior: staff positioning, sight lines to other customers, seating placement that creates natural flow.

Maya considers this. Then she decides.

**Record of Resistance:**

```
AI suggested: A fifth response based on social wayfinding (staff positioning,
              sight lines, seating as flow mechanism).

I decided: Reject the social wayfinding direction as Response 5.

Because: The brief asks me to use AI to challenge my existing four directions,
not generate a new one. My Position Statement says "AI will not replace any of
my four human responses. Response 5 is a challenge to my existing four."

Instead, I asked the AI to pressure-test Response 4 (tidal flow). It pointed
out that time-based wayfinding assumes repeat visitors, which a bookstore
cannot guarantee. I revised Response 4 to include a first-visit "orientation
tide" that differs from the daily rhythm. That revision is mine, informed
by AI's challenge.
```

**Five Questions check (during the work):**

| # | Question | Answer |
|---|----------|--------|
| 1 | Can I defend this? | Yes. I can explain why I revised Response 4 instead of adding a new direction. |
| 2 | Is this mine? | Yes. The revision came from my decision after the AI's challenge. |
| 3 | Did I verify? | Yes. I checked the temporal wayfinding references independently. |
| 4 | Would I teach this? | Yes. I could walk a classmate through my reasoning. |
| 5 | Is my disclosure honest? | Yes. AI challenged my work; I made the revision. |

---

## Step 8: Phase 5, Reflect

Maya completes her AI Use Log using the template in `templates/ai-use-log-template.md`. Key sections:

**Interaction log with verification:**

Each significant interaction gets logged. When AI produced factual claims, Maya fills in a Verification table:

| Interaction | What Happened | Keep / Revise / Reject |
|---|---|---|
| 1. Readability pass on Position Statement | Cleaned grammar, no content changes | Kept |
| 2. Challenge to her stated position | "Is abandoning instinct always the goal?" | Kept the question, revised understanding |
| 3. Social wayfinding suggestion | AI proposed a fifth direction | Rejected, per Position Statement |

**Verification** (Interaction 2, temporal wayfinding references):

| Claim or source | Checked? | How | Result |
|---|---|---|---|
| Temporal wayfinding in exhibition design (2 references) | Yes | Found original sources via library | Both confirmed; one was from a conference paper, one from a design journal |

**Prompt Evolution Notes:**

Maya reflects on how her prompting changed across interactions:

> First prompt was broad: "Look at my four responses and tell me what's missing." That produced too general an answer. Second prompt was targeted: "Which of my four responses least challenges my typography-first default?" That produced the insight about Response 3 being the most radical departure. Third prompt referenced my Position Statement directly: "My Position Statement says AI should challenge, not originate. Pressure-test Response 4." That produced the most useful output.

**Pattern analysis:**
- Kept: AI challenges to her assumptions (2 of 3 interactions)
- Rejected: AI-originated creative directions (1 of 3)
- Observation: "I accept AI's questions more readily than its answers."
- Verification finding: "Both references checked out. AI did not fabricate sources this time, but checking took 10 minutes. Worth it for claims I built on."

**Disclosure statement:**

Maya writes the first draft of her disclosure. The AI offers a completeness check (comparing it against her Interaction Log), then a readability pass: grammar and sentence structure only, no added substance. She reviews the cleaned version and confirms it still says what she meant.

> AI assisted with Response 5 of this project. I used Claude to challenge my four existing directions. The AI identified a gap in Response 4 (temporal wayfinding assumes repeat visitors). I revised Response 4 based on that critique. The AI also suggested a fifth direction (social wayfinding), which I rejected because my Position Statement limited AI's role to challenging existing work, not originating new directions. I verified two research references AI provided; both were accurate. All other responses are entirely my own.

**Comparison to Position Statement:**

Her original position: "My strongest work happens when I abandon my first instinct."

Her revised understanding: "My strongest work happens when I test my first instinct against alternatives, then decide."

The shift is documented. It is hers. She can defend it.

---

## What Maya's Repo Looks Like Now

```
ai-portfolio/
├── .claude/
│   └── [toolkit configuration]
├── projects/
│   └── think-course/
│       ├── briefs/
│       │   └── project-02-defixation-portfolio.md
│       ├── position-statements/
│       │   └── p2-position-statement.md
│       ├── records-of-resistance/
│       │   └── p2-record-01.md
│       └── work/
│           ├── p2-response-01-lateral.pdf
│           ├── p2-response-02-analogical.pdf
│           ├── p2-response-03-constraint.pdf
│           ├── p2-response-04-random-revised.pdf
│           ├── p2-response-05-ai-assisted.pdf
│           ├── p2-defixation-playbook.pdf
│           └── p2-ai-use-log.md
├── templates/
└── WORKFLOW.md
```

Every artifact has a clear provenance. The Position Statement documents what Maya thought before AI. The Record of Resistance documents what she rejected and why. The AI Use Log documents every significant interaction. The disclosure is specific and honest.

When Maya moves to the next course in the sequence, her project folder carries forward. Her Position Statements and Records of Resistance accumulate across the program. By the final course, she has a documented record of how her relationship with AI tools developed across the full sequence.

---

## Key Takeaways

1. **The gate is structural, not rhetorical.** The toolkit blocks AI engagement until the Position Statement exists. This is not a reminder; it is a mechanism.
2. **Rough is fine.** Maya's Position Statement was full of fragments. That is acceptable. What matters is that it captures her direction before AI shapes it. The readability pass cleans it up without changing her ideas.
3. **AI enters as a challenger, not a producer.** Phase 3 generated questions and pressure, not creative output. Phase 4 produced one concrete suggestion that Maya rejected.
4. **Records of Resistance are evidence, not busywork.** Maya's record shows she evaluated AI output against her stated position and made a deliberate choice. That is the skill this process builds.
5. **The Five Questions are real checkpoints.** Maya answered them during the work, not after. A "no" at any point would have triggered revision.
6. **Verification catches real problems.** Maya checked AI's research references independently. Both were accurate this time. The habit matters more than this instance.
7. **Prompt evolution shows growth.** Tracking how prompts changed across interactions reveals a learning curve: from vague to targeted to Position Statement-grounded. That development is itself a learning outcome.

---

*Epistemic Stewardship Framework, Student Toolkit Walkthrough*
*Based on a THINK-level project: Defixation Portfolio*
