# Round 07 — Assembly, Traceability, Frame, and Sign-off

**Unit type:** Sequential (Round 07 synthesis). This is the cross-document assembly and verification unit that precedes the Executive Summary unit.
**Covers exit-gate items:** line 63 (three documents assembled in pyramid form), line 65 (traceability check passed; untraceable claims cut), line 66 (frame statement included), line 67 (each perspective signed off on its domain sections, dissents included).
**Inputs:** `synthesis/SWOT.md` (v1, R06-validated), `synthesis/STRATEGY.md` (v1.1, R06-validated), `synthesis/EXECUTION_PLAN.md` (v1.1, R06-validated), and the Round 00-06 round and research artifacts they cite.
**Not in this unit:** `synthesis/EXECUTIVE_SUMMARY.md` (line 64) is the next sequential unit.

---

## 1. Pyramid-form assembly check (exit-gate line 63)

The McKinsey pyramid rule is answer first, then supporting arguments, then evidence. Each of the three documents was checked against that order. Result: all three already conform; no restructuring required.

| Document | Answer-first opening | Support layer | Evidence layer | Verdict |
|---|---|---|---|---|
| **SWOT.md** | "Executive answer (lead with the conclusion)" §, stating the three headline assets invert to gating Weaknesses | The 2x2 MECE matrix, prioritized within quadrant | Per-item source column + consolidated risk register + research-file citations | **Pyramid-conformant** |
| **STRATEGY.md** | §1 "Recommended direction (up front)" — decline-and-convert, one-line statement | §2 option set, §3 scored matrix, §4 rationale incl. 0-vs-1 ruling | §3 weights, cell evidence tags, `rounds/r04-*` and `research/r00-*` pointers | **Pyramid-conformant** |
| **EXECUTION_PLAN.md** | §1 "The plan in one statement" — capital-staging architecture, event-driven gates | §2 phases/gates, §3 resourcing, §4 KPIs, §5 risk map, §6 sequencing | per-row artifacts, owning seats, register IDs, research-file pointers | **Pyramid-conformant** |

The three documents are also assembled as a *set* in pyramid relation to each other: SWOT (diagnosis) → STRATEGY (decision) → EXECUTION_PLAN (deployment). The Executive Summary (next unit) sits above all three as the apex that threads SWOT into Strategy into Execution.

**A one-line Round 07 assembly stamp is appended to the foot of each of the three documents** recording pyramid-form confirmation, the traceability verdict below, frame-statement presence, and sign-off, with a pointer to this artifact. No body content of any document is changed in this unit; assembly is confirmation, not rewriting.

---

## 2. Traceability check (exit-gate line 65)

**Standard applied (Playbook §4 Round 07.3):** every claim must link to the locked evidence base; untraceable claims are cut. This is distinct from the Round 06 support re-check: R06 asked "does this claim still have support?"; Round 07 asks "does every claim carry a *retrievable link* to where that support lives?" A claim can be supported yet under-cited; this pass hunts the under-cited.

The locked evidence base for traceability purposes is: `background/` (prospectus, business plan, financial projections, pitch deck), `research/LiT_Market_Research_2026.md`, the thirteen `research/r00-*.md` commissioned-research files (W1-W13), the `research/r00-company-queue-disposition.md` lock, and the Round 00-06 `rounds/*.md` reasoning artifacts. Moderator scoring judgments are admissible when tagged Assumption with a confidence band (Playbook §1 standing rule 3); company-conduct facts not on the record are admissible only when tagged `NEEDS EXTERNAL RETRIEVAL` (C1-C4).

### 2.1 Per-document traceability result

**SWOT.md — PASS, no cut.** Every matrix item carries an explicit Source column resolving to a background line range, a research file, or a named seat position from `rounds/r01`/`rounds/r02`. Every Weakness and Threat carries a risk-register ID, and every register row carries cross-links and (where applicable) a C-pointer. The three contingent option-value notes are tagged Demoted/Low and traced to CRUCIBLE-S2/S3 and MILL-O1. The Neutrality-hazard process note traces to DISSENT-T4 and the Frame Lock. No claim was found that lacks a retrievable link.

**STRATEGY.md — PASS, no cut.** §1-§4 conclusions each carry either a Cited research-file pointer (R-IP-1 → `r00-ip-patent-landscape.md`; R-TECH-1 → `r00-flotation-scaleup.md`; R-REV-1/7 → `r00-licensing-norms.md`/`r00-exit-multiples.md`) or an Assumption tag with a confidence band (the 1-5 scores, explicitly "moderator judgments, Assumption-tagged" in the header). The scored matrix is traced to `rounds/r04-matrix.md`; the weights to `rounds/r04-criteria-weighting.md`; the option set to `rounds/r03-options.md`. The two unretrieved dependencies behind the 0-vs-1 ruling (company conduct on gating; VTIP option terms) are correctly tagged `NEEDS EXTERNAL RETRIEVAL` (C1/C3/C4), not asserted. The G0/T10 governance additions trace to `rounds/r06-premortem.md` §B.1. No untraceable claim.

**EXECUTION_PLAN.md — PASS, no cut.** Every gate row in §4 names a proof artifact and an accepting party; every risk row in §5.1 names an owning seat and a testing gate and resolves to a register ID carried from SWOT.md. The deck-reconciliation tables in §3 trace to the background financials (use-of-funds buckets, $2M/8-tranche, $300K/yr 75/25 R&D split, $13M pre-money). The five Round 06 plan changes each carry a `§B.x` pre-mortem pointer. The duration claims (Month 10/16 = campaign start; ~2-3 yr qualification) trace to W3/W9 (`r00-flotation-scaleup.md`, `r00-operator-qualification-cycles.md`). No untraceable claim.

### 2.2 Items deliberately carried as non-cited (verified legitimate, not cut)

Three classes of statement are intentionally *not* backed by a retrieved fact, and each is correctly tagged so it is not an untraceable claim:

1. **`NEEDS EXTERNAL RETRIEVAL` company-queue facts (C1 validation data, C3 IP/license/royalty terms, C4 Dhanbad agreement).** These are flagged, not asserted as known. The documents' structure (the gates, the conditional pass, the burden-on-the-company posture) is built *around* their absence. Legitimate; retained as flags.
2. **Moderator scoring judgments (the 1-5 matrix, the severity bands).** Tagged Assumption with a confidence band, anchored to the register and research files. Admissible under standing rule 3. Retained.
3. **The neutrality/governance finding (DISSENT-T4 → G0).** A process control, not a market claim; it cannot be retrieved by any tool and is not presented as evidence-derived. Traced to the Frame Lock and the R06 pre-mortem. Retained as a governance mechanism.

**No claim was cut**, because none was found that both (a) asserts a fact about the world and (b) lacks a link to the evidence base or a proper Assumption / `NEEDS EXTERNAL RETRIEVAL` tag. The documents were authored under evidence discipline from Round 00, so the traceability pass confirms rather than repairs.

### 2.3 One cross-document consistency point verified

The register count is consistent across all three documents at **8 High / 12 Elevated / 8 Moderate** (SWOT register summary, R06-corrected; STRATEGY §8 confirms it does not propagate a tally; EXECUTION_PLAN §5 and §8 state "8 High and 12 Elevated"). The earlier "7 High / 11 Elevated / 9 Moderate" arithmetic error was corrected in the R06 SWOT validation pass and does not survive anywhere. No further numbering drift (G0, T1-T10, Gates A/B/C, R-* IDs) was found between documents.

**Traceability verdict: PASS across all three documents. Zero claims cut.**

---

## 3. Frame statement (exit-gate line 66)

**Standard (Playbook §4 Round 07.4):** state plainly which lens the deliverables serve and what would change under the other lenses.

Each document carries its frame in its own header/opening, and all three agree:

- **SWOT.md** carries the fullest standing statement (its "Frame statement" §): ADVISOR lens for a prospective capital provider; the deal terms, royalty base, licensing structure, and tranche logic are *objects of assessment, not fixed inputs*; and the explicit cross-lens note — under a pure **Company** lens the gating Weaknesses become a work-list and "do not proceed" loses force; under a pure **Investor** lens the analysis terminates at a diligence verdict without the downstream execution view; **neither shift is supported by the locked evidence, which shows no commitment to invest.**
- **STRATEGY.md** header: ADVISOR lens, prospective capital provider deciding *whether and on what terms* to deploy; yardstick is risk-adjusted return under a downside-aware lens, not the founder's growth narrative.
- **EXECUTION_PLAN.md** header: ADVISOR lens; this is *the advisor's own deployment architecture* for the convert-to path, explicitly **not** LiT's five-year build plan.

**Verdict: frame statement present and mutually consistent across all three documents.** The consolidated cross-lens frame statement (advisor lens served; what changes under company and investor lenses) is carried by SWOT.md now and will lead the Executive Summary in the next unit as the single plain-language statement required to sit at the apex of the set.

---

## 4. Council sign-off (exit-gate line 67)

**Standard (Playbook §4 Round 07.5):** each perspective confirms its domain sections are fairly represented, **including dissents**. Sign-off is recorded per seat against the sections that seat owns across the three documents, with the dissents that seat holds. Core seats sign all rounds; CHOKEPOINT (R01-04) and PILOT (R04-07) sign only their in-scope sections. A sign-off is not a vote to agree; it is confirmation that the seat's position and any dissent it holds are represented at full strength and not softened.

| Seat | Domain sections signed | Dissents / flags confirmed represented | Sign-off |
|---|---|---|---|
| **CRUCIBLE** (technical / metallurgy) | SWOT S2, W2/W7/W8 + R-TECH register; STRATEGY §4.1 validation gate + Gate B; EXECUTION §4 Gate B / Gate B-pre KPIs, §4.1 non-gameable definitions, §6.1 Gate B track | "Bench passes, scale never does" failure mode carried at full strength (EXEC §4.2 strike-4, §7); Gate B-pre protocol-lock; R-TECH-3 incremental-moat residual contained-not-removed | **Confirmed — fairly represented** |
| **SPOT** (macro / price / geo carry) | SWOT O2/O8, O4 (macro limb), T3/T4/T13/T14 + R-REV-3/5, R-GEO-3 carry; STRATEGY R-REV-3 banded model; EXECUTION §5 R-REV-3 dual-world instrument | Price risk irreducible-only-bounded; D6 policy-overlay guardrail (with DISSENT); China strategic-suppression increment R-GEO-3 | **Confirmed — fairly represented** |
| **CLAIM** (IP) | SWOT W1/W8/W12, T8/T9 + R-IP register; STRATEGY §4.1 IP gate + Gate A; EXECUTION Gate A + moat-durability limb, §6.1 Gate A track | Gate (a) IP not cleared (D5, standing-binding pending C3); VTIP option-window-lapse risk (R-IP-2); MRC FTO hazard (R-IP-3) | **Confirmed — fairly represented** |
| **ROYALTY** (deal structure / royalty basis) | SWOT S1/S3, W5/W6/W13, O1/O6, T5/T6 + R-REV-1/2/6/9; STRATEGY narrow-base repaper / Option 1; EXECUTION T1 floors, §6.1 Gate C track | D3 speed-first Anchor escalation (with MILL) preserved as T3; model-choice contest resolved to Option 1 not buried; verifiable-narrow-base redirect | **Confirmed — fairly represented** |
| **MILL** (adoption / operators) | SWOT O1/O3, W10, T1/T2/T6/T7 + R-ADOPT register; STRATEGY adoption scoring (C5); EXECUTION Gate C all-in-cost KPI + interest-channel fail-reading | D3 (with ROYALTY); R-ADOPT-1 concentration + R-ADOPT-5 occupied-channel contained-not-removed; self-substitution signal made a Gate C fail-reading | **Confirmed — fairly represented** |
| **CAPITAL** (capital structure / valuation / return) | SWOT S1, W3/W4/W14 + R-REV-7/8/10; STRATEGY §3 matrix C6, §4.3 0-vs-1 ruling, conditional pass; EXECUTION §3 capital draw, T1 floors, P3 growth round | D2 proactive-offer (satisfied: offer is the instrument of retrieval); master-pair R-REV-8 single-mitigation concentration; entry-repricing committed-in-term not posture | **Confirmed — fairly represented** |
| **WATERSHED** (ESG / regulatory / liability) | SWOT W9, O5/O7/O9, T10/T11(reg limb) + R-ESG register; STRATEGY policy-overlay bar + Gate A substantiation; EXECUTION P0 green-claim quarantine, §5 R-ESG mapping | D6 policy-launder guardrail; green-claims-fail-substantiation (R-ESG-1) + 10b-5 surface; CERCLA model-contingent re-rate (R-ESG-2) | **Confirmed — fairly represented** |
| **DISSENT** (adverse brief) | All three documents: SWOT parallel W/T slate + Neutrality-hazard note; STRATEGY §6 dissent log D1-D6 + change-triggers; EXECUTION every §2-6 DISSENT flag + §5.3 completeness review | D1 (binding, made structural by G0/T10), D2, D3, D4, D5, D6 all live; DISSENT-T4 neutrality hazard → G0; the four contained-not-removed residuals and master-pair carried unclosed | **Confirmed — no false consensus recorded** |
| **CHOKEPOINT** (geopolitics; R01-04, phase-out R05+) | SWOT O4 (China/allied limb), O5 (offtake limb), T11/T12 + R-GEO-1/2; R03 policy-anchored option; R04 scoring of policy durability (C7) | Allied-positioning door-opener not adoption-driver; export-control / IP-custody exposure (R-GEO-2); policy time-bounded-accelerant-not-underwriter (R-GEO-1). Confirms SPOT (macro/geo) and WATERSHED (regulatory) faithfully carry its points into R05-07 where it is silent. | **Confirmed — in-scope items fairly carried forward** |
| **PILOT** (execution / scale-up; R04-07) | STRATEGY exec-feasibility scoring (C1/C3/C4 on Options 5/6); EXECUTION §3 team build/sequencing, §6 critical path, T2 standard; R06 pre-mortem failure mode | T2 binding-uncertainty raised to a named outside-pool vendor quote; independent-validation-line-unbuildable-in-envelope failure mode; CTO-pulled-forward / validating-principal-arrives-after-the-gate conflict | **Confirmed — fairly represented** |

**Sign-off result:** all ten seats confirm their domain sections are fairly represented at full strength, with every dissent live and none softened to protect a narrative. No seat withholds sign-off. No consensus is recorded that does not exist: the council converges on a **conditional pass with a designated, gated convert-to path**, with D1-D6, DISSENT-T4, the four contained-not-removed residuals, and the master-pair concentration all preserved as live conditions rather than retired.

---

## 5. Exit-gate disposition for this unit

- **Line 63 — Three documents assembled in pyramid form:** SATISFIED (§1). All three answer-first; set assembled SWOT → STRATEGY → EXECUTION; assembly stamp appended to each.
- **Line 65 — Traceability check passed; untraceable claims cut:** SATISFIED (§2). PASS across all three; zero claims cut; one cross-document count consistency verified.
- **Line 66 — Frame statement included:** SATISFIED (§3). Present and mutually consistent in all three; consolidated cross-lens statement to lead the Executive Summary.
- **Line 67 — Each perspective signed off on its domain sections, dissents included:** SATISFIED (§4). All ten seats confirmed; dissents live; no false consensus.

**Remaining Round 07 unit:** `synthesis/EXECUTIVE_SUMMARY.md` (line 64) — the single executive summary threading SWOT into Strategy into Execution, with the headline recommendation, the top three risks, and the change-triggers. On its completion and the existence of all four `synthesis/` files, Round 07 closes and the deliberation is complete.
