# MediPort — NF2 Case Study — Skeleton & Build Guide

*The scaffold the coming weeks fill in. Each section says what goes here, what evidence proves it, and which weekly deliverable feeds it. Write the case study into THIS structure as you go — don't synthesize from scratch at the end.*

*Product name: **MediPort** (adopted 2026-07-06, same name as the PwC application). Use it consistently in the write-up.*

---

## Locked scope (do not reopen)

- **One flow:** Unified Disease Timeline → Doctor-Ready 1-page Summary as its payoff screen.
- **Five core screens:** Home · Log Event · Timeline · Generate Summary · Summary view.
- **AI ingestion ("随手收集，智能整理" / collect-first-organize-later):** mentioned as a *future ambition* in the reflection and roadmap only. Not a designed screen. Reason: evaluators can't see UX credit in invisible AI, and you can't validate parsing without real data. (Reconfirmed 2026-07-06 for the solo/2-person build. The PwC application pitches it as core innovation — if that track is selected, scope is renegotiated there, not here.)
- **Cut from this case study:** mental-state logging product, research library, sign-language module. They may appear as one line in "what I left out and why" — proof of disciplined scoping, which evaluators reward.
- **Xuan's role:** clinical sanity-check and a named stakeholder quote. NOT co-owner of the survey. Her PhD QoL work is a separate instrument.

---

## Disclosure stance (applies to the whole write-up)

Your NF2 / deafness is the *credibility engine*, not the headline. Lead each section with the design problem and the user; let your lived experience surface as method ("I'm an NF2 patient, so I could pressure-test recruiting and phrasing in ways an outside designer couldn't"). Never open the case study with your diagnosis. Skill-first, lived-experience-as-proof.

---

## 0. Hook / TL;DR  *(write LAST, top of page)*

One sentence on the problem, one on the solution, one hero image (the final Summary screen).
- *Who it's for · what breaks today · what you designed · the single outcome metric or quote.*
- Feeds from: Week 5 final artifacts.

---

## 1. Context & My Role

- The setting: rare disease, fragmented cross-border care, patient as lifetime record-keeper. **Plain language — no "Project Aegis," no ESG, no "Principal Investigator" branding.**
- Your role: end-to-end UX (research → synthesis → IA → wireframes → test). **Base case: Team of 2 (Echo + Xuan)** — this is what ships if the PwC proposal isn't selected (result by 7/17, see `HANDOVER.md`).
- **Team-size fork — resolved by pattern, not by rewriting this skeleton:** if PwC selects the team proposal instead (**CareLink Lab, 3 people:** Echo/赵婉婷 lead + 孙亦然 accessibility review + 张盛璇 medical content — final submitted roster; 王宠 is no longer on the team), keep this exact structure and section order. Reference: [First Derm case study, Shu Jiang](https://www.shujdesign.com/firstderm) — a designer on a larger team writes a short "Role: Lead Product Designer" line + "I worked with a team of product designers and researchers," then uses "I" throughout for what she personally owned (e.g., "I joined the team working on landing and uploading photos," "I facilitated...") and "we" for team-level decisions. Do the same: one "Role:" line up top, "I" for your specific ownership, "we" for the group's calls. Content doesn't change, just the attribution voice.
- Constraints made honest: rare-disease = small sample; solo Figma build (or shared team Figma, if the PwC path ships); 5-week timebox. State these — owning constraints reads as senior.
- Feeds from: this doc + plan dates.

## 2. The Problem (North Star)

- The *ultra-specific* reframed statement. Replace the abstract "principal investigator" line with a named-persona sentence, e.g.: *"[Persona] needs to assemble scattered MRI reports, symptoms, and surgeries into one view because in a 10-minute consult she can't reconstruct her own timeline from memory."*
- Initial assumptions, dated, written BEFORE interviews (intellectual honesty = you'll later show which were wrong).
- Feeds from: Week 1 (assumptions) → Week 3.4 (refined North Star).

## 3. Research

- **Method:** secondary research (3 challenges from papers), competitive audit (MyChart / PatientsLikeMe — what fails for rare/multi-tumor), survey (**final n=38**, closed 7/5 — analysis, charts, and headline numbers live in `03_analysis/`; cite from `reports/survey_summary.csv`, don't hand-type stats), interviews. State numbers honestly; never claim significance on small n.
- **The survey as a thinking artifact:** include the "begin with the end / every question drives a design decision" story and the DeepSeek-vs-critical-mindset anecdote — that's a differentiator. (See `collab/Reflection_tracker.md`, formerly `Case_study_story_tracker.md`.)
- **Raw quotes:** 5–8 anonymous verbatim quotes. Hiring managers value these over polished charts.
- Feeds from: Week 1 (1.1–1.4), Week 2 (all).

## 4. Synthesis (Define)

- **1 primary persona** — real, from data, with goal + frustration + accessibility profile (from survey Q5).
- **User journey map** — one scenario: "the 2 days before a check-up," emotional highs/lows.
- **Top 3 insights → 5 "How Might We"** statements.
- *(Optional, for Xuan:)* a separate "operational friction" note for her PhD — kept OUT of the portfolio narrative so it doesn't dilute the design story.
- Feeds from: Week 3 (3.1–3.4), Week 4.1.

## 5. Design (Ideate & Build)

- **Information Architecture** — how a user gets from Home → Timeline → Summary. One diagram.
- **User flow** for the hero path: Log an event → see it on Timeline → Generate doctor summary.
- **Crazy Eights → low-fi wireframes** (5 screens) → hi-fi in Figma.
- **Accessibility as the design spine, tied to survey data:** ≥48dp touch targets (hand tremor), high-contrast / large type (vision), no parallax or fast motion (vestibular), captions/visual alerts (deafness). Every choice cites a survey number. This is your moat — make it explicit.
- Feeds from: Week 4 (4.1–4.4).

## 6. Validation

- Guerrilla usability test with 2–3 original interviewees: "point to where you'd log a headache."
- 3–5 iterations, shown as before/after.
- Feeds from: Week 5 (5.1–5.2).

## 7. Outcome & Reflection

- What the final flow does; the one moment that proves it (the 60-second handoff).
- **What I left out and why** (the cut features — disciplined scoping).
- What I'd validate next; where the AI parser *could* go later.
- Honest learnings, including what your assumptions got wrong.
- *If reusing for PhD:* frame as evidence of research aptitude (structured inquiry, synthesis, accessibility scholarship) — NOT as a substitute for a paper.
- Feeds from: Week 5 (5.3–5.4).

---

## Map: weekly plan → case-study section

| Week | Plan deliverable | Fills section |
|------|------------------|---------------|
| 1 | Desk research, competitive audit, survey, assumptions | 1, 2, 3 |
| 2 | Survey responses + interviews | 3 |
| 3 | Affinity map, persona, journey, refined North Star | 2, 4 |
| 4 | HMW, IA, user flow, wireframes | 4, 5 |
| 5 | Usability test, iterate, write-up, polish | 6, 7, 0 |

---
