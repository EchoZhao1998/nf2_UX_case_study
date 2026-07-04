# Proposal — NF2 Patient-Led Care: A UX Case Study

*One-flow design project for the Google UX Certificate capstone + job portfolio. Companion plan: `1_Research_&_Execution_Plan.md` (canonical 5-week schedule). Living state: `HANDOVER.md`.*

---

## Working title

**Assembling a life: a unified disease timeline for NF2 patients managing care across hospitals and borders.**

*(No product brand. A case study is named for the problem it solves, not a codename.)*

## The problem

Neurofibromatosis Type 2 (NF2) is a rare genetic condition that causes tumors to grow along nerves, leading to progressive hearing loss, vision changes, and mobility issues. Because care is lifelong and spread across different hospitals — often in different cities or countries — each patient ends up as the only person who holds their whole medical story.

That story lives in scattered places: stacks of printed MRI films, millimeter measurements copied into phone notes, surgical dates remembered imperfectly, drug trials half-tracked. When a patient sees a new specialist, they get roughly ten minutes to reconstruct years of history from memory. Key details get lost, and the patient carries the cognitive and emotional load of being their own medical archive.

## What we're designing (locked scope)

A single, focused flow:

> **Log scattered medical events → see them assembled on one visual timeline → export a doctor-ready 1-page summary on demand.**

Five core screens: **Home · Log Event · Timeline · Generate Summary · Summary view.**

The Doctor-Ready Summary is the timeline's payoff — the same data, exported for a 60-second hand-off to a new physician (with a bilingual toggle for cross-border care).

**Deliberately out of scope** (and worth stating, as evidence of disciplined design): mental-state tracking, a peer-community hub, a plain-language research library, and a sign-language module. An AI MRI-report parser is named as a *future* direction, not a designed screen — its value can't be shown in a UX prototype, and it can't be validated without real diagnostic data. The "research library" is the one feature held open: survey Q10 will decide whether it earns a place.

## Why it matters

Mainstream patient-portal and health-tracking apps are built for common, single-condition care. They fail the rare-disease, multi-tumor case: fragmented records, cross-border consultations, and a user who is also a long-term data manager. Designing well here sets a high bar for two things that generalize far beyond NF2 — **patient-led record-keeping** and **extreme accessibility**, since the same users frequently live with deafness, low vision, hand tremor, and vestibular issues at once.

## Accessibility as the design spine

Every interface decision is tied to a real constraint surfaced in the survey: large touch targets for hand numbness/tremor, high contrast and scalable type for low vision, no fast motion or parallax for vestibular sensitivity, and caption/visual-first patterns for deafness. Accessibility is not a final pass here; it is the structure.

## Team & roles

- **Echo** — end-to-end UX: research, synthesis, IA, wireframes, testing, write-up. As an NF2 patient and a late-deafened designer, lived experience is used as *method* — it sharpens recruiting, question phrasing, and the read on what patients actually do — not as the headline of the work.

- **Xuan** (physician, preparing an NF2 PhD) — clinical sanity-check and stakeholder perspective on how doctors receive patient history. She is a reviewer, not a co-owner of the research instrument; her own validated QoL study, if it happens, is separate.

## Approach & deliverable

Five weeks, following the UX arc Empathize → Define → Ideate → (Protype) → Test. The week-by-week schedule lives in `1_Research_&_Execution_Plan.md` (canonical — this proposal does not duplicate it).

**Final deliverable:** a Figma prototype of the five-screen flow plus a written case study (background → research → persona & journey → design → validation → reflection), packaged for the Google UX evaluator and as a job-portfolio piece. It should read as a humble, specific, deeply-informed piece of patient-led and accessibility-first design — not a corporate app pitch.
