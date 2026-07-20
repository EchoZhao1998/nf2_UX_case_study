# 📅 PwC "包容未来实验室" 6-Week Plan — MediPort

**Program window:** Jul 20 – Aug 30, 2026 · **Mid-presentation:** placeholder **Fri Aug 7** (end of Week 3, confirm with PwC) · **Final defense:** September (date TBD)
**Team (CareLink Lab):** Echo 赵婉婷 (lead / product design / research) · Yiran 孙亦然 (product design / accessibility review) · Shengxuan 张盛璇 (medical content / user research)

> **Reality check baked into this plan:** Empathize is ✅ done (survey n=38, interviews). Echo's semester starts ~Jul 27 → her capacity drops to **5–8 hrs/wk from Week 2**. So Week 1 front-loads Echo's heavy Figma setup, and Weeks 2–6 shift research synthesis, content, and testing logistics to Yiran & Shengxuan. Echo owns only the **core hi-fi flow (v2, ~6 screens)**: Onboarding (diagnosis-year + accessibility profile) → notebook-style Home (explicit upload, timeline, function teasers) → Generate Summary → Summary view. **Community & Remote visit = 1 static concept screen each** (Yiran drafts lo-fi, Echo polishes once) — reachable from Home teasers, framed as roadmap, matching what the PwC proposal promised (prototype = 上传/整理/时间线/摘要; 社区等 = 路线图).

> **Google UX cert mapping (Echo):** Week 1 = Define (Module 2 ✅) · Weeks 2–3 = Module 3 (wireframes & lo-fi) · Weeks 3–4 = hi-fi (Module 5 preview) · Week 5 = testing (Module 4 concepts). The case study doc doubles as your portfolio piece — capture decisions weekly, don't backfill.

## Cadence

- **Weekly sync:** 60 min, Sunday evening (fits Echo's semester schedule) — review deliverables, unblock, assign next week.
- **Async:** Feishu daily; files in this repo / Notion per `collab/Notion_Workspace_Blueprint.md`.
- **Definition of done:** every deliverable saved to its numbered folder + one line in `collab/Reflection_tracker.md`.

---

## Week 1 · Jul 20–26 — Define（问题定义）

*Echo still at full capacity — heaviest shared-thinking week on purpose.*
*Status update 7/18: `04_design/Empathy_canvas/` already holds 4 personas, 4 journey maps, 6 user stories, empathy map, plus PHV (problem/hypothesis/value) and goal-statement templates. Week 1 is therefore **converge & fill**, not create.*

| # | Task | Owner | Deliverable |
|---|---|---|---|
| 1.1 | Kickoff: walk teammates through survey insights + `Empathy_canvas` assets | Echo → all | 30-min walkthrough |
| 1.2 | **Converge: select 1 primary + 1 secondary persona** (from the 4) with written rationale; then problem statements (1 primary + 2 secondary) via PHV template | All (workshop) | Selection rationale + `3_Case_Study_Skeleton.md` §2 updated |
| 1.3 | **Hypothesis statements** + **value proposition** (fill PHV template Steps 1–3) | Echo refines | Filled PHV canvas |
| 1.4 | **Goal statement** (Ideate template: product/action/audience/impact/criteria) — defines measurable success for the prototype | Echo + Yiran | Goal statement |
| 1.5 | Medical accuracy pass on the 2 selected personas + their journey maps | Shengxuan | Reviewed canvases |
| 1.6 | Figma project setup: file structure, design tokens, accessibility checklist (WCAG for hearing/vision) | Echo | Figma workspace ready |
| 1.7 | Confirm mid-pre date & format with PwC | Echo | Date locked, plan adjusted |

## Week 2 · Jul 27 – Aug 2 — Ideate + Lo-fi（Echo capacity drops）

| # | Task | Owner | Deliverable |
|---|---|---|---|
| 2.1 | HMW statements (5) + Crazy Eights workshop (paper/FigJam — no Figma skill needed) | All | HMW list + sketch photos |
| 2.2 | User flow: Log Event → Timeline → Generate Summary | Echo (2–3 hrs) | Flowchart |
| 2.3 | Lo-fi wireframes, core flow v2 (~6 screens: onboarding → home/notebook → summary) |Yiran (paper drafts feed in) + Echo (Figma) | Lo-fi set → `04_design/` |
| 2.4 | Doctor-summary content model: what fields must a 就诊摘要 contain to be clinically usable | Shengxuan | Summary field spec (bilingual) |
| 2.5 | Accessibility heuristic pass on lo-fi | Yiran | Issue list |
| 2.6 | Competitor audit refresh (June audit covered PatientsLikeMe/MyChart): NotebookLM interaction pattern, CN 病历夹 apps, 微医/好大夫 remote-visit flow, 泡泡家园 community | Shengxuan (~3 hrs) | 1-page audit notes |
| 2.7 | Lo-fi concept cards: Community + Remote visit (1 static screen each) | Yiran | 2 concept cards |

## Week 3 · Aug 3–9 — Hi-fi starts + **Mid-presentation (Fri Aug 7)**

| # | Task | Owner | Deliverable |
|---|---|---|---|
| 3.1 | Hi-fi design system + Onboarding + Home/notebook screens | Echo (5–8 hrs) | Figma frames |
| 3.2 | **Mid-pre deck**: background → research evidence (n=38 stats) → problem/persona → lo-fi direction → next steps. Reuse `Empathy_canvas` assets: primary persona, its journey map, empathy map | Yiran leads build, Shengxuan medical slides, Echo reviews + presents | Deck (CN) → feishu |
| 3.2b | CN versions/annotations of the 3–4 canvases used in the deck (persona, journey map, empathy map) | Yiran translates, Echo exports from Figma(trim off depends on Yiran capbility) | CN canvas exports |
| 3.3 | Mid-pre rehearsal (30 min in Sunday sync) | All | Feedback applied |
| 3.4 | Recruit 5 usability-test participants from Q11 volunteer pool (need lead time!) | Shengxuan | Confirmed participant list(If we can't hire tester, try plan B and C) |

## Week 4 · Aug 10–16 — Hi-fi complete

| # | Task | Owner | Deliverable |
|---|---|---|---|
| 4.1 | Remaining hi-fi screens (Generate Summary, Summary view) + one polish pass on 2 concept cards + clickable prototype | Echo | Figma prototype link |
| 4.2 | Real medical content populated into screens (no lorem ipsum — real NF2 timeline data) | Shengxuan | Content in Figma (Echo places) |
| 4.3 | Accessibility review of hi-fi (contrast, text size, non-audio cues) | Yiran | Review report |
| 4.4 | Usability test plan + task script (5 tasks, accessible formats: text-based for HoH participants) | Yiran drafts, Echo approves | Test script |

## Week 5 · Aug 17–23 — Usability testing + iteration

| # | Task | Owner | Deliverable |
|---|---|---|---|
| 5.1 | Run 5 moderated tests (text/voice per participant's accessibility needs) | Shengxuan moderates, Yiran notes | Notes per participant |
| 5.2 | Synthesize findings → prioritized fix list (P0/P1/P2) | Yiran + Echo | Findings report |
| 5.3 | Iterate P0 fixes in prototype | Echo | Updated prototype + before/after shots |

> Note: 
> Plan A: Call back the 4 interviewees
> Plan B: If #7 #24 reply email and #3 accept via WeChat  
> Plan C: Ourselves (+ mentor)

## Week 6 · Aug 24–30 — Final materials + roadmap

| # | Task | Owner | Deliverable |
|---|---|---|---|
| 6.1 | Product roadmap: 病友社区 · 研究前沿 · 健康记录 (per proposal 预期成果 #4) | Shenxuan + Yiran | Roadmap 1-pager |
| 6.2 | Final defense deck (CN) — full story: problem → evidence → design → test → iterate → roadmap | Yiran leads, all contribute | Deck v1 → `collab/` |
| 6.3 | Design documentation package (需求分析、设计决策、无障碍原则、测试记录) | All (compile existing docs) | Doc package, CN (CN for PwC, EN files all for Echo and Shengxuan need) |
| 6.4 | Retro + September defense logistics | All | Rehearsal schedule |

## September — Final defense (date TBD)

Two rehearsals (one accessibility dry-run: captions/scripts ready), deck v2 polish, Q&A prep (Shengxuan preps medical Q&A, Echo preps design-decision Q&A).

---

## Risks & mitigations

| Risk | Mitigation |
|---|---|
| Echo's semester load spikes → Figma bottleneck | Core locked at ~6 hi-fi screens + 2 static concept cards; Yiran preps everything possible outside Figma; cut order if needed: concept-card polish → onboarding second screen → screen polish; never drop testing |
| Scope creep: community/remote visit become interactive | Home teasers link to static cards only; any interactivity request → roadmap slide, not prototype |
| Usability participants drop out | Recruit 7, need 5; Week 3 recruitment gives 2-week buffer |
| Mid-pre date differs from placeholder | Deck content (research + lo-fi) is ready by Aug 2 regardless; only rehearsal shifts |
| Bilingual deliverable overhead | Work in CN for PwC decks, EN for portfolio docs; translate mid-pre canvases in Week 3 (task 3.2b), everything else once at Week 6 |
| 4 personas pull scope in 4 directions | Lock 1 primary + 1 secondary in Week 1 (task 1.2) before any wireframing; other 2 move to appendix/roadmap evidence |

## Portfolio note (Echo, individual)

After each week, spend 30 min updating `3_Case_Study_Skeleton.md` in EN. By Aug 30 the case study is ~90% written for free — Week 6.3 just compiles it.


> Note for Shenxuan - 1.5
> It's Shengxuan's quality-control review — she reads the 2 selected personas and their journey maps with her clinician's eye and flags anything medically wrong or implausible before those artifacts go into wireframes and the mid-pre deck. Concretely, she checks four things:
>
> **Clinical facts.** Is the disease course plausible? E.g., Xiao Li's bio says "bilateral acoustic neuromas found on contrast MRI → surgery plan sought → Beijing doctor advised watch-and-wait." Is that a realistic NF2 pathway? Are the drug references right (your empathy map mentions self-dosing brigatinib 90mg — is that the correct drug context for NF2, correct dosing logic)?
>
> **Care-journey realism.** Do the journey map steps match how Chinese hospitals actually work — referral flow, 挂号 process, what a 5-minute consult realistically allows, what documents a doctor would actually ask to see first (your Says quadrant: "latest MRI film and report first, then discharge report" — she confirms that's the real clinical priority order)?
> 
> **Terminology.** Correct CN/EN medical terms on anything that will appear in the deck or the prototype — wrong terminology in front of PwC judges or, later, real clinicians in usability tests undermines credibility instantly.
>
> **Feasibility flags for design.** Mark which "improvement opportunity" rows in the journey maps are clinically sound vs. risky — e.g., "compare to last scan" is fine as a record feature, but anything that reads as diagnostic advice (the "what this symptom can mean in NF2" guardrail idea) she should flag for careful framing, since that's a medical-liability boundary the prototype must respect.
>
> Output is lightweight: margin comments or a short issue list, not rewrites — you and Yiran apply the fixes. Roughly 2–3 hours. The reason it's Week 1 and only for the 2 selected personas: everything downstream (problem statement, screens, deck) inherits from these two artifacts, so errors caught here are cheap and errors caught at mid-pre are not.