# 🎯 Problem Statements (Define stage) — v1, 2026-07-19

Format: *[persona] is a [type of user] who needs [type of user experience] because [stake/insight]*.
Rule enforced: **no solutions in problem statements** (see PHV template "Wrong Example").
Status: drafted by Echo + AI-refined; to be challenged and ratified at the Define workshop (Week 1).

## Primary — Xiao Li · communication under constraint (macro)

> Xiao Li is a newly diagnosed NF2 patient who has hospital-hopped across three provinces, and needs a new doctor to grasp her full history within a five-minute consult, because each consult is her one chance to get the advice that decides her next step — surgery, watch-and-wait, or another thousand-kilometre trip.

*Evidence: 65% referral communication difficulty (survey); 3-province journey (persona #20); consult-stage pain (journey map 1).*
*Maps to: Generate Summary + Summary view flow.*

## P1-micro — Xiao Li · the masked consult

> Xiao Li is an NF2 patient with progressive hearing loss who relies on lip-reading and captions, and needs to exchange information with a doctor wearing a mask in a noisy clinic, because the mask removes her one remaining channel for understanding speech — so at the exact moment the most important information of her life is being spoken, she cannot receive it.

*Evidence: "The hard part isn't describing my condition — it's that I can't hear what the doctor is asking me for" (empathy map, Says); 95% hearing loss (survey).*
*Maps to: accessibility principles across all screens; two-way communication support → roadmap. Caution: do not let this add a live-captioning flow to the prototype.*

## S1 — Mother Chan · records decay

> Mother Chan is the caregiver and record-keeper for her deaf teenage daughter, who needs ten years of films and reports from multiple hospitals to stay complete, legible, and instantly findable, because every new MRI only has meaning when compared against the last one — and every blurred film or lost photo forces the family to re-explain a decade of history from zero.

*Evidence: 63.64% paper records; "photographs records but reverts to paper — album too scattered"; "data loss is silent and physical" (synthesis note); 4–5 min retrieval, unbounded if husband away (persona #12).*
*Maps to: notebook Home (upload, organize) + timeline.*

## S2 — Xiao Li · information anxiety

> Xiao Li is a newly diagnosed patient just learning she must manage a lifelong condition, who needs to understand what a new symptom means for her through information she can both trust and actually read, because what she can access today is either too technical to understand (literature) or too frightening to trust (group-chat anecdotes) — and it reaches her at exactly her most vulnerable moments.

*Evidence: journey map "seek verification" stage = anxiety peak; "I wish it could just be retold in plain language"; groups are "early-warning system and anxiety source at once."*
*Maps to: plain-language guardrails in core flow; research-frontier feature → roadmap.*

## S3 — Father Wang · expertise out of reach

> Father Wang is a 56-year-old caregiver with low tech confidence, caring for his bedridden, deafblind son, who needs to get his son's complex condition understood by NF2-literate doctors without traveling, because the experts are a thousand kilometres away, local doctors don't understand NF2, and his own explanations are "long-winded and miss the points doctors need to hear."

*Evidence: persona #14; county hospitals don't understand NF2; travel with son nearly impossible.*
*Maps to: "share summary via WeChat" moment on Summary view (async > live); Remote-visit concept card. Design constraint harvested: radical UI simplicity for low-confidence 56+ users — applies to ALL screens.*

## S3b — Father Wang · trial eligibility (variant of S3)

> Father Wang is a 56-year-old low-tech caregiver, who needs to learn whether his son qualifies for a drug trial in another province before committing to the journey, because travel is nearly impossible for a bedridden patient — and eligibility hinges on medical details he cannot assemble or communicate on his own.

*Evidence: "signs up for clinical trials repeatedly, even after wasted week-long trips" (empathy map, Does).*
*Note: same underlying spine as S3 — a structured summary that travels without the patient. Consider merging with S3 at the workshop; keep the trial scenario as a storytelling variant.*

## S4 — Lao Zhou · the over-filtered history

> Lao Zhou is a ten-year NF2 veteran visiting a new hospital accompanied by his aged, low-tech, talkative parents, who needs the consult to surface what is clinically relevant from a decade of history — not just what he happens to remember or what his parents ramble into the conversation — because he compresses years into a few sentences from memory, and what he omits is not what a doctor would omit: a new doctor judges his case on details he stopped noticing years ago.

*Evidence: veteran flatline "the anxiety phase passed long ago" (empathy map, Feels); emotional tone tracks tenure not role (synthesis note); "keeps a suitcase of films and a cloud QR code" despite skepticism.*
*Maps to: timeline (system remembers what he no longer does) + summary fidelity. Design constraint harvested: **verifiability over intelligence** — source-linked, faithful-to-original framing, never "AI summary" language. Opposite failure mode to P1: Xiao Li transmits too much and scattered; Lao Zhou transmits too little, over-filtered.*
*Workshop note: likely merges with his trust angle ("one scrambled number would end it permanently") into a single Lao Zhou statement.*

## Context-only (no prototype answer — deck/roadmap evidence)

> Father Wang is a 56-year-old caregiver running hospital-grade care at home for his bedridden, deafblind son, who needs to carry out complex daily medical tasks — suction, oxygen, nebuliser, medication — correctly and confidently without professional backup, because errors can be life-threatening and giving up is not an option: "his mind is very clear and his will to survive is strong."

*Points toward home-care support — a different product. Use as one "depth of unmet need" slide; promise nothing.*

---

## Workshop checklist

- [ ] Ratify primary (P1) + confirm P1-micro as its in-consult companion
- [ ] Decide: merge S3b into S3?
- [ ] Confirm the Context-only statement stays out of scope
- [ ] Each ratified statement → hypothesis statement (if/then) next
- [ ] Harvest design constraints: text-first (P1-micro), radical simplicity (S3), verifiability over intelligence (S4)
- [ ] Decide: merge S4 with Lao Zhou trust angle into one statement?
