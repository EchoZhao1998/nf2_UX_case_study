# NF2 UX Case Study — Handover

*Per-chat state tracker. Read this first when opening a new dialogue on this project.*

**Project:** NF2 patient-led care — UX case study for Google UX Certificate + job portfolio (+ possible PhD-aptitude evidence).
**Owner:** Echo. **Stakeholder:** Xuan (clinical sanity-check + her own NF2 PhD prep).
**Folder:** `Career/Google_UX_design/NF2_case/`
**Started tracking:** 2026-06-28.

---

## Locked decisions (do not reopen without cause)

- **One flow:** Unified Disease Timeline → Doctor-Ready 1-page Summary (payoff screen).
- **5 screens:** Home · Log Event · Timeline · Generate Summary · Summary view.
- **AI MRI parser:** future-ambition mention only, not designed.
- **Cut:** mental-state product, research library, sign-language module → appear only as "what I left out and why." (Research library is *conditionally* revivable — see Open #3.)
- **Drop "Project Aegis" branding / ESG / "Principal Investigator" language.** Plain, specific, humble.
- **Disclosure stance:** NF2/deafness = credibility engine, never the headline. Skill-first.
- **Xuan balance:** survey stays a clean UX instrument. She gets value via (a) collaboration story for her statement, (b) 2–3 tagged exploratory questions as *preliminary pilot data* (honestly labeled), (c) warm intros to the cohort for her own validated study later. Her survey ≠ your survey.
- **Bilingual-by-default (2026-07-02):** every project doc gets a Chinese + English version, not just the PwC form. Reason: outcome fork below — Chinese matters for PwC/teammates either way, English matters for the Google UX cert/job portfolio either way. Don't treat this as PwC-specific.

## Outcome fork (2026-07-02) — track this, don't forget it exists

The PwC submission due 7/10 is **an application, not a commitment** — selection results land by **7/17** (per the program's own timeline). Two branches:
- **Selected:** 4-person group project ships (Echo + 孙亦然 + 张盛璇 + 王宠), 7/20–8/30.
- **Not selected:** reverts to the original plan — Team of 2 (Echo + Xuan), Google UX cert case study, as already scoped in `3_Case_Study_Skeleton.md`.

Doesn't require hedging most of the work: the core problem/research/design content is identical either way. What forks is (a) the "Role" / team-attribution framing in the write-up (see `3_Case_Study_Skeleton.md` §1 — First Derm case study pattern), and (b) whether the "AI-native ingestion" scope expansion (item 7 above) ships at all — that one may be PwC-track-only ambition that doesn't carry over to the 2-person build.

## File map

- `00_..._raw_motivition.md` — original feature brainstorm (superseded; archive reference).
- `0_Propasal.md` — needs rewrite to strip Aegis/ESG branding.
- `1_Research_&_Execution_Plan.md` — 5-week plan (June 25–Aug 1). Current.
- `2_Survey_0627.md` — survey EN + CN. Needs fixes (see Open #1, #2).
- `3_Case_Study_Skeleton.md` — the case-study scaffold. Current spine.
- `Case_study_story_tracker.md` — milestone reflection log (interview stories).
- `Notion_Workspace_Blueprint.md` — how to structure the shared Notion with Xuan.
- `HANDOVER.md` — this file.

## Collaboration setup

- **Notion = live co-work surface with Xuan.** This local folder = source-of-truth / backup + the parent that feeds Notion. Treat local docs as canonical; Echo mirrors finalized versions into Notion. Don't build collaboration tooling in the local folder.

## Open items / next actions

1. ~~Reconcile EN vs CN survey~~ ✅ 2026-06-28 (Q3 options aligned, Q1 rationale fixed).
2. ~~Re-frame survey Q10~~ ✅ 2026-06-28 (now MVP prioritization; research-library kept as adjudicator).
3. ✅ **Research-library cut: reconsidered, staying cut (for now).** 2026-07-01, updated 2026-07-02 with final n=22 data (`..._new.pdf`; `..._old.pdf` is the stale n=8 version — ignore it). Reasoning: Q10's forced top-2 ranking is a stated-preference/frequency measure, not a value measure — it structurally favors "vitamin" features (checked often) over "painkiller" features (rare, high-stakes). At n=22: 多维疾病时间线 (timeline) and 通俗前沿文献库 (research library) are now **tied at 50%**; AI报告解析 40.91%; 出诊交接仪表盘 (doctor-ready summary) still lowest at **22.73%**. Cross-checked against Q7 (revealed behavior, same n=22): only 9.09% actually consult past MRI data when a new symptom appears, and only 9.09% dig into literature — vs. 31.82% who go straight to contacting their doctor. Echo's read: the research-library preference likely reflects a "collect it, might need it someday" hoarding instinct rather than real usage intent ("squirrel symptom") — people say yes to content they rarely act on. The behaviorally-confirmed demand is the doctor-contact/summary path and the timeline. Doctor-Ready Summary's low Q10 score is reframed as expected, not damning — nobody expects to click "generate" often, but that doesn't mean it's low-value; it's the rare payoff action, correctly nested one tap off the Timeline in the current 5-screen flow, not a separate destination.
   **Caveat, keep visible:** n=22 is still small; none of this is statistically confirmed. Treat as a working hypothesis — test directly in the 5–8 planned interviews (ask about *actual past behavior* with translated research content, not hypothetical preference, to check the hoarding-bias read).
7. ✅ **AI-native ingestion: resolved for the PwC track, still open for the Google UX cert track.** 2026-07-02. The teammate drafting 创新点阐释 built it in as "Innovation 2 — Collect First, Organize Later" — AI-assisted ingestion is now core to the PwC pitch, not future-only. Part 4 (`PwC_Application_Draft_0701.md`) is planned around this assumption. **Still unresolved:** whether this also reopens the "AI MRI parser: future-ambition mention only" lock for the 2-person Google UX cert build (option (a) vs (b) from the earlier note) — that decision hasn't been made, only deferred by scoping it PwC-specific for now.
8. ✅ **PwC build scope reconciled against `Feishu-用户旅程（草稿）.md`.** 2026-07-02. The Feishu draft describes a 5-tab product (基础信息 / 病历管理 / 日常记录 / 病友社区 / 研究前沿 + auto-reminders) — considerably bigger than what one person can build to real Figma fidelity in 6 weeks (7/20–8/30) alongside coursework. Resolution in Part 4: build 基础信息 (light) + 病历管理's core loop (timeline + AI ingestion + summary — same flow as the Google UX cert's locked scope, so it's shared work, not duplicated) to real fidelity; 日常记录/病友社区/研究前沿 go in as roadmap-only, not built this cycle. Matches the existing pattern (AI parser, research library) of naming cuts explicitly rather than quietly under-delivering. Team role split: 张盛璇 (clinical content review), 王宠 (accessibility standards), 孙亦然 (content/layout support) — none of them touch Figma; only Echo does. **Named risk:** if any of the three go quiet over 6 weeks, Weeks 3–4 (solo Figma build) don't get easier — no slack built in for that yet.
4. ~~PwC "包容未来实验室" go/no-go~~ ✅ 2026-07-01 GO. Team of 4 (Echo + 孙亦然 + 张盛璇 + 王宠, 3/4 disabled) applying under "体现融合理念的产品设计." Draft 项目简介/项目背景 done — see `PwC_Application_Draft_0701.md`. Submission deadline 2026-07-10 24:00.
5. ~~Rewrite `0_Propasal.md`~~ ✅ 2026-06-28 (Aegis/ESG stripped, aligned to locked scope, cross-refs the plan). **Foundation phase complete.**
6. ~~Tag Xuan's exploratory questions~~ ✅ 2026-06-28 (Q4/Q8/Q9 tagged "Shared exploratory", leads flipped UX-first). **Survey now launch-ready.**

## Decision log

| Date | Decision | Why |
|------|----------|-----|
| 2026-06-28 | Locked single flow (Timeline→Summary) | 6 products can't ship in 5 wks; focus wins portfolios |
| 2026-06-28 | Demoted AI parser to future mention | Invisible AI = no visible UX credit; unvalidatable |
| 2026-06-28 | Survey stays UX instrument; Xuan gets story + pilot framing | Avoid diluting design signal while still serving her |
| 2026-06-28 | Research library = data-gated on Q10 | Let evidence, not assumption, decide |
