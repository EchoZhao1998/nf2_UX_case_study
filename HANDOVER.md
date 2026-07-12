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
- **Selected:** 3-person group project ships (**CareLink Lab**: Echo/赵婉婷 lead + 孙亦然 + 张盛璇 — final submitted roster, 王宠 dropped off; category: 无障碍环境建设方案; product name **MediPort**; final PDF in `collab/`), 7/20–8/30.
- **Not selected:** reverts to the original plan — Team of 2 (Echo + Xuan), Google UX cert case study, as already scoped in `01_planning/3_Case_Study_Skeleton.md`.

**Update 2026-07-06:** planning docs aligned to the final application, with the solo/2-person build as base case. Decisions: (a) product name **MediPort** adopted everywhere; (b) **AI-ingestion lock reconfirmed** for the cert-track build — stays roadmap-only, core-innovation status is PwC-track-only (this closes Open #7's remaining question); (c) proposal now cites final n=38 survey numbers from `03_analysis/` instead of the n=30 interim stats; (d) execution plan realigned — survey phase done, interviews 7/6–7/15, new end date Aug 8.

Doesn't require hedging most of the work: the core problem/research/design content is identical either way. What forks is (a) the "Role" / team-attribution framing in the write-up (see `3_Case_Study_Skeleton.md` §1 — First Derm case study pattern), and (b) whether the "AI-native ingestion" scope expansion (item 7 above) ships at all — that one may be PwC-track-only ambition that doesn't carry over to the 2-person build.

## File map (restructured 2026-07-06 — numbered by case-study phase)

- `README.md` — project one-liner + folder map. Point newcomers here.
- `HANDOVER.md` — this file. Stays at root.
- `01_planning/`
  - `0_Propasal.md` — rewritten 6/28 (Aegis/ESG stripped). Current.
  - `1_Research_&_Execution_Plan.md` — 5-week plan (June 25–Aug 1). Current.
  - `3_Case_Study_Skeleton.md` — the case-study scaffold. Current spine.
- `02_research/`
  - `2_Survey_0627.md` — survey EN + CN working draft.
  - `2_Survey_0627_PUBLISH.md` — published version (launched 6/29 via WeChat).
  - `Interview_Emotional_Probes.md` — interview probe bank.
- `03_analysis/` (was `DataAnalysis/`)
  - `data/NF2_Survey_Data.xlsx` — survey export, n=38 as of 7/5. Contains PII (IPs, Q11 contacts) — never publish raw.
  - `data/访谈回答（原始）.pdf` — raw text-interview answers (#12, #20, #14, #38). PII: hospitals/doctors/ages — never publish.
  - `data/Interview_Transcripts_EN_0710.md` — full English translation of the 4 interviews (7/10). Internal only until anonymized.
  - `reports/Interview_Findings_Report_0710.md` — critical findings from interviews (7/10); feeds case study §3. CN version pending.
  - `reports/Personas_0710.md` — 2 primary personas (记录管家/慧兰 caregiver-proxy, 自航者/林悦 young deaf patient) + anti-persona (老周 veteran skeptic), with teaching notes. CN version pending.
  - `notebook/01_survey_analysis.ipynb` — full survey report (built 7/6, runs end-to-end; drops PII in step 2).
  - `figures/` — fig1–fig4 exported charts. `reports/survey_summary.csv` — auto-computed headline numbers.
  - `reports/Survey_Findings_Report_0706.md` — **the shareable findings report** (prose, no code; feeds case study §3). Notebook = how, report = what.
- `04_design/` — empty; Figma exports land here.
- `05_outreach/` (added 7/6) — `NF2_Research_Snapshot_LinkedIn_0706.pdf` (5-slide EN carousel, mid-way public snapshot), `linkedin_post_draft.md` (post text + reuse notes), `carousel_src.html` (editable source; regenerate via weasyprint).
- `collab/` — `Notion_Workspace_Blueprint.md`, `Reflection_tracker.md` (ex `Case_study_story_tracker.md`), PwC 申报书 docx (empty template) + final submitted PDF (`包容未来实验室项目申报书-MediPort...pdf`, added 7/6).
- `archive/` — `00_..._raw_motivition.md` (superseded brainstorm).

Note (7/6, confirmed by Echo): the uncommitted deletions (`PwC_Application_Draft_0701.md`, `Echo_advantage.md`, `Feishu-用户旅程（草稿）.md`, `OutreachEmail0629.md`, `3_Post_Copy_0629.md`, old `Survey/` data, PwC pdf/jpg) are **intentional** — pruned for file sanity. `Case_study_story_tracker.md` → `Reflection_tracker.md` was a deliberate rename. All recoverable from git history if ever needed.

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

## Interview round 1 analyzed (2026-07-10) — key state

4 of the planned 5–8 interviews done and analyzed (#12 caregiver-mother, #20 new patient, #14 caregiver-father, #38 veteran patient; #15 and #27 from the emphasis list still pending). Headline findings (full argument in `reports/Interview_Findings_Report_0710.md`):

- **Proxy-distance beats disease-duration** as the pain axis: patients retrieve history from memory (1 sec – 2 min); caregivers can't (4–5 min – unbounded). Action: re-cut survey n=38 by role to confirm.
- **Summary demand confirmed but conditional:** 2/4 will personally audit early outputs; #20's kill-switch = date/trend-reversal errors → misdiagnosis → permanent abandonment. Design mandates before Figma: provenance links on every summary number + explicit verbatim/paraphrase choice.
- **Trend chart endangered:** #20 (a supporter) unprompted: cross-machine MRI variance + hearing-test confounds make naive mm-trend lines clinically misleading; doctors judge by compression, not size. Chart must show measurement context/uncertainty or restrict to same-source comparisons.
- **Real incumbents:** deliberate paper (album slower than sorted bag — 2/4), 云胶片 QR codes, and raw LLMs (#20 asked Doubao in hour one; #38: "shell on an LLM", predicts medical AI kills wrappers, cites 音书 vs AI captions). Case study must answer #38 head-on.
- **Consult communication is the deeper accessibility gap:** all 4 route doctor-talk through a hearing family member; #20 can't hear the doctor's document requests; #38 "doctors are unwilling to communicate with me directly." Reframe Summary as a consult-accessibility device, not just a time-saver.
- **Safety flag (do not surface naively in product):** group-recommended OTC meds for a child (#12); self-managed off-label brigatinib 90mg/day with no imaging follow-up (#14). Medication/community features need an unverified-info boundary — candidate "left out and why" section.
- **Open #3 rationale amended (7/10):** D1 recall test *passed* 3/4 — literature demand is real consumption of actionable treatment intel (indications, trials, plain-language digests), not hoarding. Library stays cut for scope, but the recorded "squirrel" reasoning is superseded; roadmap-name it as trial-radar/plain-language digests.

## Decision log

| Date | Decision | Why |
|------|----------|-----|
| 2026-06-28 | Locked single flow (Timeline→Summary) | 6 products can't ship in 5 wks; focus wins portfolios |
| 2026-06-28 | Demoted AI parser to future mention | Invisible AI = no visible UX credit; unvalidatable |
| 2026-06-28 | Survey stays UX instrument; Xuan gets story + pilot framing | Avoid diluting design signal while still serving her |
| 2026-06-28 | Research library = data-gated on Q10 | Let evidence, not assumption, decide |
| 2026-07-10 | Personas segmented on proxy-distance, not demographics; 2 primary + 1 anti-persona | Interview evidence: role (patient vs proxy) is what changes design decisions |
| 2026-07-10 | Summary requires provenance links + verbatim/paraphrase toggle before Figma | #12/#20 trust model: users audit early outputs; paraphrase errors = abandonment |
| 2026-07-12 | Interviews #15/#27 closed as unreachable (invalid contacts); n=4 final | Persona confidence caveats now permanent; compensate via survey role re-cut + usability tests |
| 2026-07-12 | Define stage drafted: `03_analysis/reports/Problem_Statements_0712.md` (EN/CN problem + hypothesis + goal statements, 2 personas; 老周 = constraints only) | Bridges personas → design; 林悦 consult-mode tension logged, not resolved — decide after 7/17 fork |
