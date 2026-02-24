# Epistemic Stewardship Framework (ESF)

A structured methodology for maintaining intellectual ownership in AI-assisted academic work. Designed for faculty who produce academic content with AI assistance and for students who engage with AI as a cognitive partner in their coursework.

---

## What Is ESF

ESF operates at two levels:

**Level 1 — Faculty Content Production**
A five-phase workflow (Scope → Direct → Build → Validate → Disclose) that keeps AI as a production accelerant, not an intellectual author. The core mechanism is the Directive Memo — written before AI-assisted drafting begins, establishing the intellectual direction AI must follow.

**Level 2 — Student Epistemic Development**
A five-phase workflow (Inquire → Position → Explore → Make → Reflect) that sequences student thinking before AI engagement. AI does not enter until a student has written a Position Statement — a record of their own understanding and position — without AI assistance.

Both levels use the same Five Questions at every human gate: *Can I defend this? Is this mine? Did I verify? Would I teach this? Is my disclosure honest?*

---

## Get Started

### For Students

Install the ESF Student Toolkit into your own portfolio repo:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
```

The toolkit configures Claude Code with the Level 2 workflow and enforces the Position Statement gate before AI engagement. You carry the repo across your entire program — projects and process artifacts accumulate there.

[Full setup instructions →](student-toolkit/README.md)

### For Faculty

Install the ESF Faculty Toolkit into your own faculty repo:

```bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash
```

The toolkit configures Claude Code with the Level 1 workflow, curriculum development and document production skills, and a brief review procedure that evaluates your project briefs for ESF alignment.

[Full setup instructions →](faculty-toolkit/README.md)

---

## Documentation

| Document | Description |
|----------|-------------|
| [Framework Document](framework/ESF-Framework-Document.md) | Full theoretical basis, constructs, and scholarly grounding |
| [Faculty Guide](implementation-guide/ESF-Faculty-Guide.md) | Level 1 workflow in depth |
| [Student Guide](implementation-guide/ESF-Student-Guide.md) | Level 2 workflow in depth |
| [Institutional Guide](implementation-guide/ESF-Institutional-Guide.md) | Adoption and policy guidance |
| [Literature Review](framework/ESF-Literature-Review.md) | Scholarly basis |
| [Novel Contributions](framework/ESF-Novel-Contributions.md) | What ESF adds to the field |

---

## Repository Structure

```
├── framework/                  Academic documentation
│   ├── ESF-Framework-Document.md
│   ├── ESF-Literature-Review.md
│   └── ESF-Novel-Contributions.md
├── implementation-guide/       Practitioner guides and templates
│   ├── ESF-Faculty-Guide.md
│   ├── ESF-Student-Guide.md
│   ├── ESF-Institutional-Guide.md
│   └── templates/
├── appendices/                 Crosswalk, rubrics, comparison matrix
├── student-toolkit/            Claude Code configuration for students
│   ├── install.sh              ← Run this to install
│   └── README.md
└── faculty-toolkit/            Claude Code configuration for faculty
    ├── install.sh              ← Run this to install
    └── README.md
```

---

## A Note for Adopters: Distribution Architecture

This repository keeps ESF documentation and Claude Code toolkits together. That is the right default — one URL, one place to update, no drift between the guides and the toolkit reference files. When a guide is updated here, anyone who re-runs the installer gets the current version.

**If your institution adopts ESF at scale**, you may want to fork the toolkits into separate repositories. The advantages: toolkit releases can be versioned independently of documentation releases; institutional forks can customize without touching the canonical docs; different teams can own different parts; and toolkit-specific CI can run without triggering on documentation changes. The install scripts support a straightforward URL swap for this transition. See `student-toolkit/install.sh` and `faculty-toolkit/install.sh` — the `TOOLKIT_BASE` variable at the top is the only thing that changes.

---

*Epistemic Stewardship Framework*
*Nathan Madrid*
