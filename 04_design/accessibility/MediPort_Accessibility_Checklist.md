# MediPort Accessibility Checklist

**Project:** MediPort (NF2 case study) · PwC 包容未来实验室 · Jul 20 – Aug 30, 2026
**Owner:** Echo Zhao · **Version:** 1.0 EN (CN translation batched into Week 6)
**Covers tracker tasks:** 1.6 (Figma setup — checklist) and 4.3 (accessibility review of hi-fi)
**Scope:** 6 hi-fi screens — Onboarding · Home · Log Event · Timeline · Generate Summary · Summary view — plus the 2 static concept cards where applicable.

---

## Why this checklist is different

Generic checklists start from rules. Ours starts from **what NF2 actually does to our users**, then anchors each check to a WCAG 2.2 criterion for credibility. NF2-related schwannomatosis typically causes **progressive bilateral hearing loss and tinnitus** (the hallmark), **vision changes and cataracts**, **facial weakness**, **numbness or weakness in the arms**, **poor balance**, and **headaches and fatigue** from the treatment journey — while usually *not* affecting thinking or memory. So MediPort must work for someone who may not hear, may not see well, may have an unsteady hand — and is often tired. That is the story for the deck: five verbs, one per symptom cluster.

> **Deck slide in one line:** *An app for NF2 must be usable by eye, by touch, and at a patient's pace — Hear · See · Touch · Steady · Understand.*

---

## 1 · HEAR — design for eyes, not ears

*NF2's hallmark is progressive hearing loss in both ears. Assume the user cannot hear the app — ever.*

| # | Check | WCAG 2.2 |
|---|-------|----------|
| H1 | Nothing depends on sound alone: every alert, confirmation, and error has a visual (and haptic) equivalent | 1.3.3 A |
| H2 | Any video or audio content ships with captions or a transcript | 1.2.2 A |
| H3 | All contact / help paths offer a text channel — never phone-call-only | design principle |
| H4 | Summary view is legible at arm's length so patients can answer clinicians by pointing at the screen (tap-to-answer) | product-specific |

## 2 · SEE — high contrast, generous type

*Vision changes and early cataracts are common; some users rely on a screen reader.*

| # | Check | WCAG 2.2 |
|---|-------|----------|
| S1 | Text contrast ≥ 4.5:1; icons and UI components ≥ 3:1 | 1.4.3 / 1.4.11 AA |
| S2 | Layout survives 200% text size without loss or two-directional scrolling | 1.4.4 / 1.4.10 AA |
| S3 | Color never carries meaning alone — pair with icon, label, or pattern (esp. Timeline event types) | 1.4.1 A |
| S4 | Body text ≥ 16 sp, clean typeface, no all-caps blocks, no text baked into images | best practice |
| S5 | Meaningful images and icons have alt text that conveys *meaning*, not appearance | 1.1.1 A |

## 3 · TOUCH — big targets, no tricky gestures

*Tumors on peripheral nerves can cause numbness or weakness in the hands and arms.*

| # | Check | WCAG 2.2 |
|---|-------|----------|
| T1 | Touch targets ≥ 48×48 dp with spacing between them | 2.5.8 AA |
| T2 | No action requires dragging or multi-finger gestures — always a plain-tap alternative | 2.5.7 / 2.5.1 AA/A |
| T3 | Actions trigger on release and can be cancelled by sliding away | 2.5.2 A |
| T4 | Never require shaking or tilting the device | 2.5.4 A |
| T5 | Minimize typing in Log Event: pickers, sensible defaults, and reuse of previously entered info | 3.3.7 A |

## 4 · STEADY — calm motion, no rush

*Balance problems, headaches, and treatment fatigue mean motion and time pressure hurt.*

| # | Check | WCAG 2.2 |
|---|-------|----------|
| M1 | Respect the OS reduce-motion setting; no parallax, bounce, or flashing content | 2.3.1 A / 2.3.3 |
| M2 | Anything that moves for more than 5 s can be paused or stopped | 2.2.2 A |
| M3 | No time limits on logging or forms — a symptom entry can be finished later | 2.2.1 A |
| M4 | Errors are prevented and reversible: confirm before deleting a health record | 3.3.4 AA |

## 5 · UNDERSTAND — plain words, clear paths

*NF2 rarely affects cognition — but our users are tired, stressed, and often reading medical content in a second register. Respect their energy.*

| # | Check | WCAG 2.2 |
|---|-------|----------|
| U1 | One primary task per screen; progressive disclosure for everything else | IA guideline |
| U2 | Navigation is consistent and always visible; same labels mean the same thing everywhere (taxonomy) | 3.2.3 AA |
| U3 | Headings and screen titles make sense read alone, and heading levels never skip | 2.4.6 AA |
| U4 | Form fields have persistent labels and format hints — never placeholder-only | 3.3.2 A |
| U5 | Plain language for medical terms: define on first use, mirror clinicians' wording in Generate Summary | best practice |

---

## Handoff notes (for Figma specs)

Per IBM's guidance, accessibility choices invisible in mockups must be **written into the design spec**: tab/focus order per screen, element labels for screen readers, heading levels, and the accessible color tokens. Add these as a spec panel beside each hi-fi frame.

## How to use

Run the companion sheet **`MediPort_A11y_Review_4.3.xlsx`** during the Week 4 hi-fi review: one column per screen, mark each check ✓ Pass / ✗ Fail / — N/A, log fixes in Notes. Fails become P0/P1 items in the 5.2 findings list.

## Sources

- Mayo Clinic — [NF2-related schwannomatosis: symptoms & causes](https://www.mayoclinic.org/diseases-conditions/neurofibromatosis-type-2/symptoms-causes/syc-20594157)
- W3C — [Guidance on Applying WCAG 2.2 to Mobile Applications](https://www.w3.org/TR/wcag2mobile-22/)
- IBM Design — [Accessibility guidelines for IA, UX and visual design](https://medium.com/design-ibm/accessibility-guidelines-for-information-architecture-ux-design-and-visual-design-5ae33ed1d52d)
- People for Research — [World IA Day 2019: accessibility tips for information architects](https://people4research.medium.com/world-ia-day-2019-accessibility-tips-for-information-architects-79bd187191a4)
