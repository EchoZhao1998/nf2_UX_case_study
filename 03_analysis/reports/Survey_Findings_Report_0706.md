# MediPort Survey Findings — NF2 Patient & Caregiver Study

**Author:** Echo Zhao · **Date:** 2026-07-06 · **Status:** internal working report (pre-interview)
**Data:** n=38, collected 2026-06-29 → 07-05 via 泡泡家园 WeChat community (问卷星)
**Reproducibility:** every number below is computed in `../notebook/01_survey_analysis.ipynb`; charts in `../figures/`; machine-readable summary in `survey_summary.csv`. This report interprets; the notebook proves.

---

## TL;DR

Thirty-eight NF2 patients and caregivers — from a disease community of roughly 1 in 33,000 — described how they manage a lifetime of medical records. Not one uses a structured digital tool. Two-thirds carry paper; the rest rely on memory. 71% report communication breakdowns when facing a new doctor, driven mainly by scattered records and short consults. And the most-requested feature (a plain-language research library, 50%) is one that only 8% actually behave as if they need — while the highest-stakes moment, handing a new doctor years of history in minutes, goes almost unsupported. The design target this points to: a patient-owned disease timeline with a doctor-ready one-page summary.

---

## 1. Background & method

NF2 requires lifelong, multidisciplinary monitoring, and China has no NF2 specialist centers, so patients move between hospitals and departments carrying their own history. The survey tests whether the record-fragmentation and communication problems known from lived experience generalize across the community, and which product responses patients actually prioritize.

The instrument was a bilingual 11-question survey (design rationale in `../../02_research/2_Survey_0627_PUBLISH.md`): 4 profile questions, 1 multi-select accessibility screen, 4 behavior/pain-point questions, 1 forced-choice feature prioritization (max 2 of 4), and an optional interview-recruitment field. Distribution was through the largest Chinese NF2 patient WeChat community. All percentages below are shares of n=38 unless noted; Q10 percentages are shares of the 30 respondents who answered it.

## 2. Who answered

![Demographics](../figures/fig1_demographics.png)

The sample splits almost evenly between patients (47.4%) and family caregivers (52.6%) — answers therefore mix first-person and proxy perspectives, which matters when reading the accessibility data. Respondents are overwhelmingly in mainland China (97.4%). Age skews young-to-middle: 28.9% under 18 (largely caregiver-reported children), 21.1% aged 18–25, 23.7% aged 26–35.

This is an experienced population, not newly diagnosed: 89.5% are three or more years past diagnosis, and 60.5% are five or more years past. Whatever coping systems they report are mature habits, not transition-period improvisation — which makes the absence of digital tooling (below) more telling, not less.

## 3. Finding 1 — The record-keeping vacuum

**Not one of 38 respondents uses a structured digital tool** — no health app, no hospital platform — for a disease whose management is defined by longitudinal data (tumor sizes in millimeters, serial MRIs, surgical history). 65.8% rely on paper records and imaging films; the remaining 34.2% keep no system at all, relying on memory or on each doctor to reconstruct context.

The market read: this is not a crowded space with entrenched competitors. The existing tools have zero adoption in this community, which means either they are unknown, or — more likely, given the pain reported next — they don't fit how cross-hospital rare-disease care actually works in China.

## 4. Finding 2 — The consultation bottleneck

![Behavior & pain points](../figures/fig3_behavior_painpoints.png)

71.1% report communication barriers when consulting a new doctor or seeking cross-hospital/cross-border opinions. The causes are informational, not medical: 36.8% say their history is too scattered to present core progression in a short consult, and another 28.9% blame consults that are too short (under 10 minutes) for a doctor to absorb years of material. Only 5.3% point to sequencing/causality confusion, and 28.9% report no barrier.

Community channels don't fill the gap: the top limitations of patient WeChat groups are unverified or conflicting medical advice (34.2%) and information that flows too fast to search or archive (31.6%), with anxiety overload (23.7%) and privacy concerns (10.5%) behind them.

## 5. Finding 3 — The accessibility profile is the requirements list

![Accessibility barriers](../figures/fig2_accessibility_barriers.png)

86.8% of respondents live with at least one impairment that affects device use: hearing loss 76.3%, motor difficulty (weakness, tremor) 39.5%, balance/vestibular issues 39.5%, vision impairment 28.9%. For this population, accessibility is not a compliance checklist appended to the design — it *is* the design constraint set: visual-by-default information, large touch targets, high contrast, no motion-heavy interactions.

## 6. Finding 4 — Stated preference vs. revealed behavior

![Feature priority](../figures/fig4_feature_priority.png)

Asked to pick their top-2 features from four candidates, respondents chose: plain-language research library 50.0%, disease timeline 46.7%, AI report parsing 43.3%, doctor-ready summary 23.3%.

Read alone, that ranking says "build the research library." But Q7 — what people *actually do* when a new symptom appears — contradicts it: only 7.9% consult medical literature, and only 7.9% review their own past MRI reports. The most common real behaviors are asking the patient group (23.7%), contacting their doctor (23.7%), and watchful waiting (21.1%).

The working interpretation (to be tested directly in interviews): the research library's popularity reflects a *collect-it-might-need-it* instinct — people say yes to content they rarely act on — while forced-choice ranking structurally punishes "painkiller" features used rarely but at high stakes. Nobody expects to tap "generate summary" often, so it scores 23.3%; but the moment it serves — 71% of this sample's worst reported pain — is the one the data says is unserved. Frequency of imagined use is not value.

## 7. Design implications

The evidence converges on one flow: a patient-owned **disease timeline** (organizing the scattered record, the #1 pain) whose payoff action is a **doctor-ready one-page summary** (attacking the 10-minute-consult bottleneck), built visual-first for a population where 76% have hearing loss. The research library and AI parsing remain roadmap candidates, pending the interview test of the stated-vs-revealed hypothesis. This matches the locked scope in `../../01_planning/3_Case_Study_Skeleton.md`.

## 8. Limitations

Sample size (n=38) supports directional conclusions only; no significance testing is appropriate or attempted. Recruitment through one WeChat community underrepresents patients outside community networks — plausibly the most isolated ones. Roughly half of responses are caregiver proxies, which may distort self-reported accessibility needs in either direction. Q10's forced top-2 format measures salience, not value, which is exactly why Section 6 cross-reads it against behavior. Eight respondents skipped Q10 entirely.

## 9. Next steps

Five to eight in-depth interviews recruited from the 30 volunteers (79% of the sample left contact details — itself a signal of community trust and unmet need). Core probe: past *actual* behavior with translated research content, to confirm or kill the collect-it-might-need-it hypothesis before it silently shapes the product. Findings feed the persona, journey map, and design phase per `../../01_planning/1_Research_&_Execution_Plan.md`.
