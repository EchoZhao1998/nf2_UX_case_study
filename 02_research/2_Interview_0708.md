# Echo's UX-lens version — appended 2026-07-08


**Different goal:** Xuan's version collects a medical history; a UX interview collects a persona — goals, frustrations, daily behaviors, context. Test for every question: **can the answer fill a cell in the persona template?**

**Time budget:** Text-based interviews are slow; 30 min ≈ 10–12 questions. Cutting is mandatory.

## Verdict on Xuan's questions

| Xuan's Q | Verdict | Why |
|---|---|---|
| Opening + Q1 | ✅ Keep | Good opening: format, privacy, right to pause. Q1 anchors the timeline. |
| Q2 | 🔄 Rewrite | "How severe" is clinical; UX asks "how does it change the way you use your phone / read documents." |
| Q3–Q5 (Hospital/tests/treatment + efficacy) | ❌ Cut | Pure chart-taking: longest, lowest persona value, and "treatment efficacy" crosses the clinical-research line. One sentence on cross-hospital experience (folded into Q1) suffices. |
| Q6–Q8 (Last visit) | ✅ Keep, merge to 2 | The most valuable behavioral reconstruction. But Q7(a) leads the witness — make it open-ended. |
| Q9–Q11 (Photos/loss/review) | ✅ Keep 9+11, fold 10 in | Q9 is the real competitor probe (camera roll = current solution). Q11's live retrieval test is brilliant — it exposes retrieval cost in real time. |
| Q12–Q16 (Symptom events) | ✅ Keep, merge 14+15 | Good critical-incident method. |
| Q17–Q19 (Literature) | 🔄 Rewrite | Right target, wrong order: ask the *last actual instance* first (Q19's recall test is the filter), attitudes after. |
| Q20–Q21 (5-minute scenario) | ✅ Keep | Best question in the guide. Directly tests the Doctor-Ready Summary value hypothesis. |
| Q22 (AI trust) | 🔄 Rewrite | "Would you trust AI" is hypothetical opinion — unreliable. Replace with a concrete scenario + red-line question. |

## Proposed guide (10–12 questions, ~30 min via text)

**Opening** — Reuse Xuan's opening, add: "There are no right answers — we want your real daily experience."

### A. Life context (persona skeleton)

**A1.** When were you (was the patient) diagnosed? Where do you go for follow-ups now? Have you changed hospitals — and what prompted the change?
→ Fills: background + cross-hospital journey

**A2.** Walk me through the three things you use your phone for most on an ordinary day. Where does your (hearing / vision / tremor / vertigo) get in the way the most?
→ Fills: tech context + accessibility needs, behaviorally not clinically

**A3.** (Caregiver variant) Who in the family manages the records and follow-ups? How much does the patient participate?
→ Fills: proxy dynamics

### B. Record behavior (Xuan's best, tightened)

**B1.** When was your last hospital visit — a familiar doctor or a new one? Tell me the whole story: how you prepared your materials, and what happened in the consult.
(Open-ended merge of Q6+Q7)

**B2.** Have you tried photographing records into your phone? What was it like showing your camera roll to a doctor?
(= Q9, the incumbent-solution probe)

**B3.** If I asked you right now for how each tumor has changed in size over the years, how would you find that answer — and how long would it take?
(= Q11, live retrieval test)

### C. The last new-symptom episode (Critical incident)

**C1.** When did a new or worsening symptom last appear? In the first hour after noticing it, what did you do?

**C2.** Over those days, what question were you trying to answer? Where did the information that calmed you (or scared you more) finally come from?
→ Tests the urgent-reassurance vs. long-term-understanding hypothesis

### D. Information & trust

**D1.** When did you last actually read NF2 research or treatment news? What did it say? What did you do after reading it?
(Recall filter first — if they can't recall, library demand is imagined)

**D2.** (Only if D1 yields a real instance) What was hard to understand? Which part did you most wish someone would interpret — indications, side effects, trial eligibility?

### E. The 5-minute scenario (Xuan's original, kept whole)

**E1.** Imagine a 5-minute slot with an NF2 expert at a clinic tomorrow. How would you prepare? What would you show first — and in what form?

**E2.** If a tool auto-organized your records into a one-page summary for doctors, what would you most worry it gets wrong? Which single mistake would make you never use it again?
(Replaces "would you trust AI" — concrete, designable, exposes red lines)

**Close** — "Is there anything I didn't ask that we should know?" + thanks + heads-up that we may return at prototype stage.

## Per-interviewee emphasis

- **#15** (Patient, 10+ years, paper, HMB): Full section B; A2 focuses on motor+balance vs. phone use.
- **#14** (Caregiver, 56+, memory-only, HVMB): B3 is the key test; A2 probes large-type/contrast needs; keep messages short.
- **#12** (Parent reading literature): A3 + full section D — the best test of the library hypothesis.
- **#27** (Patient, chose clinic summary): Full section E; B1 digs into the short-consult pain.

The cut questions aren't worthless — if Xuan's PhD needs the Q3–Q5 clinical detail, run it as a separate, explicitly-labeled clinical conversation, not inside the same 30-minute UX slot.