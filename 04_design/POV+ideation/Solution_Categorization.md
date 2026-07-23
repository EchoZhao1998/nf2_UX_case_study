# 6 · Solution Categorization (Ideate, Week 1 → 2)

**Date:** 2026-07-23 · **Source:** `Solution1.png` (round-1 ideation, all 3 members) · **Process note (7/23, supervisor):** hypothesis statements + value propositions dropped for this case; pipeline is now **POV → problem statements → ideation → categorize → prioritize → goal statement → flows**. Old hypotheses (H1a–H3c) archived in `01_planning/5_Problem_Statements.md`; they seeded many round-1 stickies, so nothing is lost.

**Routing rule:** every sticky lands in exactly one bucket. Nothing deleted. Buckets follow the locked scope (6 hi-fi screens + 2 concept cards + roadmap).

---

## Bucket 1 · CORE — in the 6-screen prototype

| Sticky (author) | Lands on screen | Note |
|---|---|---|
| One-page summary auto-generated, every number traceable to source (Echo) | Generate Summary + Summary view | **Anchor feature.** ex-H1a |
| Tappable timeline tree — doctor's questions answered by tapping, not hearing/speaking (Echo) | Summary view / timeline | **Anchor interaction** for P1 (masked consult). ex-H1b. Needs sketching — see gaps |
| Change summary: highlight trend, compare, tumor growth speed (Echo) | Summary view | ex-H1c/H2b. "Growth speed" phrasing ⚠️ — show data, never interpret urgency |
| Compare each new MRI with past images (Yiran) | Timeline | Merge with above |
| Camera capture → auto-enhance, auto-date, cloud backup (Echo) | Home / upload | ex-H2a. Backup = the differentiator (flood POV) |
| Electronic timeline auto-collating records across hospitals (Yiran) | Home / timeline | |
| Long-term preservation through digitization (Yiran) | Home | Same mechanism as capture+backup — merge |
| History records management + symptom change tracker (SX) | Home | Symptom *recording* only, no interpretation |
| Easy, clear navigation so low-tech users complete core tasks alone (Echo) | Onboarding + global | ex-H3a, locked design constraint |
| Minimalist, low-learning-curve interface (Yiran) | Onboarding + global | Merge with above |

## Bucket 2 · STRETCH within core — build only if capacity allows (cut order applies)

| Sticky | Where | Note |
|---|---|---|
| Certified diagnosis + key-facts emergency card, one-tap share (Echo ×2 — merge the two stickies) | One element on Summary view | ex-H2c, serves S1 school-emergency POV. Static mock, not a flow |
| Phone as whiteboard — doctor jots/types instructions back (Echo) | Summary view element | Nice inversion (doctor→patient channel). If cut, route to remote-visit card |

## Bucket 3 · CONCEPT CARDS (static, roadmap-framed)

**Community card:** Reddit-like Q&A threads, old answers surface first (Echo) · same-symptom patient proportion feedback (SX) · community info filtration/quality control (SX) · auto-extract history frame with privacy covers + manual refine before posting (SX — strongest detail, use it on the card) · sign-language & "not alone" POVs (from backlog).

**Remote-visit card:** text-first link to NF2-literate clinicians (Echo, ex-H3c) · whiteboard jot-down if cut from core · Father Wang minimalist framing.

## Bucket 4 · ROADMAP (mention in mid-pre as 路线图, no design)

| Sticky | Note |
|---|---|
| NF2-capable HSP map with guidance (SX) | Proposal 预期成果 fit |
| Readable NF2 knowledge sessions / recognition frame (Echo, SX) | Onboarding education framing only |
| Anatomical schematic of tumor distribution linked to films (SX) | Strong idea, too heavy for 6 screens |
| Real-time medical advancement updates (Yiran) | ⚠️ curation/accuracy burden — flag in SX accuracy pass |
| Simplified research literature (backlog) | |

## Bucket 5 · ⚠️ RED-LINE — reframe or park (Shengxuan task 1.5 confirms)

| Sticky | Risk | Reframe |
|---|---|---|
| Drug-trial eligibility extraction + line-by-line explanation vs son's records (Echo) | Product judging medical eligibility | In-product: "save this question + relevant records for your clinician." Checklist idea → roadmap pending liability check |
| Mood diary + emotion detection + "appropriate psychological supports" (SX) | Clinical-psych claims; SX self-flagged "needs lit evidence" | Park on roadmap; community card covers "not alone" emotionally |
| Pharmaceutical journey + medicine-taking alerts (SX) | Reminders OK; anything dosing-adjacent is not | Keep as neutral reminder concept, roadmap |

---

## Gaps round 1 didn't cover (targeted round 2)

1. **Onboarding accessibility profile** — the locked screen with the fewest ideas. What is asked (diagnosis year, hearing/vision/tech confidence)? How does UI adapt?
2. **Summary view as in-consult artifact** — the tap-to-answer interaction (P1's anchor) has one sticky and zero sketches. This screen carries the whole case study.
3. **Generate Summary trigger UX** — what does the user do, what does the system show while generating, how are errors/low-quality scans handled?

**Recommendation:** skip full HMW ×5 + Crazy 8s; run **one 30-min targeted Crazy 8s** on gaps 1–2 only (Echo sketches, teammates vote async). Then goal statement → user flow → lo-fi.

## Next actions — Round 2 schedule (locked 7/23; finish before semester starts Jul 27)

*Rationale: round 2 is sketch-heavy and Figma-free = Echo's work, so it must land in the last free-capacity window. Dependency chain: question list → Crazy 8s → role-play. If the weekend slips, delay the role-play, never the Crazy 8s — Week 2 user flows and lo-fi (critical path to Aug 7 mid-pre) depend on these sketches.*

- [ ] **Thu 7/23** — Echo posts async dot-vote on bucket placements (esp. Bucket 2 stretch items); closes Sat 7/25
- [ ] **Fri 7/24** — Echo sends brief to Shengxuan: 8–10 real doctor consult questions, grounded in `02_research/` transcripts + survey open-ends, clinical-judgment additions welcome (tag data vs. expertise). Deliver Sat evening. Design requirement for gap 2: *each answerable in one tap*
- [ ] **Sat 7/25** — Echo: Crazy 8s on gap 1 (onboarding accessibility profile — no dependency) + goal statement, Google UX Ideate template (30 min)
- [ ] **Sun 7/26** — Echo: Crazy 8s on gap 2 (Summary tap-to-answer), sketched against Shengxuan's question list
- [ ] **Mon–Tue 7/27–28** — 15-min role-play: Shengxuan plays clinician using the question list, Echo answers only by pointing at the sketch. Wherever speech is needed, the sketch failed
- [ ] **Week 2 in parallel** — Shengxuan: confirm Bucket 5 reframes in accuracy pass (task 1.5)
