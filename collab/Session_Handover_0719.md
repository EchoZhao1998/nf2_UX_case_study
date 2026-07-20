# 🤝 Session Handover — 2026-07-19 (planning chat → next chat)

Purpose: this chat covered planning, empathy-canvas review, scope decisions, and problem statements. Open a fresh chat per topic from here. Paste the prompt at the bottom to boot a new session with full context.

## What exists now (files created/updated this session)

| File | What it is |
|---|---|
| `01_planning/2_PwC_6Week_Plan.md` | 6-week plan (Jul 20–Aug 30), weekly tables, owners, risks — **source of truth** |
| `01_planning/2_PwC_6Week_Tracker.xlsx` | Same plan as trackable sheet, 30 tasks, status dropdowns |
| `01_planning/4_Kickoff_Agenda.md` | 90-min kickoff agenda + decisions log |
| `01_planning/5_Problem_Statements.md` | 7 refined POVs with evidence + scope mapping, workshop checklist |

## Decisions made (locked unless team overturns)

1. **Scope v2:** hi-fi core flow ≈ 6 screens — Onboarding (diagnosis-year + accessibility profile) → notebook-style Home (explicit upload, timeline, teasers) → Generate Summary → Summary view. Community + Remote-visit = **1 static concept card each** (non-interactive, reached via Home teasers, framed as roadmap). Matches PwC proposal promise (prototype = 上传/整理/时间线/摘要; 社区等 = 路线图).
2. **Personas:** primary = Xiao Li (patient); secondary = Mother Chan (records) + Father Wang (remote/low-tech). 4th persona → appendix.
3. **Echo capacity:** semester from ~Jul 27 → 5–8 hrs/wk; Echo does Figma-critical work only; Yiran/Shengxuan own everything non-Figma. Cut order: concept-card polish → onboarding 2nd screen → screen polish; **never cut usability testing**.
4. **Mid-pre:** placeholder Fri Aug 7 (end of Week 3) — Echo confirming real date with PwC. Deck reuses Empathy_canvas assets (need CN versions, task 3.2b).
5. **Usability tests (Week 5):** 5 sessions; recruit 7 from Q11 volunteer pool (n=30, not only past interviewees; 2 familiar + 3 fresh ideal); fallback = proxy users (chronic-disease record-keepers, hearing-loss users); Shengxuan sends soft save-the-date in Week 1–2.
6. **Design constraints harvested:** text-first everything (masked-consult POV); radical UI simplicity for low-confidence 56+ users (Father Wang); no diagnostic-advice framing (medical-liability line — Shengxuan flags in accuracy pass, task 1.5).
7. **Bilingual policy:** CN for PwC decks, EN for portfolio; translate mid-pre canvases Week 3, everything else once in Week 6.

## Key assets

- `04_design/Empathy_canvas/`: 4 personas, 4 journey maps, 6 user stories, empathy map, PHV template (problem/hypothesis/value + "Wrong Example" anti-feature-leak guard), goal-statement (Ideate) template. **Note: pngs are huge — downscale before viewing in chat.**
- Research: survey n=38 (100% no structured tool · 63.64% paper · 65% referral communication difficulty · 95% hearing loss) in `03_analysis/`; interviews in `02_research/`.
- PwC proposal (promises made): `collab/包容未来实验室项目申报书-*.pdf`.

## Immediate next steps (Week 1, Jul 20–26)

1. Hold kickoff (agenda ready) → lock persona decision formally
2. Define workshop: ratify problem statements → write hypothesis statements + value prop (fill PHV) + goal statement (Ideate template)
3. Shengxuan: medical accuracy pass (facts, care-journey realism, terminology, feasibility flags — output = comment list, 2–3 hrs) + save-the-date to volunteer pool
4. Echo: Figma setup + confirm mid-pre date with PwC

## Suggested new-chat split

- Chat A "Define workshop": hypothesis statements, value prop, goal statement
- Chat B "Design": user flows, lo-fi, hi-fi, Figma questions
- Chat C "Mid-pre deck": deck structure, CN canvas versions
- Chat D "Google UX course": Module 3 guidance alongside project work

---

## 📋 Pastable prompt for a new chat

```
Context: I'm Echo, team lead of CareLink Lab — 3-person team (me: data science + only Figma user; Yiran 孙亦然: architecture/accessibility; Shengxuan 张盛璇: clinical/pediatrics). Our project MediPort (NF2 patient-led record & communication tool) was selected by PwC 包容未来实验室: 6 weeks Jul 20–Aug 30 2026, mid-presentation ~Aug 7 (TBC), final defense September. This doubles as my Google UX certificate portfolio piece (I've finished Module 2, starting Module 3). My semester starts ~Jul 27 → I have 5–8 hrs/week; teammates carry non-Figma work.

You are my senior PM + UX design partner. Read these first:
- NF2_case/collab/Session_Handover_0719.md  (decisions + state — trust it)
- NF2_case/01_planning/2_PwC_6Week_Plan.md  (the plan)
- NF2_case/01_planning/5_Problem_Statements.md  (ratified POVs)

Locked decisions (don't reopen unless I ask): scope = ~6 hi-fi screens (onboarding → notebook home → generate summary → summary view) + 2 static concept cards (community, remote visit); primary persona Xiao Li, secondary Mother Chan + Father Wang; no solutions in problem statements; CN for PwC deliverables, EN for portfolio.

Today I want to work on: [TOPIC]
```
