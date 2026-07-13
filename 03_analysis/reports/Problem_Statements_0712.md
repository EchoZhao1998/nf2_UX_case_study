# MediPort Define Stage — Problem / Hypothesis / Goal Statements

*2026-07-12 · Built from `Personas_0710.md` + `Interview_Findings_Report_0710.md`. Bilingual per project rule.
📎 = teaching notes; strip from portfolio exports.*

---

## 📎 How these three statements relate

- **Problem statement** = the user's unmet need, feature-free, traceable to research. The contract between research and design.
- **Hypothesis statement** = your bet: *if* we solve it this way, *then* this changes. First appearance of a solution direction.
- **Goal statement** = the hypothesis made accountable: who is affected, and what metric proves it worked.

Rule: if a later screen decision can't be traced back to one of these, the decision is decoration.

---

## 1. 陈慧兰 "The Record Keeper" (caregiver-proxy, PRIMARY)

**Problem statement (EN):**
陈慧兰 is a caregiver managing a complex NF2 history across fragmented records from multiple hospitals and a shared household archive. She needs to reconstruct and communicate her child's disease progression within a few minutes, because specialist consultations are short, records are scattered across people and institutions, and critical information can easily be missed under time pressure.

**问题陈述 (CN):**
陈慧兰是一位照护者，需要在多个医院、家庭成员分散保管的病历之间重建并清晰讲述孩子的 NF2 病程。她需要在极短的门诊时间内快速组织并呈现关键病情，因为病历分散、信息难以串联，而有限的问诊时间很容易遗漏重要细节。

**Hypothesis (EN):** If 慧兰 can capture records camera-first and generate a one-page summary where every number links to its source document, then she can answer "how did the tumor change?" in seconds — independent of who holds the household archive.

**假设陈述 (CN):** 如果慧兰能用手机相机直接采集病历，并一键生成"每个数字都可点回原始资料"的一页纸摘要，那么她就能在几秒内回答"肿瘤怎么变的"，不再依赖家庭档案由谁保管。

**Goal statement (EN):** MediPort's Timeline → Summary flow will let caregiver-proxies retrieve and present a verified disease progression in under one minute, which will affect NF2 households by removing dependence on any single person's memory or archive. Effectiveness measured by: retrieval time (baseline 4–5 min → target <1 min) and first-audit pass rate (summary numbers match source documents on the user's own verification — the trust gate from #12).

**目标陈述 (CN):** MediPort 的"时间线 → 摘要"流程将让照护者在一分钟内调出并呈现经核验的病程进展，使 NF2 家庭不再依赖任何单个成员的记忆或档案。衡量指标：调取耗时（基线 4–5 分钟 → 目标 <1 分钟）；首次核对通过率（摘要数字与原始资料一致——来自 12 号受访者的信任门槛）。

**Evidence:** #12, #14; survey caregiver rows. Confidence: medium (frozen — see caveat below).

---

## 2. 林悦 "The Self-Navigator" (deaf patient, PRIMARY)

**Problem statement (EN):**
林悦 is a recently deafened young adult managing her own long-term NF2 care across different hospitals. She needs to communicate her medical history and respond confidently during specialist consultations without relying on hearing or family members, because communication barriers, fragmented records, and severe time constraints reduce both the efficiency of consultations and her sense of ownership over her own healthcare.

**问题陈述 (CN):**
林悦是一位新近失聪、独立管理自己 NF2 病程的年轻患者。她希望在不依赖听力或家人转述的情况下，与医生高效沟通自己的病史并回应诊疗需求，因为沟通障碍、分散的病历以及有限的门诊时间共同削弱了问诊效率，也削弱了她对自身医疗决策的主导权。
  s
**Hypothesis (EN):** If the record itself can answer the doctor — timeline on screen, every claim tappable to its source film — then consult communication no longer depends on hearing or on a relay person.

**假设陈述 (CN):** 如果病历本身能"回答"医生——时间线直接展示在屏幕上，每条结论都可点开对应原始胶片——那么医患沟通将不再依赖听力，也不再依赖转述人。

**Goal statement (EN):** MediPort will let deaf patients respond to doctors' requests by tapping instead of hearing, which will affect patients with sensory barriers by restoring direct doctor↔patient communication. Effectiveness measured by: consult tasks completed without third-party relay, and zero date/sequence errors in generated summaries (林悦's stated kill-switch: one trend-reversing error = permanent abandonment).

**目标陈述 (CN):** MediPort 将让失聪患者用"点按"代替"听"来回应医生，恢复医患之间的直接沟通。衡量指标：无需第三方转述即可完成的门诊任务数；生成摘要中日期/顺序错误为零（林悦明确的"弃用红线"：一次颠倒趋势的错误 = 永久弃用）。

**Evidence:** #20 (single-source). Confidence: medium-low (frozen — see caveat below).

---

## 3. 老周 — no problem statement (deliberate)

📎 Anti-personas don't get problem statements; they generate **constraints**. His three guardrails carry into Ideate as fixed rules: never market "AI summary" as the differentiator (commodity); defensibility = longitudinal structured data + provenance + consult accessibility; no forced newbie onboarding for veterans.

---

## Tension log (do not resolve silently)

1. **林悦's consult mode points beyond the locked 5-screen scope.** The locked flow (Timeline → Summary) serves her scenario partially — the summary can be *shown*, but "doctor's requests become taps on her screen" implies an interaction layer not yet designed. Recorded as tension, not scope change. Decide after 7/17 fork.
2. **Confidence caveats are now permanent.** Interviews #15 and #27 unreachable (invalid contact info, confirmed 2026-07-12). The personas' "update after #15/#27" clause is void; n=4 is final for this round. Compensation: (a) survey n=38 re-cut by role to test the proxy-distance axis quantitatively — still owed; (b) usability studies re-test 林悦's consult scenario with real users at the prototype stage.

---

## Next in the process

Journey-map 慧兰's review-day and 林悦's consultation scenarios → Affinity themes → How-Might-We questions → Crazy 8s → concept selection → user flow validation against the locked 5 screens → paper wireframes.
