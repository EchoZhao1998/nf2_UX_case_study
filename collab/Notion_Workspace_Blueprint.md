# Notion Co-Work Space — Blueprint

*How to set up the shared Notion for the NF2 case study with Xuan. Built to mirror the locked scope and the 5-week plan. Set it up in the order at the bottom.*

---

## The one rule that prevents chaos: where each thing lives

Two surfaces, one boundary — never duplicate across it.

- **Canonical in the local folder → mirror a read-only copy into Notion:** your foundation/strategy docs (`0_Propasal`, `1_Research_&_Execution_Plan`, `2_Survey`, `3_Case_Study_Skeleton`, `HANDOVER`). You edit these locally; paste the finalized version into Notion as reference so Xuan can see context. Don't co-edit them in Notion.
- **Born in Notion (no local copy):** the collaborative, growing research data — participants, interview notes, insights, artifacts. These are relational and Xuan co-edits them, so Notion is their true home. Export to CSV at the end for your records.
- **Private, stays local, never shared:** your career/portfolio strategy, PhD/job notes, anything in the parent `Deaf_life_plan` tree. Keep the shared space scoped to *this project only*.

---

## Page tree

```
📁 NF2 Patient-Led Care — UX Case Study   (shared top page)
├── 🏠 Overview               ← north star, locked scope, status, links to all
├── 🤝 Working Agreement      ← roles, decision log, the Xuan boundary
├── 📋 Plan & Milestones      ← 5-week schedule as a task database
├── 🗂 Research
│   ├── 👥 Participants (DB)   ← people + consent (restricted)
│   ├── 🎙 Interview Notes (DB)
│   ├── 📊 Survey Responses    ← link/export from Wenjuanxing + Google Form
│   └── 💡 Insights (DB)       ← affinity mapping, relational to Participants
├── 🎯 Synthesis              ← persona, journey map, HMW, refined north star
├── 🎨 Design                 ← IA, user flow, Figma embed
├── ✅ Validation             ← usability test notes, iterations
└── 📝 Case Study Write-up    ← the skeleton sections, filled as you go
```

> **Story Log stays out of Notion.** Your Mxx milestone reflections are private thinking — keep them only in the local `Case_study_story_tracker.md`. Don't put them in the shared space.

## The three databases (the part that makes Notion worth it)

Use real Notion **databases**, not plain text — they're filterable, relational, and turn into your affinity board.

**👥 Participants** — one row per person.
Properties: Code (e.g. P01, never real names in the title) · Role (patient / caregiver) · Region · Diagnosis tenure · Accessibility profile (multi-select from survey Q5) · Consent ✅ · Contact *(restricted property — see Privacy)* · relation → Interview Notes.

**🎙 Interview Notes** — one row per session.
Properties: relation → Participant · Date · 3 most striking quotes (do this the same evening — see plan) · raw notes · relation → Insights.

**💡 Insights** — one row per insight/quote. *This is your affinity map.*
Properties: Quote / observation · Theme (select: "fear of MRI results", "forgot to ask doctor", etc.) · relation → Participant (source) · maps-to-feature · Strength. Use a **Board view grouped by Theme** = live affinity wall.

## Fixed vs flexible structure

Build the structure expecting it to evolve — your real problem statement will shift *after* the survey, and the databases should follow. Notion makes this safe: adding, renaming, or removing a property never destroys existing rows, so you lose nothing by starting lean.

- **Keep stable (the skeleton):** the three databases themselves and the **relations** between them (Participant ↔ Interview ↔ Insight). Relations are the one thing that's painful to rewire later, so get those right on day one and leave them alone.
- **Evolve freely (the details):** Select/multi-select options (Themes especially — you'll discover these *from* the data, don't pre-fill them), added properties, new views, filters. Expect Themes to grow throughout Week 3 synthesis.

Rule of thumb: lock the bones, flex the rest.

## Recommended views

- **Plan & Milestones:** Timeline view by week + Board by status (To do / Doing / Done), Owner = Echo or Xuan.
- **Insights:** Board grouped by Theme (affinity), plus a Table filtered to "maps-to-feature = Timeline" to feed design.
- **Participants:** Table filtered `Consent = ✅` for who you can quote.

## Working Agreement page (do this with Xuan, write it down)

- **Roles:** Echo owns the design/research instrument and final write-up. Xuan = clinical review + stakeholder voice, **not** co-owner of the survey. Her validated QoL study, if any, is separate.
- **Decision log:** copy the table from `HANDOVER.md` and keep adding rows — one source of decisions both of you can see.
- **Cadence:** how often you sync, who logs interviews, response-time expectations.
- **Shared exploratory questions:** Q4/Q8/Q9 are tagged for her — labeled exploratory, not validated. Note it here so expectations stay honest.

## Privacy / ethics (non-negotiable — this is sensitive health data)

- Titles use codes (P01…), never real names.
- Keep **Contact info in a separate restricted page** Xuan can't see unless she needs it; or a property with limited access. Don't let contact details sit next to symptom data.
- Consent checkbox on every participant before any quote is used.
- Anonymize quotes in the write-up. Strip identifying detail.
- Share the top page with Xuan as **Can edit**; keep your private career notes entirely outside this space.

## Setup order (≈30 min)

1. Create the top page, share with Xuan (Can edit).
2. Build **Overview** + **Working Agreement** first — align before collecting anything.
3. Create the three databases with the properties above; add one **template** row each (a blank Interview Note / Insight template enforces consistency).
4. Mirror the finalized foundation docs in as reference.
5. Set up the Plan timeline view; assign Week 1 tasks.
6. Set up the restricted Contact page. *Then* start recruiting.
