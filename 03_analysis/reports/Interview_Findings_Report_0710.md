# NF2 Interview Findings — Critical Analysis (Draft, EN)

*2026-07-10 · n=4 text interviews (WeChat, Chinese) · Source: `03_analysis/data/Interview_Transcripts_EN_0710.md`
Feeds case study §3 and persona work. Chinese version to follow per bilingual-by-default rule.*

## 0. Method & limits — read this before believing anything below

Four asynchronous text interviews: #12 (mother of child patient, 3–5 yrs), #20 (patient 18–25, <1 yr), #14 (father of deaf-blind patient, 10+ yrs), #38 (patient 36–45, 10+ yrs). All Mainland China, all recruited through the same WeChat/泡泡家园 ecosystem the survey used — so this sample over-represents *connected, group-active* families. The isolated NF2 patient who belongs to no group is invisible in this data. n=4 supports pattern-generation, not validation. Text interviewing also flattens affect: #38 reads as blunt partly because text strips tone. Treat every claim below as a hypothesis with named evidence, not a proven finding.

## 1. The core discovery: pain scales with *proxy distance*, not disease duration

The pre-interview assumption was that record chaos grows with history length. The B3 live-retrieval test broke that assumption:

| ID | Role | Tenure | Retrieval method | Time |
|----|------|--------|------------------|------|
| #38 | Patient | 10+ yrs | Memory | **1 second** |
| #20 | Patient | <1 yr | Recites by year/side | ~2 min |
| #12 | Caregiver | 3–5 yrs | Compare films/photos | 4–5 min |
| #14 | Caregiver | 10+ yrs | "Would have to dig out materials" | Unbounded |

Patients who live in their own bodies compress their history into memory. **Caregivers can't** — they manage someone else's body, often split across two people (#12: mother takes child to exams, father keeps the files — the record and the retrieval live in different heads). #14 is the extreme: deaf-blind son, palm-writing communication, records scattered, films physically degraded, phone storage overflow auto-deleting the photographed copies. The user isn't "the NF2 patient"; the highest-pain user is **the proxy who must externalize a history they didn't experience**.

Critical note: 2 caregivers vs 2 patients is the flimsiest possible base for this claim, and #38's "1 second" is self-report, never tested. But the survey's n=38 can be re-cut by role to check this — do that before the case study leans on it.

## 2. Doctor-Ready Summary: demand is real but narrower and more conditional than the locked flow assumes

- **#14 = the bullseye.** Travel is near-impossible (equipment, trach), doctors' time framed as "precious," self-described as rambling. A one-page summary on the phone directly removes his stated pain. Strongest validation in the data.
- **#12 = conditional yes.** Would use it, but verifies data manually the first few times. Trust is *earned through user-run verification*, not granted.
- **#20 = conditional yes with a named kill-switch.** Date/sequence errors that reverse the tumor trend → doctor misdiagnoses → permanent abandonment. He also asked the sharpest product question we didn't have an answer to: *does the summary quote records verbatim or paraphrase them?*
- **#38 = flat no.** "I'd throw it at an AI directly."

So the payoff-screen hypothesis survives, but with two design mandates the current 5-screen flow doesn't yet show: **(a) provenance** — every number in the summary must link back to its source document, because two of four users say they will personally audit it; **(b) verbatim-vs-paraphrase must be an explicit, visible choice**, because paraphrase is where both trust objections live. A summary without a "show me where this came from" affordance fails the stated trust model of half the sample.

## 3. The trend chart is the most endangered feature we have

The survey made AI报告解析 (auto mm-trend charts) look safe (40.9% in Q10). #20 — a *supporter* who picked it — then dismantled it unprompted in his closing answer: different hospitals and even different machines yield different tumor measurements; hearing tests are confounded by colds, sleep, stress; clinicians judge by brainstem compression and affected tissue, not millimeters; "medicine may call 2 cm a medium tumor, but doctors don't lean on hard standards."

A naive line chart drawn through cross-machine measurements is therefore not merely imprecise — it is **clinically misleading with confidence**, the exact error class (#2's kill-switch) that ends product trust permanently. If the timeline ships, it must carry measurement context (which machine/hospital, same-machine comparability flags, confound annotations) or visualize uncertainty rather than a clean line. This is the single most research-grade insight in the dataset and belongs in the case study even if — especially if — it complicates our own flagship feature. A junior portfolio hides this; a senior one leads with it.

## 4. The real competitors are not paper folders

The proposal implicitly frames the incumbent as paper chaos. The interviews name three stronger incumbents:

1. **Paper, chosen deliberately.** #12 and #20 both photographed records and *went back to paper* — the album is slower than the sorted bag. Paper is the reigning champion of the consult room, not the absence of a solution.
2. **云胶片 (cloud films).** #38: films upload to the cloud, "I just bring the QR code." Hospital infrastructure is already digitizing the heaviest artifact. A tool that re-solves film-carrying is late.
3. **General-purpose LLMs.** #20 asked Doubao about his symptom within the first hour. #38: "why wouldn't I just use the LLM directly?" and predicts purpose-built medical AI will crush a wrapper, citing 音书 being eaten by built-in AI captions.

#38's challenge deserves a straight answer in the case study rather than a dodge. The honest defensible core is not "AI summarization" (commodity) but: **structured longitudinal NF2 data with provenance + accessibility-first consult interaction** — things a chat window doesn't hold across years and a QR code doesn't organize. If we can't argue that convincingly, the pivot signal is real. Notably, his rejection is also self-consistent with him having the *least* pain (memory retrieval, stable, solo) — the anti-persona rejecting a product built for proxies is expected, not fatal. But "the skeptic doesn't need us" must not become an excuse to ignore the wrapper critique.

## 5. Consult communication may be a bigger accessibility gap than record storage

Unplanned convergence across all four: the consult-room *conversation* breaks before the records do.

- #20: can describe his condition fine; fails when the **doctor asks him for a document** — he can't hear the request; speech-to-text is laggy and error-prone; parents relay imperfectly.
- #38: family talks for him; doctors type on phones sometimes, but "**I feel doctors are unwilling to communicate with me directly**."
- #14: palm-writing as the only channel to the patient himself; the father is a permanent human API.
- #12: child patient — mother relays by default.

In all four, a hearing/able family member is drafted as interpreter, and the patient's direct line to their own doctor is severed. The Doctor-Ready Summary quietly helps (it pre-answers the questions the patient can't hear), but the case study should reframe it accordingly: **the summary is an accessibility device for the consult conversation, not just a time-saver.** This reframing is also where Echo's lived experience gives the analysis unfair depth — use it.

## 6. Safety-relevant behavior we cannot design around silently

- #12 treated a child's sudden hearing drop with **medications recommended by group members**, bought over the counter. Symptom self-resolved; medication credited emotionally ("at least someone has tried it — there's hope").
- #14 has run **off-label brigatinib 90 mg/day since ~2022, self-managed, with zero internal imaging follow-up** (shunt blocks MRI locally), dose-capped by fear rather than medical advice.
- #38's survey answer flagged the same upstream: group advice is "unverified or conflicting."

A "patient community" or "medication log" feature that ingests this uncritically would launder unverified group advice into official-looking UI. Any medication/timeline feature needs an explicit unverified-information boundary. This is also a strong, honest "what I deliberately left out and why" section for the case study — and for #14 specifically, the humane read is that trial access (his actual stated goal: "rather than wait, quickly rule out") is the legitimate product-shaped version of this need.

## 7. Research library: the survey's "squirrel hypothesis" partially falsified

The 7/2 survey read dismissed library demand as hoarding. The interviews complicate that: D1 recall-tests **passed** for 3 of 4 — #12 read targeted-therapy news *yesterday* and named the drug; #20 read a monograph chapter and acted on it (then broke down — the emotional cost of raw literature is itself a finding); #14 tracks trial recruitment and *enrolled twice*; #38 read a year ago and republished it on his own 公众号. This is not imagined demand; it is real consumption of **actionable treatment intelligence** — indications, side effects, trial eligibility — not browsing. #20 explicitly asked for automatic plain-language retelling of foreign literature.

The cut stays correct for scope reasons, but the *reason* recorded in Open #3 ("hoarding instinct, low real usage") no longer matches the evidence and should be amended: the demand is real but it is a different product (trial radar / plain-language treatment digests), and shipping it responsibly collides with §6. Keep it cut; fix the rationale; name it in the roadmap.

## 8. What changes tomorrow

1. Re-cut survey n=38 by role (patient vs caregiver) to test the proxy-distance claim of §1.
2. Add provenance + verbatim/paraphrase toggle to the Summary screen requirements before Figma work starts.
3. Draft the trend-chart uncertainty treatment (or downgrade the chart to same-source comparisons only).
4. Write the anti-#38 defensibility paragraph for the case study; if it doesn't convince us, escalate.
5. Amend HANDOVER Open #3 rationale per §7.
6. Personas: build from the proxy-distance axis, not demographics — see `Personas_0710.md`.

## Self-critique of this report

Four interviews cannot carry the weight of eight numbered sections; several claims (esp. §1, §5) are one-quote-per-cell patterns. The interviewer (Echo) is deaf and building the product — expect sympathetic-respondent bias everywhere except #38, which is precisely why #38 is the most valuable transcript in the set. No negative-case sampling (non-group members, non-Chinese, recently bereaved families) was possible. And the interviews were conducted days before a PwC selection decision (7/17) that changes what gets built — findings were written blind to that fork on purpose; check for motivated reasoning anyway.
