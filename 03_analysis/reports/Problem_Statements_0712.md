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
陈慧兰 is a caregiver-mother managing her deaf teenager's NF2 history across a split household archive, who needs to retrieve and present the tumor progression in seconds, because retrieval today takes 4–5 minutes (unbounded when her husband is away) and an 8-minute consult cannot absorb a pile of paper.

**问题陈述 (CN):**
陈慧兰是一位照护者母亲，与丈夫分工管理失聪孩子的 NF2 病历（她跑医院，他管档案）。她需要在几秒内调出并呈现肿瘤变化的全过程，因为目前翻找对比需要 4–5 分钟（丈夫不在家时甚至无从查起），而 8 分钟的门诊根本无法消化一整袋纸质资料。

**Hypothesis (EN):** If 慧兰 can capture records camera-first and generate a one-page summary where every number links to its source document, then she can answer "how did the tumor change?" in seconds — independent of who holds the household archive.

**假设陈述 (CN):** 如果慧兰能用手机相机直接采集病历，并一键生成"每个数字都可点回原始资料"的一页纸摘要，那么她就能在几秒内回答"肿瘤怎么变的"，不再依赖家庭档案由谁保管。

**Goal statement (EN):** MediPort's Timeline → Summary flow will let caregiver-proxies retrieve and present a verified disease progression in under one minute, which will affect NF2 households by removing dependence on any single person's memory or archive. Effectiveness measured by: retrieval time (baseline 4–5 min → target <1 min) and first-audit pass rate (summary numbers match source documents on the user's own verification — the trust gate from #12).

**目标陈述 (CN):** MediPort 的"时间线 → 摘要"流程将让照护者在一分钟内调出并呈现经核验的病程进展，使 NF2 家庭不再依赖任何单个成员的记忆或档案。衡量指标：调取耗时（基线 4–5 分钟 → 目标 <1 分钟）；首次核对通过率（摘要数字与原始资料一致——来自 12 号受访者的信任门槛）。

**Evidence:** #12, #14; survey caregiver rows. Confidence: medium (frozen — see caveat below).

---

## 2. 林悦 "The Self-Navigator" (deaf patient, PRIMARY)

**Problem statement (EN):**
林悦 is a recently-deafened young patient who owns her own cross-city care, who needs to answer a doctor's document requests instantly and independently, because she cannot hear the requests, speech-to-text lags and mis-transcribes, and routing through her parents costs her both accuracy and ownership of her own case.

**问题陈述 (CN):**
林悦是一位新近失聪的年轻患者，独自跨城市管理自己的病程。她需要即时、独立地回应医生"要哪份资料"的要求，因为她听不清医生的话，语音转文字延迟且有误差，而经由父母转述既损失准确性，也让她失去对自己病情的主导权。

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

Journey-map 慧兰's review-day and 林悦's new-hospital scenarios → How-Might-We questions from the two problem statements → Crazy 8s → user flow check against locked 5 screens → paper wireframes.
