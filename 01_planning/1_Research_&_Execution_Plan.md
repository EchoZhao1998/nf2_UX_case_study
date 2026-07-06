# **📋 Research & Execution Plan**

*Original timeline: June 25 – August 1 (5 weeks). Realigned **2026-07-06**: survey phase finished early and over target (n=38 vs. planned 20–30); interviews have not started yet, so fieldwork extends one week. New end date: **August 8**.*

> **UX Phases:** Empathize (✅ + interviews) → Define → Ideate & prototype → Test
> **Base case:** solo build (Echo) with clinical review (Xuan). If the PwC team track is selected (result ~7/17), dates for Weeks 3–5 may shift to the program's 7/20–8/30 window — content stays the same, see `HANDOVER.md`.

---

### **Week 1: Secondary Research & Competitive Audit (June 26 – July 1) — ✅ DONE**

| **Step** | **Action Item** | **Status** |
| --- | --- | --- |
| **1.1** | Desk research: NF2 epidemiology + daily patient challenges. | ✅ |
| **1.2** | Competitive UX audit: PatientsLikeMe, MyChart. | ✅ |
| **1.3** | Draft interview guide (behavior-focused, 10 open questions). | ✅ see `02_research/Interview_Emotional_Probes.md` |
| **1.4** | Build screening survey (问卷星). | ✅ published 6/29 — `02_research/2_Survey_0627_PUBLISH.md` |

### **Survey (June 29 – July 5) — ✅ DONE, over target**

| **Step** | **Action Item** | **Status** |
| --- | --- | --- |
| **S.1** | Distribute via 泡泡家园 WeChat community. | ✅ final **n=38** (target was 20–30) |
| **S.2** | Analyze results. | ✅ 7/6 — full report: `03_analysis/notebook/01_survey_analysis.ipynb`; charts in `03_analysis/figures/`; headline numbers in `03_analysis/reports/survey_summary.csv` |
| **S.3** | Interview volunteer pool. | ✅ **30 respondents** left real contact info (Q11) |

---

### **Week 2 (revised): Interviews (July 6 – July 15)**

*Goal: qualitative depth. Recruit 5–8 from the 30 Q11 volunteers.*

| **Step** | **Action Item** | **Deliverable / What to Save** |
| --- | --- | --- |
| **2.1** | Send interview invitations to shortlisted volunteers (WeChat). | Outreach messages + response tracker. |
| **2.2** | Conduct **5–8 patient/caregiver interviews** (30 min, text/voice per participant's accessibility needs). | Bullet-point notes per participant (Database A). |
| **2.3** | **Core probe:** the Q7-vs-Q10 tension — ask about *actual past behavior* with translated research content (when did you last read it? what did you do with it?), not hypothetical preference. Tests the "collect it, might need it someday" hypothesis (`HANDOVER.md` Open #3). | Explicit evidence for/against the research-library demand. |
| **2.4** | (Stretch) 1–2 overseas patient interviews via NF2 Crew (Reddit/Facebook). | Notes in Database A. |

### **Week 3: Synthesis — Define (July 16 – July 22)**

| **Step** | **Action Item** | **Deliverable / What to Save** |
| --- | --- | --- |
| **3.1** | Affinity-map interview quotes by theme. | Database B (Insights). |
| **3.2** | 1 primary persona (goals, frustrations, accessibility profile from survey Q5: 76% hearing loss, plus vision/motor/balance shares). | Persona visual. |
| **3.3** | User journey map — one scenario (e.g., "the 2 days before a check-up"). | Emotional highs/lows timeline. |
| **3.4** | Refine North Star into an ultra-specific persona statement. | Update `3_Case_Study_Skeleton.md` §2. |

### **Week 4: Ideation & Wireframes (July 23 – July 29)**

| **Step** | **Action Item** | **Deliverable / What to Save** |
| --- | --- | --- |
| **4.1** | 5 "How Might We" statements from Database B. | HMW list. |
| **4.2** | Crazy Eights sketches. | Photos of sketches. |
| **4.3** | User flow for the hero path: Log Event → Timeline → Generate Summary. | Flowchart. |
| **4.4** | Low-fi wireframes for the **5 locked screens: Home · Log Event · Timeline · Generate Summary · Summary view**. AI ingestion stays roadmap-only (locked — see skeleton). | Figma exports → `04_design/`. |

### **Week 5: Validation & Portfolio Polish (July 30 – August 8)**

| **Step** | **Action Item** | **Deliverable / What to Save** |
| --- | --- | --- |
| **5.1** | Guerrilla usability test with 2–3 original interviewees ("point to where you'd log a headache"). | Feedback notes. |
| **5.2** | Iterate: 3–5 tweaks, saved as before/after. | Wireframes v2. |
| **5.3** | Write the case study into `3_Case_Study_Skeleton.md`'s structure. | Portfolio write-up (EN; CN version per bilingual-by-default rule). |
| **5.4** | Final polish: proofread, alt-text on all images, link Databases A–D. | Evaluator-ready page. |
