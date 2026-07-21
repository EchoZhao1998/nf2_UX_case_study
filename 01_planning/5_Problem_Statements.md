# 5 · Problem Statements → Hypotheses → Value Propositions (Define, Week 1)

**Status: DRAFT — nothing ratified yet.** (Board thumbs-ups = encouragement, not votes.) Echo + Shengxuan: work through Steps 1–3 in FigJam when free; mark ✅ next to what you ratify, ✍️ next to what you rewrite. Each statement is one sticky — copy-paste directly.

**Sources:** `04_design/PHV+HMW/POV.png` (0719 workshop, all three members) + reusable bets from `03_analysis/reports/Problem_Statements_0712.md` (old personas 陈慧兰/林悦 — the *mechanisms* survive, the anchors are re-pointed at Xiao Li per kickoff decision).

---

## Step 0 · Clusters — synthesis of the board (~25 POVs → 6 needs)

*Clustering problems, not solutions. Divergence happens again in Step 2 and at HMW/Crazy 8s (task 2.1). No POV is deleted — outliers land in the backlog at the bottom.*

| # | Underlying need | POVs feeding it | Lands in |
|---|---|---|---|
| A | **The 5-minute consult can't hold years of history** — compression, omission, decision pressure | Echo: 3-province newly-diagnosed; Echo: Lao Zhou decade-compression; SX: no one to help sort materials pre-visit; Yiran: Mother Chan follow-up | Core: Generate Summary + Summary view |
| B | **Records are fragile, scattered — and unrecoverable once lost** — decaying films, blurred phone photos, piles dropped by tremoring hands, disaster loss, "family reset" | Echo: Chan Mom 10-yr films; SX: tremors + papery materials; SX: emergency statement file for school; SX: flood-ruined paper records → re-copying from HSPs across provinces *(added 7/21)*; Yiran: Old Zhou reliable storage | Core: Upload + notebook Home + timeline |
| C | **Consult communication doesn't survive hearing loss** — masks, noise, no relay person wanted | Echo: masked-consult (design constraint: text-first); 0712 legacy bet "the record answers the doctor" | Core: Summary view *as the communication artifact*; also remote-visit card |
| D | **Trustworthy, readable knowledge at vulnerable moments** — info is either too technical or too frightening | Echo: anxious-patient; SX: systematic recognition frame; SX: simplified research literature; SX: general-AI opinions ⚠️ | Mostly roadmap; ⚠️ liability lines below |
| E | **Isolation** — sign language, ex-serviceman's contacts overwhelmed, "feel not alone" | Echo: sign-language POV; SX: comrades cut-off; SX: same-symptom cases | Concept card: Community |
| F | **Care without professional guidance nearby** — hospital-level home care, drug-trial eligibility, low-tech + low-NF2-awareness hospitals | Echo: Wong Pa ×2; SX: brigatinib dosing ⚠️; SX: nearby-hospital finder; Yiran: Father Wang minimalist UI | Concept card: Remote visit + design constraint (radical simplicity) |

---

## Step 1 · Proposed problem statements (ratify 1 primary + 2 secondary — task 1.2)

### P1 — Xiao Li (PRIMARY) · merges clusters A + C

**EN:** Xiao Li is a newly-diagnosed NF2 patient with progressive hearing loss who has sought care across three provinces. She needs to convey her multi-year, multi-hospital history and respond to her doctor within a five-minute consult — without relying on hearing — because the masked, noisy clinic removes her one remaining communication channel exactly when each consult drives a major decision (surgery, watch-and-wait, or another hospital a thousand kilometres away).

**CN:** 小李是一位新确诊、听力持续下降的 NF2 患者，曾辗转三个省份求医。她需要在五分钟的门诊内、在不依赖听力的情况下，讲清跨年份跨医院的病史并回应医生——因为口罩和嘈杂的诊室恰好在每次门诊都关乎重大决策（手术、观察、还是奔赴千里外的另一家医院）的时刻，切断了她仅剩的沟通通道。

### S1 — Mother Chan (SECONDARY) · cluster B

**EN:** Mother Chan is the record keeper for her deaf teenage daughter's ten years of films and reports from multiple hospitals. She needs every record instantly findable, comparable with the last one, and safe from decay, because films blur, phone storage runs out, and one lost photo means the whole family "resets" — and because an emergency at school would demand a certified diagnosis summary faster than any parent can arrive.

**CN:** 陈妈妈为失聪的女儿保管着十年间多家医院的胶片与报告。她需要每份记录都能即刻找到、能与上一次对比、且不会随时间损毁——因为胶片会模糊、手机存储会满，一张丢失的照片就意味着全家"归零"；而学校里一次突发状况，需要的诊断证明比任何一位家长赶到的速度都要快。

### S2 — Father Wang (SECONDARY) · cluster F

**EN:** Father Wang is a 56-year-old low-tech caregiver delivering hospital-level care to his bedridden, deaf-blind son. He needs to carry out complex medical tasks — and decisions like drug-trial eligibility — correctly and confidently, because no professional guidance exists nearby, online criteria are unreadable to him, and today his answers come from other patients instead of clinicians.

**CN:** 王爸爸是一位 56 岁、不熟悉数码产品的照护者，为卧床、又聋又盲的儿子承担着医院级别的护理。他需要正确而有把握地完成复杂的医疗操作、做出如药物试验资格这样的判断——因为身边没有专业指导，网上的标准他读不懂，如今的答案只能来自病友而非医生。

📎 *S2's main job in the 6-screen prototype is as a **constraint** (radical simplicity, accessibility profile at onboarding) + the remote-visit concept card — not new screens.*

📎 *Routing decision (7/21): SX's ex-serviceman/comrades POV is **not merged into S2** — different underlying need (identity loss & isolation, cluster E), and one statement = one need. It routes to: (a) the **Community concept card** as its strongest evidence — #14's social world was replaced by the disease, and his stated group pain is "info flows too fast, chaotic, hard to search," so the card's framing is restoring connection, not another group feed; (b) **Father Wang's persona bio** — ex-serviceman background + sacrifice texture (transcript #14: deleted comrade groups but keeps every patient/doctor contact; three Spring Festivals in hospital; "until we no longer can"). Note: "reluctantly & regretfully" is interpretation, not #14's words — keep observation/interpretation separated in the case study.*

---

## Step 2 · Hypothesis options — DIVERGE here, then pick 1–2 per problem

*Deliberately competing bets per problem. In FigJam: dot-vote, or write H1d/H2d/… if these spark better ones. Format: If [mechanism], then [outcome].*

### For P1 (Xiao Li — the consult)

- **H1a · Provenance summary.** If a one-page summary is auto-generated from her uploaded records, with every number tappable back to its source film, then she can present years of history in seconds and the doctor trusts it enough to act on. *(0712 legacy bet, re-anchored — strongest fit to locked scope)*
  如果摘要由她上传的记录自动生成、每个数字都可点回原始胶片，那么她能在几秒内呈现多年病史，医生也足够信任并据此决策。
- **H1b · The record answers the doctor.** If the doctor's questions can be answered by tapping the on-screen timeline instead of hearing and speaking, then consult communication no longer depends on her lost channel. *(bolder; partially beyond 6 screens — the Summary view must be designed as a shown artifact for this to survive)*
  如果医生的提问可以通过点按屏幕上的时间线来回答，那么医患沟通不再依赖她失去的听觉通道。
- **H1c · Pre-visit delta.** If she can prepare a "what changed since last visit" one-pager before entering the room, then the five minutes start at the decision instead of the recap.
  如果她能在进诊室前生成"距上次就诊的变化"一页纸，那么五分钟就能从决策开始，而不是从复述开始。

### For S1 (Mother Chan — the archive)

- **H2a · Camera-first capture.** If capturing a record is as fast as taking a photo — auto-enhanced, auto-dated, backed up — then ten years of films stop decaying in a phone gallery and nothing forces a family "reset".
  如果采集病历像拍照一样快——自动增强、自动标注日期、云端备份——那么十年的胶片不再在相册里慢慢损毁，家庭也不会被迫"归零"。
  *(Strengthened by SX's 7/21 flood POV: paper as the only copy fails catastrophically, and reconstruction means trips to several hospitals across provinces — the "backed up" clause is the differentiator, not a nice-to-have.)*
- **H2b · Auto-compare.** If each new MRI is automatically placed beside the last one on the timeline, then "how did it change?" takes one glance instead of an evening of searching.
  如果每次新的 MRI 自动与上一次并列呈现在时间线上，那么"变化如何"只需一眼，而不是一晚上的翻找。
- **H2c · Emergency card.** If a certified diagnosis + key-facts card is shareable in one tap, then school or ER staff can act before any parent arrives. *(also serves SX's school-emergency POV)*
  如果一张经认证的诊断与关键信息卡可以一键分享，那么学校或急诊人员能在家长赶到之前采取行动。

### For S2 (Father Wang — confidence without guidance)

- **H3a · Accessibility-profile onboarding.** If onboarding captures ability + confidence level and the UI radically simplifies in response, then a 56-year-old low-tech caregiver completes core tasks without help. *(this is the locked onboarding screen's reason to exist)*
  如果引导流程采集能力与信心水平、界面据此极度简化，那么低数码能力的照护者无需他人帮助也能完成核心操作。
- **H3b · Plain-language eligibility.** If trial criteria are translated into plain-language checklists against his son's own records, then he can judge "is the journey worth it" before committing. *(roadmap — needs Shengxuan's liability check)*
  如果试验入组标准被翻译成对照儿子病历的白话核对清单，那么他能在出发前判断"这一趟值不值"。
- **H3c · Remote visit.** If a text-first remote consult can reach an NF2-literate clinician, then distance and local hospitals' unfamiliarity stop deciding his son's care. *(concept card, exactly as scoped)*
  如果文字优先的远程问诊能连接到了解 NF2 的医生，那么距离和当地医院的陌生不再决定儿子的治疗。

---

## Step 3 · Value propositions (draft after hypotheses are picked)

**Product VP (draft):** MediPort turns a scattered, decaying pile of films and reports into a living record that can *speak for the patient* — organised in minutes, summarised in one page, trusted because every claim links to its source.
**产品价值主张（草案）：** MediPort 把散落、易损的胶片与报告变成一份"能替患者说话"的活病历——几分钟归档，一页纸摘要，每条结论都可溯源，因此可被信任。

- **For Xiao Li:** own your consult — your record answers, even when your ears can't. 让病历替你回答，即使耳朵不能。
- **For Mother Chan:** ten years, one glance, never lost again. 十年病程，一眼可见，永不丢失。
- **For Father Wang:** confidence without a hospital nearby. 身边没有医院，也能安心照护。

---

## Opportunity backlog (nothing deleted — routed)

| Idea (source) | Destination |
|---|---|
| Sign-language learning from deaf community (Echo) | Community concept card |
| Same-symptom peer cases / "not alone" (SX) | Community concept card |
| Comrades-vs-patient-groups contact overload (SX) | Community card note / roadmap |
| Nearby NF2-capable hospital finder for frequent movers (SX) | Roadmap |
| Simplified NF2 research literature (SX) | Roadmap（研究前沿, per proposal 预期成果 #4） |
| Systematic disease-recognition frame (SX) | Roadmap / onboarding education framing |
| Audio assistant to analyze results for blurred-vision users (SX) | Roadmap + accessibility principle (multimodal output) |
| Drug-trial eligibility plain-language checklists (Echo/SX) | Roadmap, ⚠️ liability check first |

## ⚠️ Medical-liability red lines (Shengxuan to confirm in task 1.5)

1. **Brigatinib dosing guidance** — the product must never suggest increase/keep/decrease. Reframe as: *record the current regimen + prompt "bring this question to your clinician" (fits Summary view)*.
2. **General-AI medical opinions replacing visits** — anti-goal. MediPort prepares for consults; it does not substitute them.
3. **"What does this symptom mean"** — record-and-bring framing only, never interpretation. (Handover constraint #6.)

---

## POV log — post-workshop additions

- **2026-07-21, Shengxuan (→ cluster B):** "Chan Mom is a mother of an NF2 patient who needs to commit a lot of spare time to copy history records from several HSPs across provinces, because their house suffered from flood and those old papery records were just ruined."

---

*Next after ratification: fill the PHV canvas from the picked statements → goal statement (task 1.4) → HMW ×5 + Crazy 8s (task 2.1, full divergence).*
