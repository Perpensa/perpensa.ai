# Round 05 — Execution Architecture (working artifact)

**Frame (locked):** ADVISOR lens, a prospective capital provider. This is the advisor's deployment architecture for the **convert-to path the Strategy Document designates: Option 1 (Restructure-first)**, with the Anchor escalation (T3) held as a contingency configuration. It is NOT the company's five-year build plan. It phases the advisor's own capital and decision rights, using LiT's proposed development timeline (`background/LiT_Business_Plan_2026.md` Milestones table; `background/LiT_Financial_Projections_2026.md` tranche schedule) only as the backdrop against which each gate's clearability is tested.

**Seat ownership (Round 05, `LiT_Deliberation_Council.md` §4):** PILOT owns the build and the phasing; CAPITAL owns the capital draw; CRUCIBLE owns technical milestones; ROYALTY and MILL own the commercial path; DISSENT flags any milestone that assumes a buyer or a result the evidence does not support; all ten participate.

**Evidence discipline:** every claim is Cited, Assumption (with confidence band), or carries a `NEEDS EXTERNAL RETRIEVAL` pointer. Phase content is anchored to the locked risk register (`synthesis/SWOT.md`), the recommendation and gates (`synthesis/STRATEGY.md`), and the Round 00 research files.

This artifact accumulates one section per iteration. When all sections are complete it is assembled into `synthesis/EXECUTION_PLAN.md`.

| Section | Round 05 exit-gate item | Status |
|---|---|---|
| **1. Phased plan with decision gates** | Plan phased with decision gates between phases | DONE |
| **2. Team build, hires, capital draw by phase** | Team build, hires, and capital draw mapped to phases | DONE |
| **3. KPIs and proof-of-milestone data** | KPIs and proof-of-milestone data defined | DONE |
| **4. Risk-to-mitigation mapping** | Every High and Elevated risk vector mapped to an owned mitigation | DONE |
| **5. Commercial-path sequencing (pilot / IP / first-licensing)** | Pilot, IP, and first-licensing dependencies sequenced | DONE |
| 6. Assembly | Execution Plan draft written | DONE (synthesis/EXECUTION_PLAN.md v1) |

---

## Section 1 — The phased plan and its decision gates

### 1.1 Answer up front

The execution plan is **not a build schedule; it is a capital-staging architecture with four phases separated by three binding, evidence-completion decision gates.** Capital is released phase by phase, each release small and abandonable, and **no growth capital exists in the plan until all three gates have cleared.** The phases are paced by evidence events, not by the deck's calendar dates: a gate opens when its evidence is in hand, and each phase carries a time-and-cost ceiling that, if breached before the gate clears, triggers abandonment rather than escalation. This is the structural expression of the §4.3 ruling: staging is Option 1's entire advantage over the deck, and the advantage exists only if each stage can actually be walked away from. *(Source: `synthesis/STRATEGY.md` §1, §4.2–4.4; gating logic R-IP-1, R-TECH-1, R-ADOPT-2.)*

The single most important design fact: **the gates are event-driven, not date-driven.** The deck keys its tranches to calendar milestones (M04, M07, M10 …, `LiT_Financial_Projections_2026.md`). The advisor's gates do not. Substituting evidence completion for calendar position is the core remediation, because the locked research shows the deck's calendar assumes results the evidence does not support (§1.5, DISSENT flag).

### 1.2 The phase map

| Phase | Name | Advisor capital at risk | Purpose | Closes at |
|:--:|---|---|---|---|
| **P0** | Offer & acceptance | $0 (diligence cost only) | Put the gated, repriced Option 1 term on the table; retrieve the company-conduct fact the decision turns on | **Gate T1** |
| **P1** | Validation-and-IP tranche | Small, bounded (~$0.5–1M, staged within) | Fund parallel work to clear IP/FTO and an independent scaled validation number | **Gate A + Gate B** |
| **P2** | First-reference tranche | Incremental, still staged | Fund toward one converted paid pilot or a ring-fenced anchor reference, paced to the real qualification cycle | **Gate C** |
| **P3** | Growth-capital release | The growth round | Convert to a follow-on position once all three gates have cleared | Standing position |

Each phase is entered only from the prior gate. P0 → P1 requires T1 (acceptance) **and** T2 (a sequencing analysis showing the down-world is capped). P1 → P2 requires Gates A and B. P2 → P3 requires Gate C. A "no" at any gate halts the plan with capital preserved at that stage; it does not roll forward on hope.

### 1.3 The decision gates (the inter-phase go/no-go)

The three binding release conditions from `synthesis/STRATEGY.md` §4.4 become the inter-phase gates. They are reproduced here as decision gates with an explicit pass test, the phase they release, and the abandon action on failure.

**Gate T1 — Acceptance (closes P0, opens P1).** *Not* one of the three evidence gates; it is the conversion trigger that turns the conditional pass into a funded position.
- **Pass test:** the company signs a gated, repriced term sheet — small validation-and-IP tranche, growth capital withheld behind Gates A/B/C, royalty narrowed to a verifiable base, entry repriced for stage of risk. Signing retrieves the C1/C3/C4 company-conduct fact and the VTIP option terms (C3). *(Source: STRATEGY.md §5 T1; D2 CAPITAL.)*
- **Abandon action (T5):** company declines gating or repricing, or shows it can raise the unrestructured deck elsewhere. The conditional pass becomes a **standing pass**; the plan ends at P0 with zero capital deployed. Refusal is itself an adverse-selection signal, not a neutral outcome.

**Gate T2 — Capped down-world (also gates P0 → P1).** Required *in addition* to T1 before any tranche is released.
- **Pass test:** a sequencing analysis demonstrates Gate A (IP+FTO) and Gate B (validation) can run **in parallel** and read within roughly 12 months for a bounded spend, so the multiplicative downside (R-REV-8 × R-ADOPT-2) cannot reach growth capital. This is what sets Option 1's down-world C6 to a genuine 5. *(Source: STRATEGY.md §4.3, §5 T2.)*
- **Abandon action (T7):** if the parallel-readability or the cost/time ceiling cannot be established — i.e. the gates look entangled or serial across a multi-year tie-up — the staging that is Option 1's only advantage collapses, and **the pass holds (Option 0)**. T2 is the gate most exposed to the §1.5 evidence problem; it is not assumed satisfied.

**Gate A — IP / freedom-to-operate (closes P1, half of the P1 → P2 condition).**
- **Pass test:** an executed, scoped exclusive VTIP license (or confirmed independent ownership) **plus** a clean FTO opinion against the MRC worldwide HHS license and the crowded sub-500 °C art. *(R-IP-1, High; DISSENT gate (a) not cleared; `research/r00-ip-patent-landscape.md`.)*
- **Abandon action (T6):** retrieval surfaces a disqualifying IP fact — VTIP option lapsed or encumbered, no clean FTO path. Plan halts at P1; tranche spent to date is the bounded, pre-priced loss.

**Gate B — Validation (closes P1, the other half of P1 → P2).**
- **Pass test:** an independently reproduced recovery number with a **defined baseline and basis** (percentage points vs relative, particle-size, feedstock), read **at scale**, by a party other than the founder. *(R-TECH-1, High; `research/r00-flotation-scaleup.md`.)*
- **Abandon action (T6):** a validation fact no bounded spend can retire (e.g. scaled recovery collapses toward the elephant-curve limit). Plan halts at P1.

**Gate C — First reference (closes P2, opens P3).**
- **Pass test:** a converted first paid pilot, or a strategic anchor that **prices the operator's all-in adoption cost** and is paced to the real per-operator/per-feedstock qualification cycle (W9: ~2–3 yr pilot-to-commercial per site). *(R-ADOPT-2/3; `research/r00-operator-qualification-cycles.md`.)*
- **Abandon action:** no reference converts within the qualification-cycle-realistic window at bounded cost. P2 halts; growth capital never releases; the position stays a small validation stake, not a loss of the growth round.

**Standing guardrail across all gates (T8, §7 override):** any unmitigated High gate still open at the point of a funding decision **bars** that release outright, regardless of headline economics. This is the rule that makes Option 2 (the deck as written) ineligible and it remains live at every gate.

### 1.4 The Anchor escalation (T3) held as a contingency configuration

The plan's default convert-to path is the pure Restructure-first sequence above. Under one condition set it reconfigures, **without adding a phase**, into the Anchor co-development path (Option 3):
- **Trigger (T3):** time-to-first-reference is the binding constraint (the founder speed-first weighting, under which Anchor already outranks Restructure-first, matrix §7) **and** an anchor term ring-fences field-of-use and bars in-house replication or competitor funding for a defined period **and** a second operator's evaluation interest is evidenced contingent on the reference. *(STRATEGY.md §5 T3; D3.)*
- **What changes:** P2 is run *as* an anchor co-development — Gate C is cleared through one strategic operator rather than an open-market paid pilot, which compresses time-to-reference at the cost of counterparty concentration (R-ADOPT-1).
- **What does not change:** Gates A and B still gate P1 → P2 unchanged; the ring-fence is a hard pre-condition. **Absent the field-of-use ring-fence, T3 does not fire** and the anchor collapses into a single-customer concentration dependency. The escalation buys speed only when concentration is contractually contained.

### 1.5 DISSENT flag — the phasing must not inherit the deck's calendar (mandatory, Round 05 dissent rule)

The deck's milestone table (`LiT_Business_Plan_2026.md`: physical-separation pilot at Month 10; chemical/REE/tailings pilots at Month 16; first license executed at Month 25) and its tranche triggers (Year-1 board presentation at M10, "3+ licensing conversations at advanced stage" at M19) **assume results the locked evidence does not support, and the execution plan must not adopt them as gate dates.**
- W3/W9 establish that the Month 10/16 dates are **campaign *start*, not a validated number**; piloted recovery reads below bench, and validated scaled recovery across analogs is **years out, not ~16 months** (`research/r00-flotation-scaleup.md`, `research/r00-operator-qualification-cycles.md`). Gate B therefore cannot be keyed to Month 10/16.
- W9 establishes per-operator/per-feedstock qualification at ~2–3 years per site, so the Month 25 "first license executed" date is **cycle entry, not revenue**. Gate C is paced to that cycle, not to the deck's date.
- **Consequence for T2:** because validation and first-reference evidence realistically read *later* than the deck's calendar, T2's "parallel and within ~12 months for a bounded spend" test is the binding uncertainty of the whole plan. If the honest sequencing analysis cannot show the *de-risking gates A and B* (not the full revenue path) closing inside that window, T2 fails and the recommendation stays at the pass. The plan is built so this failure mode halts cleanly at P0/P1 rather than carrying optimism into committed capital. *(DISSENT flag logged; resolved by event-driven gates + abandon ceilings, not by accepting the calendar.)*

### 1.6 So-what

The phasing converts the Strategy Document's conditional pass into an operable instrument: **four phases, three evidence gates, every release abandonable, no growth capital before all gates clear, and the gates paced to evidence rather than to the deck's calendar.** Sections 2–5 resource this skeleton (team/hires/capital draw by phase), instrument it (KPIs and proof-of-milestone data per gate), de-risk it (every High/Elevated risk-register vector mapped to an owned mitigation and tied to a gate), and sequence the commercial path (how pilot validation, IP resolution, and first-licensing interlock inside P1 and P2).

**Confidence:** High that the four-phase, three-gate, event-driven structure is the correct translation of the recommendation (it is a direct restatement of the §4.4 binding conditions and the §5 triggers). **Moderate** on whether T2 can be satisfied at all, which is the same Moderate the Strategy Document carries on the pass-vs-convert call. **Fragility:** the entire plan past P0 is contingent on T1+T2; if either fails the plan correctly terminates early with capital preserved, which is a feature of the design, not a defect.

---

## Section 2 — Team build, hires, and capital draw mapped to phases

### 2.1 Answer up front

Two re-cuts of the deck, on the same principle. **The deck releases capital and adds headcount against a calendar and a revenue forecast; the advisor's plan releases both against cleared evidence gates.** Concretely:

1. **Capital draw (CAPITAL owns).** The deck's $2M is disbursed in eight quarterly tranches, all inside Months 1 to 22, triggered by *activity* milestones (COO onboarded, prospect list built, financial report received), with two tranches set to *auto-release* on receipt of a report. The advisor re-cuts the same dollars into a small first tranche behind validation-and-IP, an incremental second tranche behind a cleared validation and FTO, and a separate, repriced growth round behind a first reference. Every release past the first is gate-conditioned; the auto-release tranches are struck. *(Source: `LiT_Financial_Projections_2026.md` Quarterly Disbursement Schedule; `LiT_Business_Plan_2026.md` Disbursement Structure; re-cut per `synthesis/STRATEGY.md` §4.4, §5 T1.)*

2. **Team build (PILOT owns).** The deck grows from two principals to seven FTEs on a calendar, putting its only in-house technical principal (CTO) at Year 3, *after* the validation gate that gates the most money. The advisor pulls technical-validation authority forward into P1 (contracted, not necessarily FTE), defers every commercial and compliance hire until a validated number and a clean FTO exist, and funds the Year-3-to-5 build only out of the P3 growth round. **Headcount is gated to the evidence that creates the need for it.** *(Source: `LiT_Business_Plan_2026.md` Personnel narrative + Operating Expenses table; gating logic R-TECH-1, R-TECH-4, R-ADOPT-2.)*

### 2.2 The advisor's capital draw by phase, reconciled against the $2M / 8-tranche deck

The deck's use-of-funds buckets (`LiT_Business_Plan_2026.md` Use of Funds) re-map cleanly onto the phases, which is what makes the re-cut a re-sequencing rather than a re-budgeting.

| Deck use-of-funds bucket | Deck amount | Maps to phase | Re-cut rule |
|---|--:|:--:|---|
| Pilot-Scale Validation | $700,000 | **P1** | Funds Gate B (independent, scaled number). Released only on T1 signing; abandonable at Gate B. |
| IP Prosecution (national phase US/AU/IN) | $235,000 | **P1** | Funds Gate A (executed VTIP license + FTO opinion). Released on T1; abandonable at Gate A. |
| Licensing Pipeline Development | $415,000 | **P2** | Funds first-reference qualification work. Released only after Gates A+B clear. |
| Commercial & Technical Team | $650,000 | split **P1/P2/P3** | Principals' burn runs through P1/P2; commercial/technical FTEs deferred to P2/P3 (see §2.3). |

**P0 — Offer & acceptance. Advisor capital deployed into the company: $0.** Only the advisor's own diligence and legal cost is at risk. No tranche, no hire. *(Cited: STRATEGY.md §5 T1; r05 §1.2.)*

**P1 — Validation-and-IP tranche. ~$0.5–1.0M, staged within.** This is the deck's Pilot-Scale Validation ($700K) plus IP Prosecution ($235K), about $0.9M, which is why the §1.2 ceiling of "$0.5–1M" is the right bound. This tranche is the advisor's **entire pre-priced loss**: if Gate A or Gate B fails, the abandon action (T6) writes off the spend to date and nothing more. *(Assumption, High confidence, that $0.9M is the realistic envelope for one parallel IP/FTO workstream plus one independent scaled validation campaign; the deck itself budgets exactly these two lines at this size.)*

**P2 — First-reference tranche. Incremental, still staged.** This is the deck's Licensing Pipeline Development ($415K) plus the marginal cost of the commercial and qualification-engineering capability that a real per-operator/per-feedstock cycle requires (W9: ~2–3 yr per site). It releases only after Gates A and B clear and is paced to the qualification cycle, not to the deck's Month 25 "first license" date. *(Cited: STRATEGY.md §4.4 Gate C; `research/r00-operator-qualification-cycles.md`.)*

**P3 — Growth-capital release. The growth round.** This is **not** inside the deck's $2M. It is a separate, larger check, repriced at a validated-stage valuation, released only after Gate C. This is the single most important capital-structure reconciliation: see §2.4.

**Three concrete reconciliations against the deck's funding structure (CAPITAL):**
- **Activity triggers become evidence gates.** The deck's tranche triggers are inputs ("COO onboarded," "BD prospect list established," "3+ licensing conversations at advanced stage"). None is a de-risking *outcome*. The advisor re-bases every trigger past the first onto Gates A/B/C, which test results, not effort. *(Cited: deck Tranche 2/3/7 triggers; the input-vs-outcome defect is R-ADOPT-2, R-TECH-1.)*
- **The auto-release tranches are struck.** Deck Tranches 5 (M13) and 6 (M16) auto-release "upon receipt of" a financial or investor report, a pure calendar event with zero evidence test. Under the advisor's instrument no capital releases on receipt of a document; the auto-release mechanism is removed. *(Cited: deck Tranche 5/6 triggers.)*
- **Entry is repriced, growth pricing is reserved.** The $13M pre-money is seed-priced for pre-seed-level technical and IP risk (R-REV-10). The advisor reprices the P1 entry for stage of risk and reserves growth-round pricing for P3, where a cleared validation and FTO justify it. The deck's single flat $13M/13.33% cap table is replaced by a two-point structure: a repriced small entry, then a growth round priced off de-risked evidence. *(Cited: STRATEGY.md §5 T1, D2; R-REV-10.)*

### 2.3 Team build and hires by phase (PILOT)

The deck's sequence is: CEO + COO (Years 1–2) → BD Manager (mid-Year 2) → CTO + Compliance Manager (Year 3) → Licensing Operations Manager (Year 4) → Technical Integration Engineer (Year 5), reaching seven FTEs by Year 5. *(Cited: `LiT_Business_Plan_2026.md` Personnel; Operating Expenses table.)* Re-sequenced against the gates:

| Phase | Hires the advisor's plan funds | Hires the deck places here that the plan defers | Rationale |
|:--:|---|---|---|
| **P0** | None. Two principals only. | — | Diligence phase; $0 deployed. |
| **P1** | Contracted **independent validation authority** (Gate B) + **IP/FTO counsel** (Gate A). Optionally a **fractional/interim technical lead** to own the company side of Gate B. | — | The gate that gates the most money needs technical ownership the principals do not supply (see §2.4). Contract, do not build. |
| **P2** | **CTO pulled forward from Year 3** to own per-feedstock qualification engineering; **BD/commercial** capability to run the first reference. | Deck's mid-Year-2 BD Manager belongs here, not on the calendar. | Commercial and qualification capability is justified only once a validated number and clean FTO exist. |
| **P3** | Growth-funded build: **Compliance Manager** (NSR/license verification), **Licensing Operations Manager**, **Technical Integration Engineer**. | Deck's Year-3/4/5 cohort. | Portfolio-scaling roles with no pre-revenue function; funded by the growth round, not the seed. |

**The governing principle (PILOT):** the deck hires to a revenue forecast; the advisor hires to cleared gates. No commercial, compliance, or portfolio-operations FTE is funded before Gate B (a validated number) and Gate A (a clean FTO). The **one** role the advisor pulls *earlier* than the deck is technical-validation authority, precisely because it is the gate, and it is the role the deck defers furthest. *(Assumption, High confidence: this is the direct headcount expression of the §1 event-driven design.)*

### 2.4 The two reconciliation conflicts this surfaces

**Conflict 1 — the self-sustainability claim is the collapsed bridge (CAPITAL / DISSENT).** The deck asserts the $2M "is projected to carry LiT to revenue-generating self-sustainability in Year 3 without requiring a bridge round or additional dilution" (`LiT_Business_Plan_2026.md` Use of Funds; Investment Terms). That claim depends on the Year-3 revenue arriving on the deck's calendar, which the locked research contradicts: validated scaled recovery is years out, not ~16 months, and first reference is paced to a ~2–3 yr qualification cycle (r05 §1.5; W3/W9). The advisor's plan does **not** inherit the no-bridge claim. It makes the follow-on explicit and external: **P3 is a growth round.** This is the honest form of R-REV-6 (the knife-edge self-funding bridge): the bridge does not vanish, it is named, sized later, and priced off cleared evidence rather than assumed away. *(Cited: deck no-bridge claim; R-REV-6; r05 §1.5.)*

**Conflict 2 — the validating principal arrives after the validation gate (PILOT / DISSENT).** The deck staffs no in-house process-engineering principal until the CTO joins in Year 3. The two principals' backgrounds are program management and operations/regulatory/geology/environmental law; neither is the process-engineering owner of a recovery number. *(Cited: deck Team section.)* The process know-how sits with the academic partners (Virginia Tech; IIT-ISM Dhanbad) and the VTIP-licensed MRC surface chemistry. So at the point the plan spends its first and largest at-risk tranche on Gate B, the company has **no internal authority who owns the validation** (R-TECH-4, capability-to-validate gap). The advisor's remedy is in §2.3: contract independent validation authority and, if the principals cannot own the company side, fund a fractional/interim technical lead in P1, and pull the CTO forward to P2 rather than Year 3.

### 2.5 DISSENT flag — partner R&D spend is not, by itself, gate-clearing (mandatory)

The deck's R&D line is $300,000/yr in Years 1–2, split **75% to IIT-ISM Dhanbad and 25% to Virginia Tech** (`LiT_Financial_Projections_2026.md` R&D Split; `LiT_Business_Plan_2026.md` states IIT-ISM "conducts the majority of LiT's applied R&D work"). Two flags bind on the capital draw:
- **Independence.** This R&D pool funds the *same parties that produced the bench number*. Gate B's pass test requires reproduction "by a party other than the founder," read at scale (r05 §1.3). Spending the partner R&D budget therefore does **not** by itself clear Gate B. The advisor must ring-fence an **independent validation line inside P1, distinct from the partner R&D pool**, and must not accept partner R&D progress reports as gate-clearing evidence. *(Cited: R-TECH-1; r05 §1.3 Gate B.)*
- **Concentration.** 75% of applied R&D in IIT-ISM Dhanbad compounds R-GEO-2 (export-control / IP-custody) and the R-TECH-4 capability gap. The validation that clears Gate B should weight the US-based, independent VT channel up relative to the deck's 75/25 Dhanbad-heavy split, both for IP custody and for the independence test above. *(Cited: R-GEO-2, R-TECH-4; `research/r00-ip-patent-landscape.md`.)*

This is the §1.5 calendar discipline applied to money and people: the plan must not let the existence of an R&D budget or a hiring schedule stand in for the evidence the gates actually test.

### 2.6 So-what

The capital draw and the org chart are now both event-driven. **The advisor's first-money exposure is bounded to one ~$0.9M validation-and-IP tranche (P1) released only on a signed gated term; commercial, compliance, and portfolio headcount is deferred behind Gates A and B; the deck's Year-3-to-5 build and its growth capital are funded only out of a separate, repriced P3 round after Gate C; and the deck's no-bridge / self-sustainability claim is replaced by an explicit growth round.** The one hire pulled earlier than the deck is technical-validation authority, because that is what the first tranche is buying.

**Confidence:** High that the re-sequencing rule (capital and headcount gated to evidence, not calendar or forecast) is the correct translation of the §4.4 recommendation and the §1 event-driven structure. **Moderate** on the precise P1 envelope (~$0.9M) and on whether a fractional technical lead is sufficient versus a full CTO in P1, which turns on the unretrieved C1/C4 facts about the bench work's reproducibility and the principals' technical depth. **Fragility:** if Gate B cannot be made independent of the originating partner labs within the P1 envelope, the validation tranche cannot do its job and the plan halts at P1 with the bounded loss, exactly as designed. The team-build re-sequence is contingent on the same T1+T2 conversion the whole plan past P0 depends on.

---

## Section 3 — KPIs and proof-of-milestone data per gate

### 3.1 Answer up front

A gate is not a date and not an activity; it is a **named metric plus the proof artifact that clears it, plus the named party who produces and accepts that artifact.** Section 1 defined where the gates sit and what they release. This section defines, for each gate, the single load-bearing KPI, the exact proof-of-milestone artifact that satisfies it, the party that must produce it (and who may *not*, per the independence rule), and the fail-reading that triggers the abandon action. The governing discipline is the one carried through Sections 1 and 2: **the KPI must test a de-risking *outcome*, never an activity or a calendar position, and no KPI may be written so that it can be "met" by a result the locked evidence does not support.** Where the deck's own milestone would satisfy a gate only by assuming such a result, DISSENT strikes it and the KPI is rewritten to the evidence-supported form. *(Source: `synthesis/STRATEGY.md` §4.4; r05 §1.3; gating logic R-IP-1, R-TECH-1, R-ADOPT-2.)*

CRUCIBLE owns the technical KPIs (Gate B, and the technical limb of Gate C); CAPITAL owns the term/structure KPIs (T1); the moderator owns the sequencing KPI (T2); ROYALTY and MILL own the commercial KPI (Gate C); WATERSHED owns the IP/FTO and green-claim limbs of Gate A. DISSENT holds a flag on every KPI that could be passed by an unsupported number.

### 3.2 The KPI and proof artifact for each gate

The table is the deliverable; the notes below it carry the definitional precision each KPI requires to be non-gameable.

| Gate | Single load-bearing KPI | Proof-of-milestone artifact that clears it | Produced / accepted by | Fail-reading → abandon action |
|:--:|---|---|---|---|
| **T1** — Acceptance | Company executes the gated, repriced term as written (not a counter that re-opens the gates or the price) | **Signed term sheet** carrying all four conditions: small validation-and-IP tranche only; growth capital withheld behind A/B/C; royalty narrowed to a verifiable base; entry repriced for stage of risk. Signing **delivers** the C1/C3/C4 conduct record and the VTIP option terms (C3) as diligence exhibits. | CAPITAL accepts; counterparty executes | Decline of gating/repricing, or evidence the unrestructured deck can be raised elsewhere → **T5**, standing pass, $0 deployed. Counter that strips a gate is a fail, not a negotiation. |
| **T2** — Capped down-world | Gates A and B are shown **parallel-readable within ~12 months for a bounded (~$0.9M) spend** | **Written sequencing analysis** with a dated critical-path showing the IP/FTO workstream and the independent scaled-validation campaign running concurrently, each with an independent read-out, plus a cost/time ceiling and the abandon point if breached. | Moderator owns; CRUCIBLE validates the validation arm's timeline against W3/W9 | Analysis cannot honestly show parallel read inside the window/ceiling, or shows the gates entangled/serial across a multi-year tie-up → **T7**, staging advantage gone, pass holds (Option 0). |
| **Gate A** — IP / FTO | A **scoped exclusive right to operate the HHS surface-chemistry IP is executed AND no blocking third-party claim survives** | (i) **Executed VTIP exclusive license** (or confirmed independent ownership), converting the Art. 13.4–13.6 *option* into a license; **and** (ii) a **written FTO opinion** from independent counsel clearing the MRC worldwide HHS license and the crowded sub-500 °C art; **and** (iii) a substantiation memo scoping the green claims to defensible bench-stage wording. | WATERSHED + independent IP counsel; **not** the company's own assertion | VTIP option lapsed/encumbered, or no clean FTO path, or green claims unsubstantiable → **T6**, halt at P1, tranche-to-date is the bounded pre-priced loss. |
| **Gate B** — Validation | **Independently reproduced recovery, stated in percentage points against a defined baseline and basis, read at pilot scale** | **Third-party validation report** stating: the recovery number; the **baseline** it improves on; **basis** (percentage points vs relative); **feedstock identity and particle-size distribution**; **scale** of the run; and the **operator**, who must be a party other than the founder and **outside the partner R&D pool** that produced the bench number. | Independent validation authority (contracted in P1); CRUCIBLE accepts; **partner-lab progress reports are inadmissible** | Scaled recovery collapses toward the elephant-curve limit, or the number cannot be restated on a defined baseline/basis, or no independent line can be stood up inside the envelope → **T6**, halt at P1. |
| **Gate C** — First reference | **One converted paid pilot (or ring-fenced anchor) priced to the operator's all-in adoption cost, at the real qualification cadence** | **Signed pilot/reference agreement** showing: consideration paid; the operator's **all-in adoption cost** (integration, downtime, requalification) costed into the terms; and a timeline **paced to the ~2–3 yr per-operator/per-feedstock cycle**, not the deck's Month 25 date. | ROYALTY + MILL; technical limb accepted by CRUCIBLE | No reference converts within the qualification-realistic window at bounded cost → P2 halts; growth capital never releases; position stays a small validation stake, not a loss of the growth round. |

**Standing override KPI (T8, §7).** Independent of the five gate KPIs: at any funding decision, **count of unmitigated High gates still open must be zero**, else the release is barred outright regardless of headline economics. This is the binary that keeps Option 2 (deck-as-written) ineligible and it is read at every gate, not just once.

### 3.3 KPI definitions that make each metric non-gameable (CRUCIBLE owns the technical ones)

Each KPI above is only as good as the definition that stops it being met trivially. The four that carry the most weight:

- **Gate B recovery KPI — the "defined baseline and basis" is the whole metric.** A bare "recovery improved to X%" is uninterpretable and therefore inadmissible. The report must state the number **as percentage points over a named baseline at a named particle-size on a named feedstock at a named scale.** This directly retires the green-claims defect (W13): the "~30%" figure is Unsupported precisely because it carries no disclosed baseline (`research/r00-green-claims-substantiation.md`). The same disclosure that clears Gate B closes that exposure, which is why Gate A's green-substantiation limb (iii) and Gate B share an evidence file. *(Cited: R-TECH-1; W13; W3 piloted-recovery-reads-below-bench.)*
- **Gate B independence KPI — "by a party other than the founder" extends to the partner R&D pool.** Per §2.5, the 75/25 Dhanbad/VT R&D budget funds the parties that produced the bench number. Reproduction by those same labs does **not** satisfy the KPI. The accepting artifact must name an operator outside that pool. *(Cited: §2.5; R-TECH-1, R-TECH-4.)*
- **Gate C "all-in adoption cost" KPI — the buyer's cost, not the seller's price.** The metric is met only if the agreement reflects the operator's integration, downtime, and requalification burden (R-ADOPT-3), because a pilot priced to LiT's licence fee alone re-imports the omitted-adoption-cost defect. A signed pilot that ignores the operator's switching cost is a fail on this KPI even if money changes hands. *(Cited: R-ADOPT-3; `research/r00-operator-qualification-cycles.md`.)*
- **T2 sequencing KPI — the test is the *de-risking gates*, not the revenue path.** T2 asks whether **A and B** (not Gate C, not first revenue) can read in parallel inside ~12 months. Writing T2 against the full revenue path would make it unsatisfiable and is the wrong reading; writing it against the calendar would make it false. It is satisfied only by an honest critical-path on the two de-risking gates. *(Cited: r05 §1.5; STRATEGY.md §4.3.)*

### 3.4 DISSENT flags on the KPI set (metrics that assume an unsupported result)

DISSENT's Round 05 charge is to strike any KPI that can be cleared by a result the evidence does not support. Three strikes and one standing caution:

1. **Strike the deck's Month-10/16 pilot milestone as a Gate B KPI.** The deck would let a *pilot campaign start* at Month 10/16 stand in for a validated number. W3/W9 establish those are campaign-start dates, that piloted recovery reads below bench, and that validated scaled recovery is years out (`research/r00-flotation-scaleup.md`). A "pilot launched" KPI is an **activity**, not an outcome, and is struck. Gate B's KPI is the independent scaled *number*, not the campaign. *(Cited: r05 §1.5; W3/W9.)*
2. **Strike the "3+ licensing conversations at advanced stage" tranche trigger as any KPI.** The deck's M19 trigger counts *conversations*. A conversation is not a converted reference and carries no adoption-cost or qualification-cadence content. It is struck wholesale; Gate C's KPI is one **signed, all-in-priced** reference, of which the count that matters is one, not three pipeline entries. *(Cited: deck Tranche trigger; R-ADOPT-2.)*
3. **Strike auto-release-on-report as a milestone of any kind.** Per §2.2, deck Tranches 5/6 release on *receipt of a document*. Receipt of a report is neither an outcome nor a metric; no KPI in this set is a document-receipt event. *(Cited: §2.2; deck Tranche 5/6.)*
4. **Standing caution on Gate B's "at scale."** "At scale" must not be quietly read down to bench-plus. W3 shows piloted recovery sits below bench and that the gap between bench and a validated scaled number is exactly where the technical risk lives. If the only number available is bench, Gate B is **not** met, even if the bench number is independently reproduced. DISSENT holds this caution open into Round 06's pre-mortem as a named failure mode (bench passes, scale never does). *(Cited: W3; carried to R06.)*

### 3.5 So-what

Every gate now has a metric that tests a de-risked outcome and a single artifact that proves it, with the producing/accepting party named and the partner-lab and document-receipt loopholes explicitly closed. **The plan can no longer be advanced by activity, calendar, or a number without a disclosed baseline.** The fail-reading on each KPI routes to the abandon action already defined in Section 1, so the instrumentation and the staging are the same mechanism viewed twice. Section 4 maps every High and Elevated risk-register vector to an owned mitigation and ties each to the gate whose KPI now tests it; Section 5 sequences how the Gate A (IP/FTO), Gate B (validation), and Gate C (first-licensing) artifacts are produced inside P1 and P2.

**Confidence:** High that the KPI-plus-artifact-plus-owner structure is the correct instrumentation of the §4.4 gates and that the three DISSENT strikes are forced by the locked research, not discretionary. **Moderate** on whether an independent, outside-the-pool validation operator can actually be contracted to produce the Gate B artifact inside the ~$0.9M P1 envelope, which is the same Moderate Section 2 carries and which turns on the unretrieved C1/C4 reproducibility facts. **Fragility:** the Gate B KPI is the load-bearing one; if "at scale" cannot be achieved within bounded spend, the metric correctly refuses to clear and the plan halts at P1, which is the design, not a defect.

---

## Section 4 — Risk-to-mitigation mapping: every High and Elevated vector to an owned mitigation tied to a gate

### 4.1 Answer up front

The risk register carries **8 High vectors and 12 Elevated vectors** (`synthesis/SWOT.md` register summary). **Every one of the twenty has an owned mitigation and an owning seat, and every one ties to a gate whose KPI (§3) now tests it. None is left residual-unmitigated.** This is the decisive integrity result of the execution plan: the staged architecture of Sections 1 to 3 was not built to a generic milestone schedule, it was built backwards from this register, so that the three evidence gates and the two conversion gates each exist to retire a specific cluster of High/Elevated risk before any further capital releases. *(Source: `synthesis/SWOT.md` risk register; gates and KPIs r05 §1.3, §3.2; recommendation `synthesis/STRATEGY.md` §4.4.)*

Two qualifications are stated up front and held to throughout, because honesty about them is the point of the mapping:

1. **Owned does not mean eliminated.** Four vectors (R-ADOPT-1, R-ADOPT-2, R-TECH-3, R-ADOPT-5) are **contained, not removed**: their mitigation paces, bounds, or contractually fences the risk but cannot make it disappear, because each is structural to a licensing-of-incremental-process-tech-into-a-concentrated-buyer-set business. For these the mitigation is an owned discipline (an abandon ceiling, a ring-fence, a "win against an incumbent not into a vacuum" test), and the *residual* is carried explicitly to the Round 06 pre-mortem rather than booked as closed.
2. **Two vectors are mitigated by analytical instrument, not by a binary pass/fail gate.** R-REV-3 (price exposure) and R-REV-7 (exit multiples) are retired by the banded dual-world model and the recentered-multiple discipline already built in Round 04, and are *tested* at the T1 entry-repricing and the P3 growth-repricing decisions rather than by a go/no-go gate. They are owned and tied, but to a pricing discipline, not to an evidence gate, and the table says so.

### 4.2 The mapping table (the deliverable)

Severity is carried verbatim from the `synthesis/SWOT.md` register. "Gate that tests it" names the §3 gate whose KPI now reads the mitigation; "Residual" states what survives the mitigation and where it goes.

| Risk ID | Sev | Owned mitigation (what retires or contains it) | Owning seat | Gate whose KPI tests it (§3) | Residual after mitigation |
|---|:--:|---|---|:--:|---|
| **R-IP-1** | High (gating) | Executed scoped-exclusive VTIP license (converts the Art. 13.4–13.6 option) **plus** clean independent FTO opinion; no growth capital releases while open (T8 bar). | WATERSHED + IP counsel | **Gate A** (+ T1 delivers C3 terms; T8 standing bar) | None if Gate A clears; if it cannot, plan halts at P1 (T6), bounded loss. Not a residual, a hard stop. |
| **R-TECH-1** | High (gate) | Independent scaled recovery report stating number/baseline/basis/feedstock+PSD/scale/operator, operator outside founder **and** outside the partner R&D pool (§2.5). P1 funds a ring-fenced independent validation line. | CRUCIBLE | **Gate B** | "Bench passes, scale never does" failure mode (DISSENT §3.4 caution) carried to R06. |
| **R-REV-1** | High | T1 repapers the royalty off the off-market whole-mine NSR onto a **verifiable narrow base** (metered licensed-process throughput, the redirected S3 principle). | ROYALTY + CAPITAL | **T1** (term as written) | Demand-side mirror R-ADOPT-4 (will an operator sign even the narrow base) tested at Gate C. |
| **R-REV-3** | High | Banded dual-world price model (deficit AND surplus worlds) already mandated and run in R04; O5 price-floor as named downside offset; no single-price base permitted. | SPOT + CAPITAL | **Analytical instrument**, read at T1 entry-repricing and P3 growth-repricing (not a binary gate) | Strategic-suppression increment R-GEO-3 rides on this band; price risk is irreducible, only bounded. |
| **R-REV-7** | High | Entry repriced for stage of risk at T1; growth-round pricing reserved to P3 off de-risked evidence; exit assumptions recentered to 2–4x revenue in R04 (not 8–10x). | CAPITAL | **Analytical instrument**, read at T1 + P3 repricing (not a binary gate) | Exit structure likely upfront-plus-earnout not clean multiple; carried as a return-shape caveat, not a gate. |
| **R-REV-8** | High (master) | The **entire staged architecture** caps the multiplicative downside: T2 proves Gates A+B parallel-readable within ~12 mo / ~$0.9M so the R-REV-8 × R-ADOPT-2 product cannot reach growth capital; joint First-Chicago downside priced into C6 in R04. | CAPITAL + Moderator | **T2** (its dedicated gate) + staging | If T2 cannot be shown, the staging advantage collapses and the pass holds (Option 0). The master risk's mitigation is the option to not proceed. |
| **R-ADOPT-1** | High | O6 customer-as-investor / co-development anchor; under T3 the anchor term **ring-fences field-of-use and bars in-house replication / competitor funding** for a defined period. | MILL + ROYALTY | **Gate C** (+ T3 ring-fence pre-condition) | **Contained, not removed.** Anchor path converts concentration-of-pipeline into counterparty concentration (§1.4); carried to R06. Absent the ring-fence, T3 does not fire. |
| **R-ADOPT-2** | High (master, time-to-rev) | Gate C **paced to the real ~2–3 yr per-operator/per-feedstock cycle** (not deck Month 25); abandon ceiling if no reference converts in the qualification-realistic window; T2 ensures de-risking gates read before growth capital is exposed to the cycle. | MILL + PILOT | **Gate C** + **T2** | **Contained, not removed.** Time-to-revenue cannot be accelerated, only paced and made abandonable; dominant R06 / First-Chicago driver. |
| **R-IP-2** | Elevated | Gate A executes the exclusive license, foreclosing the "VTIP arms a better-capitalized rival / option lapses" path; T1 retrieves the C3 option terms to size the window. | WATERSHED | **Gate A** (+ T1) | None once exclusive license executed; before that, time-pressure on the option window is real and feeds T1 urgency. |
| **R-IP-3** | Elevated | Gate A limb (ii): written FTO opinion clearing the MRC worldwide HHS license on Stage One; design-around scoped if the read is adverse. | WATERSHED + IP counsel | **Gate A** | If FTO is adverse and no design-around, this rolls into the R-IP-1 hard stop at Gate A. |
| **R-TECH-2** | Elevated | Gate B KPI requires the number **at scale**; DISSENT §3.4 strike 1 removes Month 10/16 "pilot launched" as a Gate B KPI (activity not proof); standing "at scale ≠ bench-plus" caution. | CRUCIBLE + DISSENT | **Gate B** | Same "bench passes, scale never does" residual as R-TECH-1; carried to R06. |
| **R-TECH-3** | Elevated | Gate A FTO defines the defensible (incremental) claim scope; T3 anchor ring-fence buys a contractual exclusivity period the thin patent moat cannot; value captured via the narrow verifiable base (R-REV-1 mitigation) rather than via moat width. | CLAIM + WATERSHED | **Gate A** scope + **T3** contractual period | **Contained, not removed.** The moat stays incremental; mitigation manages value-capture around a thin moat. Carried to R06. |
| **R-REV-5** | Elevated | T1 re-weights the deal off the upfront leg onto the verifiable royalty leg; repositions toward brownfield/retrofit (not the collapsed greenfield pipeline); O5 grant/offtake as partial offset. | ROYALTY + SPOT | **T1** (term re-weight) + **Gate C** (brownfield reference) | Brownfield/retrofit cycles are themselves slow (rides on R-ADOPT-2 pacing). |
| **R-REV-6** | Elevated | §2.4 Conflict 1: the deck's "no bridge / Year-3 self-sustainability" claim is **struck and replaced by an explicit P3 growth round**, sized later and priced off cleared evidence; dilution is named, not assumed away. | CAPITAL | **P3 growth-round structure** (capital-structure remedy) + paced by Gate C | Dilution is now explicit; residual is execution risk of raising P3, which only exists if Gate C clears (a good problem). |
| **R-REV-9** | Elevated | Decided by design: Option 1 (Restructure-first) selected, the convert-to instrument repapers toward the verifiable base; hybrid/BOO/producer scored in R04 and **not** adopted as base (dominated absent a full ring-fence). The model-choice is made, which is the mitigation. | ROYALTY + DISSENT (gate c) | **T1** (term embodies the chosen model) | If a ring-fenced BOO/hybrid later dominates, it re-opens with the R-ESG-2 liability tail (below); held as a R03/R04-decided, T9-guarded option. |
| **R-ADOPT-3** | Elevated | Gate C KPI requires the operator's **all-in adoption cost** (integration, downtime, requalification) costed into the terms (§3.3 buyer-cost-not-seller-price); O5 subsidizes qualification cost. | MILL | **Gate C** | A signed pilot priced only to LiT's fee is a Gate C *fail*; residual is whether any operator's all-in math closes, tested at Gate C. |
| **R-ADOPT-4** | Elevated | Same T1 repaper as R-REV-1 read from the demand side: a verifiable narrow base an operator will actually sign, plus model-choice flexibility (R-REV-9). | ROYALTY + MILL | **T1** + **Gate C** (a term an operator signs) | **Contained:** majors may still prefer build/buy/equity; the narrow base lowers but does not remove resistance. |
| **R-ADOPT-5** | Elevated | Gate C requires a reference that **wins against the occupied Glencore Technology channel, not into a vacuum**; differentiation carried by the validated Gate B number, not by being first. | ROYALTY + MILL | **Gate C** | **Contained, not removed.** Incumbent competition is structural; mitigation forces the reference test to be honest about it. Carried to R06. |
| **R-ESG-1** | Elevated | Gate A limb (iii): substantiation memo scoping green claims to defensible bench-stage wording ("no *highly* acidic," no unqualified "~30%"); shares the C1 evidence file with Gate B, so one validation workstream closes both the technical and the green exposure. | WATERSHED | **Gate A** (+ shared Gate B evidence file) | 10b-5 / investor-materials disclosure surface persists until C1 is retrieved; mandatory qualified wording is the standing control. |
| **R-ESG-2** | Elevated (High under title/custody/BOO) | **Licensing-first keeps owner/operator CERCLA liability with the miner** (a structural point *for* the chosen Option 1 model); any title/custody/BOO config requires an explicit CERCLA + closure-bond line and re-rates this to High. | WATERSHED + DISSENT | **T1 / model-choice** (licensing-first) + **T9** (no naked BOO/producer) | Low under the base licensing config; re-opens as High if R-REV-9 ever moves the model to BOO. Held under T9 guard. |

### 4.3 Cross-linked Moderate vectors that the same mitigations already retire (noted, not required)

The Round 05 exit gate binds only High and Elevated vectors, all twenty of which are mapped above. Four Moderate vectors cross-link directly into those mitigations and are retired by the same owned work, so they are recorded here to show the mapping is coherent rather than leaving visible loose ends:

- **R-TECH-4** (Dhanbad validation capability not under contract, Moderate) is retired by the §2.5 ring-fenced independent validation line and the §2.4 Conflict-2 remedy (contract validation authority in P1, pull the CTO to P2). Rides on **Gate B** independence. *(Cross-link: R-TECH-1.)*
- **R-GEO-2** (offshore R&D export-control / IP-custody, Moderate) is retired by the §2.5 concentration flag (weight the US/VT channel up against the 75/25 Dhanbad split, ring-fence custody). Rides on **Gate A / Gate B**. *(Cross-link: R-TECH-4.)*
- **R-GEO-3** (China strategic price suppression, Moderate) is absorbed by the R-REV-3 banded model (a deliberate-low-price leg) with O5 as the named offset. Rides on the **R-REV-3 analytical instrument**.
- **R-REV-10** (entry seed-priced for pre-seed risk, Moderate) is retired by the T1 entry-repricing and the reserved P3 growth pricing (§2.2). Rides on **T1 / P3**. *(Cross-link: R-REV-7.)*

### 4.4 DISSENT review — is any High/Elevated vector left without an owned mitigation? (mandatory)

DISSENT's Round 05 charge here is narrow and binary: **flag any High or Elevated vector that reaches the end of the execution plan without an owned mitigation.** The finding:

- **No High or Elevated vector is residual-unmitigated.** All twenty have a named owning seat and a gate that tests them. DISSENT does not dispute the completeness of the coverage.
- **But DISSENT records four "contained, not removed" vectors as standing residuals, not closed risks**, and refuses to let the table's "owned" column read as "retired" for any of them: **R-ADOPT-1** (counterparty concentration survives the anchor ring-fence), **R-ADOPT-2** (time-to-revenue is paced and bounded, never accelerated), **R-TECH-3** (the moat stays incremental), and **R-ADOPT-5** (the Glencore channel stays occupied). These four are the structural shape of the business; the plan's honesty is that it contains them with abandon ceilings and ring-fences rather than claiming to solve them. **All four are carried to the Round 06 pre-mortem as live failure modes.**
- **DISSENT additionally flags the two analytical-instrument mitigations (R-REV-3, R-REV-7) as weaker than gate-tested mitigations**, because they depend on the advisor holding pricing discipline at T1 and P3 rather than on a binary artifact that either exists or does not. They are owned, but the owner is judgment under deal pressure, which is exactly where the §6.x neutrality hazard bites. DISSENT asks that the R06 validation pass confirm the banded model and recentered multiples actually governed the T1 term and were not quietly relaxed.
- **Standing master-risk flag.** The two master Highs, **R-REV-8** and **R-ADOPT-2**, are mitigated by the same single mechanism: the staged option to not proceed (T2 / abandon ceilings). DISSENT notes the concentration: if T2 is mis-judged, both master risks lose their mitigation simultaneously. This is the single most load-bearing judgment in the plan and is flagged as such for R06.

### 4.5 So-what

The execution plan now closes the loop the SWOT opened: **every High and Elevated risk vector that the deck's headline Strengths inverted into is mapped to an owned mitigation, an owning seat, and the specific gate whose KPI tests it, with the residual on each stated rather than hidden.** The three places the register concentrated its High and master risks (IP control, recovery validation, the revenue model) map cleanly onto Gate A, Gate B, and the T1/T2 term-and-sequencing pair, which is the structural confirmation that the gates were designed to the risk and not to a calendar. What the mapping cannot do is convert the four structural-residual vectors into closed ones; those pass to Round 06 as named failure modes, which is the correct disposition, not a gap. Section 5 sequences how the Gate A (IP/FTO), Gate B (validation), and Gate C (first-licensing) artifacts that retire these vectors are actually produced and interlocked inside P1 and P2.

**Confidence:** High that the coverage is complete (all 8 High + 12 Elevated mapped to an owned seat and a testing gate, forced directly by the §3 KPI design) and that the four "contained-not-removed" labels are honest rather than concessive. **Moderate** on whether the analytical-instrument mitigations (R-REV-3, R-REV-7) hold under live deal pressure, which is a governance question the R06 validation pass must check. **Fragility:** the two master Highs share a single mitigation mechanism (the staged option to not proceed); if T2 is mis-judged that mechanism fails for both at once, which is why T2 remains the binding uncertainty of the entire plan (r05 §1.6, §3.5).

---

## Section 5 — Commercial-path sequencing: how the Gate A, Gate B, and Gate C artifacts are produced and interlocked inside P1 and P2

### 5.1 Answer up front

The decisive sequencing fact is that **the plan contains exactly one parallelism, and it lives entirely inside P1: the IP/FTO track (Gate A, limbs i and ii) runs concurrently with the independent scaled-validation campaign (Gate B). Everything else is serial.** First-licensing (Gate C) cannot begin until an operator has both a validated number to qualify against and a clean, exclusively held right to license, so Gate C is serial after *both* A and B; and growth capital (P3) cannot begin until a reference exists, so P3 is serial after C. The macro sequence is strictly **T1 → (A ∥ B) → C → P3**, with the A‑and‑B fan‑out the only concurrency in the whole architecture. *(Source: r05 §1.2–1.3 phase/gate map; `synthesis/STRATEGY.md` §4.4; serial logic R-ADOPT-2, R-IP-1, R-TECH-1.)*

This makes the T2 test concrete and narrow. **T2's "parallel-readable within ~12 months for ~$0.9M" question is a question about one thing only: whether Gate A(i/ii) and the Gate B campaign can read concurrently inside P1's envelope.** It is not a question about the revenue path (§3.3). The **critical path of P1 is the validation campaign** (the longer, riskier pole, because IP/FTO is counsel-paced while scaled validation reads below bench and slower per W3/W9), with a short green-substantiation tail hanging off it. The **critical path of the whole plan is the Gate C qualification cycle** (~2–3 yr per operator/feedstock, R-ADOPT-2), which is serial-after-P1 and **cannot be parallelized or accelerated, only paced and made abandonable.**

### 5.2 The three artifact tracks and their internal steps

Each gate is the head of an ordered production track. The table states, per track, the input it needs from a prior gate, its ordered steps, and the output artifact that clears the §3 KPI.

| Track | Upstream input it needs | Ordered production steps | Output artifact (clears §3 KPI) | Owner |
|---|---|---|---|---|
| **Gate A — IP / FTO** | T1 delivers the C3 VTIP option terms (Art. 13.4–13.6) | **A1** convert the option into an executed scoped-exclusive VTIP license → **A2** independent FTO opinion vs the MRC worldwide HHS license and the crowded sub-500 °C art → **A3 (green limb)** substantiation memo scoping the green claims to defensible bench-stage wording | Executed license + written FTO opinion + substantiation memo | WATERSHED + IP counsel |
| **Gate B — Validation** | None from other gates; needs a ring-fenced independent line (§2.5) and a chosen feedstock (§5.4) | **B1** contract an independent validation authority outside the founder **and** outside the partner R&D pool → **B2** design the campaign (define baseline, basis, feedstock identity + PSD, scale, operator) → **B3** run the scaled campaign → **B4** issue the third-party report stating number/baseline/basis/feedstock+PSD/scale/operator | Independent scaled validation report | CRUCIBLE + validation authority |
| **Gate C — First licensing** (P2) | Gates A **and** B both cleared (hard serial pre-condition) | **C1** target an operator whose feedstock matches the Gate B validation feedstock (§5.4) → **C2** enter the per-operator/per-feedstock qualification cycle (~2–3 yr) → **C3** cost the operator's all-in adoption burden into the terms → **C4** sign the paid pilot/reference, or the ring-fenced anchor under T3 | Signed, all-in-priced first reference | ROYALTY + MILL |

The single cross-track coupling to notice now and exploit in §5.4: **A3 (the green-substantiation limb) is downstream of B4.** The green claims cannot be scoped to "no *highly* acidic" or a defensible "~30% vs a named baseline" until Gate B has produced the baselined number; the two share one evidence file (§3.3, §4.2 R-ESG-1). So Gate A's *IP* limbs (A1, A2) finish independently of Gate B, but Gate A does not *fully* close until just after Gate B does.

### 5.3 What runs parallel and what runs serial — T2 made concrete

**Inside P1 — the only fan-out.** A1+A2 (IP counsel) and B1→B4 (validation authority) are independent workstreams with different owners, no shared input, and separate read-outs. This concurrency *is* Option 1's down-world advantage (it is what lets Gates A and B both read inside one bounded tranche rather than across a multi-year serial tie-up). The one serial coupling inside P1 is the short A3 tail after B4.

**The concrete critical-path statement T2 must test.** The candidate P1 critical path is **B1 → B2 → B3 → B4 → A3**, with A1+A2 running alongside and completing earlier. T2 is satisfied **only if a written critical-path analysis shows that chain reading inside ~12 months for the ~$0.9M envelope, with the validation campaign timeline checked against W3/W9 and not against the deck's Month-10/16 calendar** (§3.2 T2 KPI; r05 §1.5). The binding question is squarely empirical: *can an independent scaled campaign read in ≤ 12 months when the analogs put validated scaled recovery years out?* If it cannot, T2 fails honestly and the abandon action **T7** holds the pass (Option 0). T2 is not assumed satisfied; it is the plan's single binding uncertainty (r05 §1.6).

**Serial across phases — no front-running.** C0 requires Gates A **and** B: an operator will neither qualify an unvalidated process nor license IP that is not FTO-clean and exclusively held, so Gate C structurally cannot start before P1 clears. P3 requires C. There is no legitimate way to compress the **T1 → (A ∥ B) → C → P3** spine except the A‑∥‑B concurrency already named; any apparent shortcut is the deck's calendar optimism re-entering (§1.5).

### 5.4 The feed-forward interlock that prevents re-validation (the efficiency that earns the staging)

The staging only pays off if Gate B's number actually *transfers* to Gate C. W9 establishes that qualification is **per-operator and per-feedstock**: if Gate B validates on a generic or partner-convenient feedstock, the Gate C operator's feed differs, the number must be re-validated, and the per-feedstock cycle lengthens the already-dominant critical path (§5.1). The sequencing remedy is a **feed-forward from the commercial track into the validation design, executed in P1 at zero commercial commitment:**

- **Choose the Gate B validation feedstock to match a real, identified prospective Gate C operator's feed** (B2 feedstock-identity step), so the validated number is qualification-relevant rather than a lab artifact. *(Cited: W9 per-feedstock re-qualification; `research/r00-operator-qualification-cycles.md`.)*
- **Soft anchor scouting may run in parallel during P1** — non-binding interest, used to identify that feedstock and to have a counterparty ready for P2 — but **anchor contracting is serial after Gates A and B**. No capital, no commitment, no priced term enters before the gates clear. This parallelizes the *soft* commercial work without front-running the gates, and it is the only commercial activity admissible in P1.

This interlock is what converts the A‑∥‑B parallelism from a paper concurrency into a real time saving: validating on the right feedstock means the P1 number feeds straight into the P2 qualification cycle instead of triggering a second validation loop.

### 5.5 DISSENT flag — the sequencing must not smuggle the deck's optimism back in (mandatory)

DISSENT's Round 05 charge on the sequencing: ensure no step assumes a buyer or a result the evidence does not support. Four flags bind:

1. **T2 must be judged on the honest scaled-campaign duration, not on the deck calendar.** If the only way the §5.3 critical path fits inside ~12 months is to read "at scale" down to bench-plus, that is the §3.4 strike-4 failure mode (bench passes, scale never does) and **T2 fails**, it does not pass. The parallelism is real; the timeline it must fit inside is the empirically open question (W3). *(Carried to R06 as the load-bearing pre-mortem failure mode.)*
2. **The feed-forward must not become de-facto pre-commitment.** Matching the validation feedstock to a target operator and soft-scouting an anchor in P1 must identify a feedstock and a counterparty only; it must not sign, price, or promise anything before Gates A/B clear. Letting the commercial relationship front-run the gates is exactly the §6.x neutrality hazard (the advisor talking itself into the deal it is funding). *(Cross-link: STRATEGY.md dissent log; r04 neutrality hazard.)*
3. **The two binding constraints on the validation feedstock pull against each other and must hold together.** Gate B requires an operator *outside the partner R&D pool* (§2.5 independence), and §5.4 requires a feedstock *relevant to a real target operator*. Neither may be relaxed to satisfy the other: "validate on the partner lab's convenient feedstock" fails the transfer test, and "validate on a target operator's feed but let the partner labs run it" fails the independence test. Both bind simultaneously, which is a real constraint on who can be contracted in B1.
4. **The dominant duration sits on a single serial link with no parallel relief.** The master pair R-REV-8 × R-ADOPT-2 both ride the **T1 → (A∥B) → C** spine, and the Gate C qualification cycle is the longest, least compressible link in it. The plan paces and bounds that link (abandon ceiling on Gate C, §1.3); it cannot shorten it. This single-point time-to-revenue concentration is carried to R06 as the dominant First-Chicago / pre-mortem driver (§4.4 standing master-risk flag).

### 5.6 So-what

The commercial path is now sequenced as a spine with one fan-out: **T1 → (Gate A IP/FTO ∥ Gate B validation, inside P1) → Gate C first licensing (P2) → P3 growth.** The only concurrency is A ∥ B inside P1, which is precisely the concurrency T2 exists to test, so T2's abstract "parallel-readable within ~12 months" reduces to one concrete critical path (B1→B4→A3, with A1/A2 alongside) and one empirical question (can a scaled independent campaign read inside the window). The feed-forward feedstock match is the interlock that makes the parallelism pay by preventing a Gate-C re-validation loop, and the dominant duration of the whole plan is the irreducible Gate C qualification cycle, which is paced and abandonable but never accelerated. This completes the execution architecture's content: Sections 1–5 now give the phases and gates, the resourcing, the instrumentation, the risk mapping, and the production sequence. Section 6 assembles them into `synthesis/EXECUTION_PLAN.md`.

**Confidence:** High that the **T1 → (A∥B) → C → P3** topology is forced by the dependency structure (licensing needs validation + clean IP; growth needs a reference), and that the single A‑∥‑B parallelism is correctly identified as both the plan's only concurrency and the exact object of the T2 test. **Moderate** on whether the §5.3 critical path can in fact read inside ~12 months for ~$0.9M, which is the same Moderate the whole plan carries on T2 and which turns on the unretrieved C1/C4 reproducibility facts and the honest scaled-campaign duration (W3/W9). **Fragility:** the dominant duration sits on one serial, least-compressible link (the Gate C qualification cycle); the plan can pace and abandon it but cannot shorten it, so if time-to-revenue is the investment thesis's breaking point, this sequencing surfaces that rather than disguising it. The feed-forward interlock is the one place where commercial and validation work touch in P1, and its integrity depends on holding the §5.5 flag-2 and flag-3 disciplines under deal pressure.
