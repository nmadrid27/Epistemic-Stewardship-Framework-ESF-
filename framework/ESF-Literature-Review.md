---
title: "Epistemic Stewardship in AI-Assisted Academic Work: A Literature Review"
author: Nathan Madrid
date: 2026-02-19
version: "2.1-draft"
status: draft
type: literature-review
epistemic-weight: high
parent-document: ESF-Framework-Document.md
tags: [esf, literature-review, ai-education]
---

# Epistemic Stewardship in AI-Assisted Academic Work

## A Literature Review

---

## A. Field Overview

The integration of artificial intelligence into higher education has generated a rapidly growing body of scholarship. That body reveals characteristic gaps and asymmetries. This review traces the literature from intelligent tutoring systems through generative AI, exposing structural limitations ESF addresses.

### From Tutoring to Generation: A Chronological Arc

The earliest AI-in-education research concerned itself with intelligent tutoring systems: AI designed to teach, not to produce. The human's role as epistemic agent was never in question because the AI functioned as a delivery mechanism for human-authored content. The research questions were pedagogical: does AI-delivered instruction improve learning outcomes? Under what conditions? For which students?

The shift toward adaptive learning systems in the 2010s introduced a new dynamic. AI began making decisions about *what* students should learn and *when*, personalizing learning pathways based on performance data. The human's epistemic role began to shift, though the literature primarily framed this as an instructional design question rather than an epistemological one. Zawacki-Richter et al. (2019), in their systematic review of 146 studies, identified four application areas: profiling and prediction, assessment and evaluation, adaptive systems, and intelligent tutoring. The overwhelming majority of research targeted student-facing applications. Faculty as users of AI in their own professional work were, in their words, largely absent from the conversation.

The arrival of large language models and generative AI tools in 2022-2023 transformed the field. For the first time, AI could produce fluent, structured, academically plausible text. It could *generate new content* that reads as if a knowledgeable human wrote it, not just deliver existing content.

This capability created a crisis that the prior literature had not anticipated. When AI can produce work indistinguishable from competent human output, the question shifts from "can AI help students learn?" to "how does anyone (student, faculty, or institution) maintain intellectual ownership of AI-assisted work?"

### Institutional Responses

Institutional and scholarly responses to generative AI have clustered into identifiable categories:

**Policy responses** focused on what should be permitted and prohibited. These range from outright bans to permissive frameworks, with most institutions settling into conditional policies that specify acceptable uses (UNESCO/Miao & Holmes, 2023; OECD, 2023). Policy responses address governance but not methodology. They regulate the *boundaries* of AI use without structuring the *practice* of it.

**Student-facing literacy frameworks** aimed to develop students' capacity to use AI responsibly. Allen and Kendeou's (2024) ED-AI Lit framework, Kassorla et al.'s (2024) EDUCAUSE guidance, and Luckin et al.'s (2016) foundational work on AI and education all target student competencies. These contributions are valuable but share a structural limitation: they address what students should *understand* about AI without specifying the *methodology* by which that understanding is practiced during actual AI-assisted work.

**Assessment-focused frameworks** addressed how student work should be evaluated. Perkins et al.'s (2024) AI Assessment Scale (AIAS) provides graduated levels of AI involvement, replacing the binary of permitted/prohibited with a nuanced taxonomy. Fischer et al. (2024) argued that assessment must attend to what students *actually do*: the evaluative judgment practices that product-focused assessment cannot reveal. These frameworks advance the conversation significantly but remain assessment-specific. They do not address the production process that precedes assessment.

**Transparency-focused frameworks** structured how AI use should be disclosed. Weaver's (2024) AI Disclosure (AID) framework provides templates and norms for documenting AI involvement. Transparency frameworks address accountability but not the epistemic process that accountability should verify.

**The gap.** No existing framework provides a phase-structured methodology for *producing* AI-assisted academic work that embeds epistemic accountability at every stage, for faculty, for students, and for institutions. The literature provides pieces: graduated assessment scales, disclosure templates, literacy competencies, policy guidance. What it lacks is the integrating methodology. ESF occupies this position.

---

## B. Concept-by-Concept Analysis

The following analysis examines seven concept clusters that provide the theoretical foundation for ESF. Each cluster is reviewed for its contribution to understanding epistemic challenges in AI-assisted academic work, its limitations, and how ESF builds on or extends its insights.

### B.1 Epistemic Agency in AI-Assisted Work

The concept of epistemic agency (the capacity to direct one's own knowledge-making processes) is the theoretical center of ESF. Three lines of scholarship converge on this concern.

**Extended cognition and active endorsement.** Clark and Chalmers (1998) established the philosophical foundation for understanding tools as legitimate extensions of human cognition. Their extended mind thesis argues that cognitive processes can extend beyond the brain into notebooks, calculators, and AI systems. The critical contribution for ESF is not the extensibility claim itself but the *conditions* they specify: for an external resource to count as part of the cognitive system, the human must actively endorse its contributions, have reliable access to it, and have previously endorsed the information it provides.

The active endorsement condition is the philosophical anchor of the Directive Memo. When a faculty member writes a Directive Memo establishing their intellectual position before engaging AI, they create the standard against which active endorsement can be assessed. Without such a standard, "endorsement" reduces to "I didn't object," a passive stance that Clark and Chalmers's framework does not support.

**Distributed cognition and coordination.** Hutchins's (1995) distributed cognition framework moves the analysis from individual minds to cognitive systems comprising people, tools, and artifacts. His ethnographic study of naval navigation demonstrates that cognition distributed across a team and its instruments requires *coordination*; someone must ensure that the distributed contributions serve a coherent purpose. The parallel to AI-assisted academic work is direct. When intellectual work is distributed between a human and an AI, the coordination function (determining what the work is about, what it argues, what it values) must remain with the human. When the AI's organizational logic becomes the default structure, coordination has migrated to the AI, and the human's epistemic agency has been compromised even if they retain editorial control.

**Epistemic agency in the generative AI era.** Wu et al. (2025) bring these philosophical foundations into direct contact with generative AI in education. They argue that AI-assisted knowledge construction creates a fundamental tension: AI can accelerate knowledge production while simultaneously undermining the epistemic development that knowledge production is supposed to foster. Their framework for "symbiotic learning partnership" with AI emphasizes the need for structural mechanisms that preserve human epistemic agency, precisely the mechanisms ESF's constructs provide.

Bozkurt (2024) complements this analysis by examining the specific challenges generative AI poses for authorship, ownership, and academic integrity. His argument that "cocreation" with AI requires new frameworks for understanding intellectual contribution supports ESF's position. Traditional notions of authorship (the single human author) must be replaced with structured transparency about the division of intellectual labor.

**What the literature does not provide.** The epistemic agency literature establishes *what* must be preserved (human direction of knowledge-making) and *why* it matters (cognitive extension without active endorsement is not genuine cognition). What it does not provide is *how*: the operational mechanisms by which epistemic agency is maintained during actual AI-assisted work. ESF's Directive Memo, Five Questions, and Human Validation Gates are proposed as that operational layer.

### B.2 Metacognition and Human Oversight

If epistemic agency defines the goal, metacognition is the capacity that makes it achievable. When metacognition fails, epistemic agency erodes.

**The metacognitive demands of AI oversight.** Tankelevitch et al. (2024) provide the most empirically grounded analysis of what happens when humans attempt to oversee AI output. Their research demonstrates that effective oversight requires sustained metacognitive effort: the user must monitor comprehension, detect departures from their understanding, and resist the pull of fluent, well-structured output. Critically, they find that these metacognitive demands are higher than most users expect. Failures of metacognitive monitoring (accepting AI output that subtly misrepresents the user's position) are common even among experienced professionals.

This finding has direct implications for ESF's design. The Five Questions are structured to trigger specific metacognitive processes. "Is this mine?" forces the user to distinguish between their own position and the AI's framing. "Can I defend this?" tests whether the user has actually engaged with the content rather than merely read it. The repetition of the Five Questions at every gate is motivated by Tankelevitch et al.'s finding that metacognitive effort is not self-sustaining. It must be structurally prompted.

**Cognitive automation and reduced engagement.** Atchley et al. (2024) extend the analysis with the concept of cognitive automation. They argue that AI functions as an external representation tool that reduces information processing demands, with both costs and benefits. The cost they identify is central to ESF's design: reduced cognitive engagement with the work's substance. Pedagogical recommendations, they contend, must account for the cognitive effects of using external representations and AI tools in this way.

ESF's Gate Verification Record directly addresses cognitive automation. By requiring documented evidence of what was reviewed, changed, and challenged at each gate, the record creates an external check on internal metacognitive processes. A pattern of gate records with no changes and no challenges, across multiple projects, signals that cognitive automation may be occurring.

**Assessment, evaluative judgment, and AI discourse.** Fischer et al. (2024) bring evaluative judgment scholarship into this cluster. Drawing on practice theory, they find that summative assessment focused on final products fails to capture the informal evaluative practices: peer judgments, self-assessments, incidental reflection: that constitute actual learning. Their call for assessment that attends to what students *actually do* aligns with ESF's process documentation (the Directive Memo, gate records, Integrity Reports) as evidence of epistemic engagement rather than product quality alone.

Bearman et al. (2023) contribute a complementary analysis at the discourse level. Their critical literature review finds that institutional frameworks for AI in higher education cluster into two Discourses (AI as imperative change and AI as redistributor of authority), but neither addresses how AI mediates cognitive engagement and learning relationships. This accountability gap at the discourse level is precisely what ESF's structural mechanisms are designed to address.

**Regulatory codification.** The EU AI Act, Article 14 (2024), codifies human oversight as a regulatory requirement for high-risk AI systems. While the Act targets AI system designers rather than users, its underlying logic mirrors ESF's approach: human oversight must be structural and verifiable, not merely aspirational. The Act requires that oversight mechanisms be designed into systems. ESF requires that oversight mechanisms be designed into workflows.

### B.3 Calibrating Stakes and Involvement

Not all AI-assisted work carries the same epistemic stakes. Two distinct but complementary frameworks address the question of how to calibrate human involvement to content demands.

**The AI Assessment Scale.** Perkins et al. (2024) provide the most developed graduated framework with AIAS, which defines five levels of AI involvement in student assessment: no AI, AI-assisted ideation, AI-assisted content generation, AI-led generation with human editing, and full AI generation. AIAS is a significant advance over binary policies because it acknowledges that appropriate AI involvement varies by task.

However, AIAS frames these levels as *policy choices*; the instructor decides which level is appropriate for a given assignment. The framing is inherently permissive: it answers "how much AI should we *allow*?" ESF reframes the question: "how much human intellectual authority does this content *demand*?" The difference is between administrative assignment and epistemic analysis. ESF's Content Epistemic Weight treats the required human involvement as a property of the content type itself, not a discretionary policy decision.

**Taxonomic logic.** Bloom et al.'s (1956) taxonomy of educational objectives, while predating AI by decades, provides the cognitive architecture that supports ESF's weight model. Tasks at higher taxonomic levels (evaluation, synthesis, creation) inherently require more human judgment than tasks at lower levels (recall, comprehension, application). This mapping is not prescriptive but descriptive: it reflects what the cognitive demands of the task actually require, regardless of what a policy might permit.

The synthesis of Bloom and AIAS yields ESF's three-tier model: high-weight content (where the intellectual position must originate with the human), medium-weight content (where the human must substantively shape the direction), and low-weight content (where AI can draft with light review). Unlike AIAS, this classification is not assignment-specific. It applies to any content type, for any user, in any context.

### B.4 Transparency and Structural Disclosure

Transparency is a foundational principle in virtually every AI-in-education framework. The question is not whether transparency matters but what kind of transparency is sufficient.

**The AID Framework.** Weaver's (2024) AI Disclosure framework provides the most structured approach to documenting AI use in academic contexts. AID offers templates, norms, and practical guidance for faculty and students who wish to disclose AI involvement transparently. Its contribution is normalizing disclosure as a professional practice rather than an admission of weakness.

ESF builds on AID in two specific directions.

First, ESF connects disclosure to a pre-drafting intellectual authority mechanism: the Directive Memo. A disclosure statement that says "AI assisted with drafting" is more meaningful when the reader (or the author) can verify it against a documented pre-drafting position.

Second, ESF introduces the Integrity Report as a companion to disclosure. The Integrity Report documents not just *what* AI contributed but *whether the human's intellectual direction was preserved through the process.* AID tells the reader about the collaboration; the Integrity Report tells the author about their own epistemic engagement.

**Policy-level transparency.** UNESCO's guidance on generative AI (Miao & Holmes, 2023) and the OECD's AI principles (2023) establish transparency as a policy requirement. Both documents advocate for clear documentation of AI involvement in educational contexts. ESF translates these principles from aspirational policy to operational workflow. Transparency is not a value to be endorsed but a structural feature of how the work is produced.

**Compliance versus epistemic transparency.** The distinction ESF draws between compliance transparency ("AI was used") and epistemic transparency ("here is whose thinking this is") is not present in the existing literature. Current frameworks treat disclosure as an end in itself; the requirement is satisfied when the user documents AI involvement. ESF treats disclosure as meaningful only when anchored to evidence of epistemic engagement: the Directive Memo, the gate records, the Integrity Report. This distinction, while intuitive, represents a reframing not found in AID, UNESCO, or OECD guidance.

### B.5 Cognitive Partnership versus Offloading

AI's capacity to reduce cognitive load creates a paradox in educational contexts: the reduction may be precisely what undermines learning.

**Cognitive load theory.** Sweller's (1988) cognitive load theory demonstrates that learning is optimized when extraneous cognitive load is minimized, freeing resources for germane processing (the mental effort that produces understanding). AI tools reduce cognitive load across the board: they organize information, generate structures, draft prose, and compile resources. In professional contexts, this is straightforwardly valuable. In educational contexts, it introduces a tension: the cognitive effort AI eliminates may be the effort that produces learning.

This paradox is central to ESF's design. The framework addresses this paradox through structural mechanisms (the Directive Memo, the Five Questions) that reintroduce targeted cognitive effort at precisely the points where it matters most: intellectual direction, evaluative judgment, and epistemic accountability. ESF redistributes cognitive load rather than simply reducing it. It preserves the human's engagement with the work's substance while allowing AI to handle its mechanics.

**From partnership to offloading.** The distinction between cognitive partnership (human engaged, directing, evaluating) and cognitive offloading (human delegating thinking to AI) is implicit in much of the literature but rarely operationalized. Wu et al. (2025) describe the tension. Tankelevitch et al. (2024) document its metacognitive manifestations. Atchley et al. (2024) locate cognitive automation as a systemic risk in AI-assisted work. None of these sources provides a *mechanism for detecting* when partnership has degraded into offloading during actual work.

ESF's Five Questions serve this detection function. "Is this mine?" directly tests whether the human directed the narrative or passively adopted the AI's framing. "Can I defend this?" tests whether the human has engaged deeply enough to explain the work without recourse to the AI's reasoning. Applied at every gate, these questions create recurring checkpoints that surface offloading before it becomes invisible.

### B.6 Iterative Methodology in Education

ESF's phased workflow draws on iterative design methodology but embeds epistemic accountability in ways that the design literature does not.

**Design thinking.** Brown's (2008) articulation of design thinking provides the iterative structure that ESF adapts: cycles of divergent exploration and convergent decision-making, with human judgment operating at each convergence point. The design thinking model is valuable because it normalizes iteration. Work is expected to be revised through multiple cycles rather than produced in a single pass. ESF preserves this iterative structure while adding a dimension design thinking does not address: whether the human's intellectual ownership is maintained through the iterations, or whether each cycle of AI-assisted revision drifts further from the human's original position.

**Professional learning cycles.** Torrance (2019) extends iterative methodology into professional development, arguing for structured cycles of planning, execution, reflection, and revision with explicit decision gates. Torrance's emphasis on *gates* (moments where the practitioner pauses to evaluate before proceeding) is directly reflected in ESF's Human Validation Gates. The difference is that ESF's gates are epistemically charged: they ask not only "is this good?" but "is this mine?"

**Adaptive futures.** Luksha et al. (2024) argue that educational institutions need methodologies capable of evolving with technological and social change. Their emphasis on adaptive systems that build in revision mechanisms supports ESF's Framework Evolution Protocol. A framework for AI-assisted work must include structural mechanisms for its own revision, because the AI field that motivates the framework is itself changing continuously.

**The systematic gap.** Zawacki-Richter et al. (2019) provide both a methodological and a substantive contribution. Methodologically, their systematic review establishes the evidence base for claiming that AI-in-education research has progressed through identifiable phases. This suggests that frameworks must be designed for evolution rather than permanence. Substantively, their identification of the faculty-facing gap (the near-complete absence of research on faculty use of AI in their own work) remains one of the strongest pieces of evidence supporting ESF's positioning.

### B.7 Student AI Literacy as Epistemic Practice

The final cluster reframes AI literacy from a technical competency to an epistemic practice, a reframing that ESF's student engagement model operationalizes.

**AI literacy as civic competency.** Allen and Kendeou (2024) argue that AI literacy is a fundamental competency for all citizens, not just technologists. Their ED-AI Lit framework encompasses critical evaluation of AI-generated content, understanding of AI systems' limitations, and informed decision-making about AI use. This framing aligns with ESF's emphasis on epistemic agency over technical proficiency. What matters is not how well you use AI tools but how well you maintain your intellectual relationship to the work they produce.

**Institutional integration.** Kassorla et al. (2024) translate AI literacy into higher education institutional practice, providing frameworks for integrating AI competencies across curricula. Their work surfaces a gap that ESF addresses: while literacy frameworks define what students should *understand* about AI, they rarely specify the methodology by which understanding is *practiced.* ESF's four student engagement levels (Discovery, Guided Use, Independent Use, Critical Partnership) provide that methodological layer, a developmental progression from exploring AI capabilities to exercising full epistemic stewardship.

**Empowerment versus substitution.** Luckin et al.'s (2016) foundational work frames the core question: is AI being deployed as a tool for empowerment (supporting human agency) or as a substitute for human effort (undermining development)? This distinction runs through ESF's architecture. The Directive Memo ensures that AI functions as an extension of the human's thinking rather than a replacement for it. The Five Questions test whether empowerment or substitution is occurring. The engagement levels scaffold students from assisted exploration toward independent stewardship. In each case, the framework orients toward empowerment: it structures AI use to preserve and develop the human's epistemic capacity.

### B.8 Scaffolded Student Engagement and Socratic AI

The preceding clusters address what must be preserved (epistemic agency), how it degrades (metacognitive failure, cognitive automation), and how frameworks calibrate involvement and transparency. This final cluster addresses a question the earlier literature does not: how should the *process* of student engagement with AI be structured to develop epistemic agency rather than merely regulate AI use?

**Human-first sequencing.** Three independent lines of research converge on a principle ESF adopts as structural: students must establish their own understanding and position before AI enters the process.

Hutson (2025) develops a Three-Tiered Scaffolded Framework requiring students to demonstrate independent proficiency before gaining AI access. The framework uses timed tasks and oral defenses to verify that competence is genuine, not AI-derived. The insight for ESF is that access gates must test for understanding, not merely grant permission.

The Washington State Office of Superintendent of Public Instruction (2024) formalizes this as the H-AI-H (Human-AI-Human) cycle: every AI interaction is bookended by human inquiry (before) and human reflection (after). The cycle ensures that AI functions as a resource within a human-directed process rather than as the process itself. ESF's Level 2 student workflow (Inquire, Position, Explore, Make, Reflect) implements this principle. Phases 1 and 2 are human-only, Phase 3 introduces AI, and Phase 5 returns to human-only reflection.

Pasmala, Hinon, and Wannapiroon (2026) propose a five-stage Research-Based Learning model integrating AI research assistants. Their model structures human-led problem identification and research planning as the foundational phases before AI-enhanced analysis enters: the paper's explicit design principle holds that "ethical judgment and scholarly responsibility remain learner- and instructor-centered." This positions the AI research assistant as a cognitive scaffold that augments rather than replaces human reasoning. It reinforces the human-first principle from a research learning context distinct from Hutson's and Washington OSPI's K-12 and writing contexts.

**Socratic questioning as gate mechanism.** If human-first sequencing determines *when* AI enters, Socratic questioning determines *how* students verify their own understanding at each transition.

Naeem (2025) develops the Q-Tutor model, arguing that AI should teach questioning as an intellectual virtue, not just a technique. The distinction matters. When students learn to question well, they develop a transferable epistemic capacity that applies to all AI interactions, not just the ones a framework prescribes. ESF's human gates (framed as Socratic questions rather than compliance checkboxes) reflect this orientation.

Favero, Perez-Ortiz, Kaser, and Oliver (2024) demonstrate the Socratic approach in practice with the Maike chatbot, which guides students through critical reflection rather than providing answers. Their finding that Socratic interaction produces deeper engagement than direct instruction has methodological implications for ESF: the human gates work not by blocking students but by prompting them to articulate what they understand and where they stand.

Degen and Asanov (2025) [PREPRINT] provide the most direct experimental evidence. Their controlled study at the University of Kassel compared a Socratic AI Tutor (which questions students' reasoning) against an uninstructed chatbot (which answers directly). Students using the Socratic tutor demonstrated better epistemic agency, stronger ability to distinguish their own reasoning from AI suggestions, and greater willingness to challenge AI output. This finding supports ESF's design choice to frame human gates as questions, not permissions.

**Process artifacts and epistemic audit.** Structured student engagement produces documentation that makes epistemic processes visible and assessable.

Plate and Hutson (2025) reconceive composition pedagogy as requiring "rhetorical event" logs and auditable interaction histories. Their argument is that the process of engaging with AI (what was queried, what was accepted, what was rejected) is itself a form of rhetorical practice that can be taught and evaluated. ESF's process artifacts (Position Statements, AI interaction logs, records of resistance) operationalize this insight.

Stoyanov (2026) [PREPRINT] develops the concept of "epistemic audit" and traceability, arguing that delegated reasoning requires structural accountability mechanisms. The parallel to ESF's Integrity Reports is direct, though Stoyanov addresses the concept at a philosophical level while ESF provides the operational templates.

Lei et al. (2025) validate a related approach through the CDIO (Conceive-Design-Implement-Operate) teaching model integrated with generative AI. Their finding that students who conceive, design, implement, and operate multi-step AI workflows show significant gains in computational thinking supports ESF's progressive engagement levels. Advanced students design their own epistemic processes rather than following prescribed ones.

**The gap.** The scaffolding and Socratic AI literature establishes that human-first sequencing works, that Socratic questioning develops epistemic agency, and that process artifacts make engagement visible. The literature leaves a gap: no unified process model integrates all three principles into a coherent student workflow.

Nor does any framework distinguish the student process (developing epistemic capacity) from the faculty/professional process (producing epistemically sound work). ESF's two-level architecture, with distinct process models for content producers and epistemic learners, occupies this gap.

---

## C. Living Review Methodology

This literature review is designed to evolve alongside the literature it surveys. Consistent with ESF's Framework Evolution Protocol, the review includes structural mechanisms for its own revision.

### New Source Evaluation

New sources are evaluated using the same verification standards applied to the original 18 citations:

1. **Existence verification.** The source exists and is accessible. No hallucinated or fabricated citations.
2. **Accurate representation.** The source's claims and findings are represented faithfully, not distorted to support ESF's position.
3. **Epistemic marking.** Each source is marked: [ESTABLISHED] for peer-reviewed, widely cited work; [RECENT] for peer-reviewed work published within the last two years; [PREPRINT] for non-peer-reviewed work; [POLICY] for institutional or governmental guidance.
4. **Cluster assignment.** New sources are assigned to one or more concept clusters, or a new cluster is created if the source addresses a dimension not yet represented.

### Comparison Matrix Update Protocol

When new frameworks are published that address AI in higher education, they are evaluated against the ESF Comparison Matrix (see companion document) using the same dimensions: primary audience, pre-drafting structure, epistemic weight model, validation methodology, student agency model, disclosure system, faculty workflow, and iterative structure. New entries are added with dated annotations.

### Revision Log

All revisions to this review are documented:

| Date | Version | Change | Reason |
|------|---------|--------|--------|
| 2026-02-18 | 1.0-draft | Initial review | Phase 2 of ESF development |
| 2026-02-19 | 2.0-draft | Added B.8 (Scaffolded Student Engagement and Socratic AI); updated synthesis with 4th convergent theme and 4th gap; added 9 new references | Two-level architecture integration |
| 2026-02-23 | 2.1-draft | Corrected Weaver (2024) citation: full title, author initial (K. D.), URL added (arXiv:2408.01904), epistemic status updated to preprint. Corrected Pasmala et al.: author initial T. → R. (Rungfa), DOI added, epistemic status updated to peer-reviewed, [PREPRINT] tag removed from body text. | Citation verification pass |

---

## D. Synthesis

Four convergent themes and four persistent gaps emerge from this literature.

### Convergent Themes

**1. Epistemic agency requires structural support.** The literature converges on the finding that maintaining human intellectual ownership in AI-assisted work demands deliberate effort: cognitive, metacognitive, and procedural mechanisms (Clark & Chalmers, 1998; Wu et al., 2025; Tankelevitch et al., 2024; Atchley et al., 2024). Without structural intervention, the default trajectory of AI-assisted work is toward passive acceptance of AI-generated content.

**2. Graduated models outperform binary ones.** Every substantial framework in the literature moves beyond the ban-or-permit binary. Perkins et al.'s five-level AIAS scale, Weaver's differentiated disclosure templates, Allen and Kendeou's multi-dimensional AI literacy model: all recognize that the relationship between humans and AI is not a single thing but a spectrum that must be calibrated to context. ESF's Content Epistemic Weight continues this trajectory while reframing the calibration from policy choice to epistemic property.

**3. Process matters as much as product.** Fischer et al.'s argument that assessment must attend to evaluative judgment processes (not just products), Tankelevitch et al.'s emphasis on metacognitive monitoring, and Brown's iterative design cycles all argue that the *process* of producing work is at least as important as the *product.* In AI-assisted academic work, this means that evaluating the final output is insufficient. The epistemic process by which the output was produced must also be visible and evaluable. ESF's Directive Memo, gate records, and Integrity Reports operationalize this principle.

**4. Human-first sequencing develops epistemic agency.** Three independent research traditions converge on a structural principle: students must establish their own understanding before AI enters the process. Hutson's (2025) scaffolded framework, the Washington State OSPI (2024) H-AI-H cycle, and Pasmala et al.'s (2026) research-based learning model all require human cognitive engagement as a prerequisite for AI interaction, not merely a complement to it. Degen and Asanov's (2025) experimental evidence strengthens this convergence: Socratic AI that questions students' reasoning produces better epistemic outcomes than AI that answers directly. The principle is consistent across pedagogy, policy, and experimental research.

### Persistent Gaps

**1. No production methodology.** The literature provides assessment frameworks (AIAS), disclosure frameworks (AID), literacy frameworks (ED-AI Lit), and policy guidance (UNESCO, OECD). None provides a methodology for *producing* AI-assisted academic work with embedded epistemic accountability. The production process itself (the sequence of decisions, drafts, revisions, and evaluations by which intellectual work is created) remains unstructured in the literature.

**2. Faculty as practitioners, not just implementers.** Zawacki-Richter et al.'s (2019) observation that faculty are absent from AI-in-education research remains substantially true. Faculty appear in the literature as implementers of student-facing frameworks, as policy targets, and as AI literacy instructors, but rarely as practitioners who need structured methodology for their own AI-assisted professional work. Scholars acknowledge the credibility gap this creates (faculty requiring epistemic responsibility from students while operating without it themselves) informally but do not address it systematically.

**3. No framework evolution mechanisms.** Existing frameworks are published as current best practice. None includes structural mechanisms for self-revision: research intake cycles, challenge protocols, sunset criteria. Given the pace of AI development, frameworks risk obsolescence within years of publication. The literature calls for adaptive approaches (Luksha et al., 2024; Zawacki-Richter et al., 2019) but does not demonstrate how a specific framework would build adaptiveness into its own architecture.

**4. No unified process model distinguishing producers from learners.** The scaffolding literature (B.8) demonstrates that structured student engagement with AI develops epistemic agency. The production methodology gap (Gap 1) demonstrates that faculty need structured workflows for their own AI-assisted work. No existing framework recognizes that these are *different processes serving different purposes* (one ensuring quality, the other ensuring learning) and designs distinct but structurally parallel models for each. The two-level architecture ESF proposes, with Level 1 for content production and Level 2 for epistemic development, occupies this gap.

These four gaps (production methodology, faculty-facing practice, framework evolution, and the producer/learner distinction) define ESF's positioning in the literature. The framework does not compete with existing contributions. It occupies the space they collectively leave open.

---

## References

Allen, L. K., & Kendeou, P. (2024). ED-AI Lit: An interdisciplinary framework for AI literacy in education. *Policy Insights from the Behavioral and Brain Sciences*, 11(1), 3–10.

Atchley, P., Pannell, H., Wofford, K., Hopkins, M., & Atchley, R. A. (2024). Human and AI collaboration in the higher education environment: Opportunities and concerns. *Cognitive Research: Principles and Implications*, 9, Article 20. https://doi.org/10.1186/s41235-024-00547-9

Bearman, M., Ryan, J., & Ajjawi, R. (2023). Discourses of artificial intelligence in higher education: A critical literature review. *Higher Education*, 86, 369–385. https://doi.org/10.1007/s10734-022-00937-2

Bloom, B. S., Engelhart, M. D., Furst, E. J., Hill, W. H., & Krathwohl, D. R. (1956). *Taxonomy of educational objectives: The classification of educational goals. Handbook I: Cognitive domain*. David McKay Company.

Bozkurt, A. (2024). GenAI et al.: Cocreation, authorship, ownership, academic ethics and integrity in a time of generative AI. *Open Praxis*, 16(1), 1–10.

Brown, T. (2008). Design thinking. *Harvard Business Review*, 86(6), 84–92.

Clark, A., & Chalmers, D. J. (1998). The extended mind. *Analysis*, 58(1), 7–19.

Degen, P.-B., & Asanov, I. (2025). Beyond automation: Socratic AI, epistemic agency, and the future of education. *arXiv*. [PREPRINT]

European Union. (2024). Regulation (EU) 2024/1689 (Artificial Intelligence Act), Article 14: Human oversight.

Favero, L., Pérez-Ortiz, M., Käser, T., & Oliver, N. (2024). Enhancing critical thinking in education by means of a Socratic chatbot. In *AI in Education Workshop*, 17–32. Springer.

Fischer, J., Bearman, M., Boud, D., & Tai, J. (2024). How does assessment drive learning? A focus on students' development of evaluative judgement. *Assessment & Evaluation in Higher Education*, 49(2), 233–245. https://doi.org/10.1080/02602938.2023.2206986

Gobbo, G. (2025). *Sinfonia Artificiale*. [Practitioner book, ISBN 9798293364923]. Note: Practitioner resource, not peer-reviewed.

Hutchins, E. (1995). *Cognition in the wild*. MIT Press.

Hutson, J. (2025). Scaffolded integration: Aligning AI literacy with authentic assessment through a revised taxonomy in education. *FAR Journal of Education and Sociology (FARJES)*, 2(1), 29–54.

Kassorla, M., Georgieva, M., & Papini, A. (2024). AI literacy in teaching and learning: A durable framework for higher education. EDUCAUSE.

Lei, C., et al. (2025). Generative AI-enabled CDIO teaching model for computational thinking. *Computer Applications in Engineering Education*, 33(5).

Luckin, R., Holmes, W., Griffiths, M., & Forcier, L. B. (2016). *Intelligence unleashed: An argument for AI as a tool for empowerment*. Pearson/UCL Knowledge Lab.

Luksha, P., Cubista, J., Laszlo, A., Popovich, M., & Ninenko, I. (2018). *Educational ecosystems for societal transformation*. Global Education Futures. https://www.joshuacubista.com/uploads/7/8/9/8/7898654/gef-report.pdf

Miao, F., & Holmes, W. (2023). *Guidance for generative AI in education and research*. UNESCO.

Naeem, M. (2025). Teaching skills and intellectual virtues with generative AI. *Episteme*, 1–18.

OECD. (2023). *OECD artificial intelligence principles*. Organisation for Economic Co-operation and Development.

Pasmala, R., Hinon, K., & Wannapiroon, P. (2026). Research-based learning integration with artificial intelligence research assistants to enhance research competencies. *Higher Education Studies*, 16(1), 395. https://doi.org/10.5539/hes.v16n1p395 [RECENT: peer reviewed, CCSENET double-blind. Note: author initial in original citation was incorrect (T. → R.).]

Perkins, M., Roe, J., Postma, D., McGaughran, J., & Hickerson, D. (2024). The AI Assessment Scale (AIAS): A framework for ethical integration of generative AI in educational assessment. *Journal of University Teaching & Learning Practice*, 21(6).

Plate, R., & Hutson, J. (2025). Composition pedagogy as AI-native coding. *World Journal of Arts, Education and Literature*, 2(11), 1–10.

Stoyanov, K. (2026). Delegated reasoning and epistemic accountability in human–machine cognition: Toward a framework for verification, responsibility mapping, and epistemic value. *Preprints.org*. https://doi.org/10.20944/preprints202601.1372.v1 [PREPRINT]

Sweller, J. (1988). Cognitive load during problem solving: Effects on learning. *Cognitive Science*, 12(2), 257–285.

Tankelevitch, L., Kewenig, V., Simkute, A., Scott, A., Sarkar, A., Sellen, A., & Rintel, S. (2024). The metacognitive demands and opportunities of generative AI. In *Proceedings of the 2024 CHI Conference on Human Factors in Computing Systems* (CHI '24). ACM.

Torrance, M. (2019). *Agile for instructional designers: Iterative project management to achieve results*. ATD Press.

Washington State Office of Superintendent of Public Instruction. (2024). *Human-centered AI guidance for K–12 public schools*. OSPI.

Weaver, K. D. (2024). The Artificial Intelligence Disclosure (AID) Framework: An Introduction. arXiv:2408.01904. https://arxiv.org/abs/2408.01904 [PREPRINT]

Wu, J., Lee, Y.-H., Chai, C. S., & Tsai, C.-C. (2025). Strengthening human epistemic agency in the symbiotic learning partnership with generative artificial intelligence. *Educational Researcher*, 54, 358–368.

Zawacki-Richter, O., Marin, V. I., Bond, M., & Gouverneur, F. (2019). Systematic review of research on artificial intelligence applications in higher education; Where are the educators? *International Journal of Educational Technology in Higher Education*, 16, Article 39.

---

> **AI Collaboration Disclosure:** This literature review was developed through human-AI collaboration. The author selected and verified all sources, determined the concept cluster organization, and established the analytical framework. AI assisted with structural organization, prose drafting, and synthesis. The review's claims about gaps in the literature reflect the author's analysis of the cited sources. This document follows the ESF protocol: Directive Memo (inherited from Phase 1) → AI-assisted Build → Validate (pending) → Disclose.

---

*Version 2.0-draft | 2026-02-19*
*Epistemic Stewardship Framework; Literature Review*
*Nathan Madrid*
