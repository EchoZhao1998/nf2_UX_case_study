# MediPort Personas — v1 (with working notes)

*2026-07-10 · Built from 4 interviews + n=38 survey. EN draft; CN version follows the bilingual rule.
Teaching notes are marked 📎 — delete them from any portfolio-facing export.*

---

## 📎 How to think about personas (read once, then build)

**What a persona is:** a composite archetype that compresses your research into a person the team can argue with. Its job is to settle design debates with evidence — "would 老陈 understand this screen?" beats "I think users would…". It is a *decision tool*, not a deliverable decoration.

**What it is not:** an average (averages produce users who don't exist), a demographic sheet (age/city rarely change design decisions), or fiction (every field must trace to observed data — if you can't cite a quote or datapoint for a field, leave it empty rather than invent).

**The craft rules I'm applying here, and why:**
1. **Segment on behavior, not demographics.** Our data says the axis that changes design decisions is *proxy distance* — who manages the history, the patient or a proxy (Findings §1). Age fell out of the analysis as mostly irrelevant; it stays only as context.
2. **Few personas, sharply different.** 2 primaries + 1 anti-persona. More than 3 and teams stop using them. Each must fail differently on the same screen.
3. **Every persona gets a scenario,** because personas only produce design decisions when walked through a task ("prepare for tomorrow's consult").
4. **Anti-personas are load-bearing.** Documenting who you are *not* building for prevents scope creep and answers reviewers who ask "why wouldn't they just use ChatGPT?"
5. **Quota check:** interviews are n=4, so every persona below is a *provisional* composite. Mark confidence. Update after interviews #15/#27.
6. **PII rule:** composites strip real hospitals/doctors into generic ones. Never let a persona be re-identifiable — this cohort is small and knows each other.

**Template (reusable):** Name/role/quote → Context → Accessibility profile → Goals (ranked) → Key behaviors (observed, cited) → Pain points (ranked) → Trust model & red lines → Tech profile → Scenario → What she/he needs from MediPort → Evidence base + confidence.

---

## Persona 1 — 陈慧兰 "The Record Keeper" (PRIMARY)

> "In the consult I still hand over paper. The photos are all there, somewhere — that's the problem."

**Role:** Mother (48) of a teenage NF2 patient; co-manages care with her husband — she runs hospital days, he keeps the archive. Composite of interviewees #12 + #14 + caregiver-side survey rows.

**Context:** 3+ years post-diagnosis. Semi-annual MRI reviews at one anchor hospital, plus second-opinion trips (2–3 hospitals so far), each requiring the *entire* paper archive to be carried and re-explained from zero. Active in patient WeChat groups daily; they are her early-warning system and her anxiety source at once.

**Accessibility profile:** Child is deaf → in consults, she is the interpreter as well as the historian. Her own tech comfort is mid-low: WeChat fluent, phone camera yes, "computer things" no (#14: "some of this computer work I can't do").

**Goals (ranked):** 1. Never miss a change in the tumors. 2. Make a 8-minute consult count — doctor sees the *progression*, not a pile. 3. Catch treatment/trial news early. 4. Reduce dependence on any one family member's memory.

**Key behaviors (observed):** Photographs records but reverts to paper in consults — album too scattered (#12, #20). Self-compares MRI reports and *skips the doctor* when unchanged (#12). Asks doctors to hand-annotate tumor sizes on reports (#14). Phone storage overflow silently deleted archived record photos (#14). Follows drug news closely and can recall specifics next day (#12, D1).

**Pain points (ranked):** 1. Retrieval: 4–5 min to answer "how did the tumor change?" — unbounded if her husband isn't home (split archive). 2. New-hospital visits reset everything to zero. 3. Films physically degrade; photos silently vanish. 4. Group information is fast, chaotic, unverifiable.

**Trust model & red lines:** Will adopt after *personally verifying* the first 1–2 outputs against source documents (#12). Red line: wrong numbers. Trust is lent, then earned, then habitual — design for the audit phase, don't skip it.

**Scenario:** July 11, review day. Night before, she opens MediPort: timeline already holds January's report. She taps "Generate summary," checks the two numbers she knows by heart against the linked source scans (provenance view), corrects nothing, saves the one-pager. In the consult she hands the doctor her phone — and answers the doctor's follow-up by tapping the source film, not by digging in a bag.

**Needs from MediPort:** guided low-friction capture (camera-first, WeChat-grade simplicity) · provenance links on every summary number · a summary the *doctor* can absorb in 60 seconds · household sharing (two-keeper problem).

**Evidence base:** #12 (strong), #14 (strong), survey caregiver rows. **Confidence: medium** — two interviews; re-cut survey by role to confirm.

---

## Persona 2 — 林悦 "The Self-Navigator" (PRIMARY)

> "I can describe my condition fine. What I can't do is hear which report the doctor is asking me for."

**Role:** Patient, 24, diagnosed 8 months ago, employed, lives away from family. Composite of interviewee #20 + young-patient survey rows.

**Context:** Post-diagnosis whirlwind: three top hospitals in three cities, surgery declined, now "observe and review" near wherever work takes her. Carries her whole history because no hospital holds it all. Reads everything; hope is drug-shaped (targeted therapy news).

**Accessibility profile:** Deafened recently; lip-reads on max-volume video calls; uses live speech-to-text in consults but it lags and mis-transcribes. The consult's *incoming* channel (doctor → her) is the broken one. Parents attend but can't relay medical detail accurately.

**Goals (ranked):** 1. Be taken seriously as the owner of her own case. 2. Answer any doctor's question in seconds, independently. 3. Understand treatment frontier in plain language. 4. Keep the disease from eating her career mobility.

**Key behaviors (observed):** Pre-sorts films by tumor type in the waiting room; builds annotated PPT/Word one-pagers for 5-minute expert slots (she has *hand-built MediPort's output* — strongest demand signal in the dataset). Asked an LLM (Doubao) about a new symptom within the first hour. Reads foreign literature via 公众号 and wants it "retold in plain language."

**Pain points (ranked):** 1. Can't hear doctors' document requests; relay via parents lossy; speech-to-text too slow. 2. Cross-hospital records fragmentation. 3. Medical literature obscurity. 4. Knows measurement noise across machines makes naive trends misleading — distrusts number-worship.

**Trust model & red lines:** Skeptical-but-willing early adopter ("this category is blank in the market — I'd try it"). Kill-switch: **a date/sequence error that reverses the trend and misleads a doctor = permanent abandonment.** Wants to know whether summaries quote or paraphrase. Trust "grows slowly, slowly."

**Scenario:** New city, new hospital, new doctor. The doctor asks — she doesn't catch it. Instead of the speech-to-text scramble, she turns her phone around: timeline on screen, summary one tap away, every claim tappable to its source film. The doctor's requests become *taps on her screen* instead of words she can't hear.

**Needs from MediPort:** consult mode where the record answers the doctor directly (visual, tappable — a communication prosthesis, not just storage) · trend views that show measurement context/uncertainty, never a naive line · verbatim/paraphrase toggle · plain-language digests (roadmap).

**Evidence base:** #20 (strong, single-source). **Confidence: medium-low** — one interview carries her; interviews #15/#27 must test her.

---

## Anti-persona — 老周 "The Veteran" (explicitly NOT designing for)

> "If I need a summary, I'll throw it at an AI myself. Your product is a shell on someone else's model."

**Role:** Patient, ~40, diagnosed 10+ years. Fully deaf; phone use unimpaired. Composite of interviewee #38.

**Why he doesn't need us:** His history lives in memory ("one second"). Emotionally post-anxiety; delays care deliberately and calmly. Brings only the latest film — the QR code carries the rest. Fluent LLM user. Writes his own 公众号; is an information *producer*, not consumer. Dismisses therapy news as scams for patients or investors.

**Why he matters anyway:** 1. He states our null hypothesis: cloud films + raw LLMs already serve the low-proxy-distance patient — our value must be argued *against* that baseline, not against paper. 2. His prediction (purpose-built medical AI replaces wrappers, as AI captions replaced 音书) is the strongest competitive risk on record — answer it in the case study. 3. His consult experience ("doctors are unwilling to communicate with me directly") still validates the accessibility gap — he solved records, not respect. If MediPort ever serves him, it will be through the consult-communication layer, not storage.

**Design guardrails he generates:** never market "AI summary" as the differentiator (commodity) · defensibility = longitudinal structured data + provenance + consult accessibility · don't force veterans through newbie onboarding.

**Evidence base:** #38 (strong, single-source). **Confidence as anti-persona: high** — rejection this articulate rarely reverses.

---

## 📎 Working notes for Echo

- **Where personas sit in the case study:** §3 research → **personas bridge** → §4 design decisions. Every later screen decision should cite a persona ("provenance links exist because 慧兰 audits and 林悦 has a kill-switch").
- **What would change these personas:** interview #15 (10+ yr paper-based patient) tests whether 老周 is representative or an outlier of the veteran segment; #27 (chose clinic summary) stress-tests 林悦's consult scenario. If #15 looks like 慧兰-as-patient, the proxy-distance axis weakens — be ready to say so.
- **Names/photos:** keep Chinese names (users are Chinese; English personas with Western names would be a portfolio tell of fabrication). No AI-generated face photos in the portfolio version — use illustrated avatars; state the composite/anonymization method in a caption. Reviewers respect shown method.
- **The one mistake to avoid now:** don't retrofit the personas to justify the already-locked flow. 林悦's needs point slightly *beyond* the locked scope (consult mode). Record the tension honestly; that's senior behavior.
