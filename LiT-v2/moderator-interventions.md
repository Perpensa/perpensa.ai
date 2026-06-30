# Moderator Interventions and Rulings

This file records procedural rulings, frame enforcement, and dissent handling. It is scaffolding and never appears in synthesis/.

## R00-001 — Missing Council and Playbook files (ruling: proceed)

PROMPT.md instructs loading `LiT_Deliberation_Council.md` and `LiT_Deliberation_Moderator_Playbook.md` per unit. Neither file exists in the repository (confirmed by directory scan; only `background/`, `PROMPT.md`, `STATE.md`, `ralph.ps1` present). PROMPT.md itself fully specifies the frame, the seat roster (CRUCIBLE, SPOT, CLAIM, ROYALTY, MILL, CAPITAL, WATERSHED, DISSENT core; CHOKEPOINT and PILOT phase-scoped), the round map, the unit-sizing rules, and the evidence/integrity rules. The orchestration is therefore self-contained.

Ruling: proceed using PROMPT.md as the governing authority. Seat domains are inferred from codename and the macro/geo/regulatory coverage instructions in PROMPT.md and recorded below so they are stable across iterations. If the named files later appear, reconcile against this record.

### Working seat charter (inferred, stable for the run)

- **CRUCIBLE** — core process science and technology: separation/extraction performance, technical validity of recovery and energy claims, pilot-scale risk.
- **SPOT** — market, demand, and commodity-price macro; carries geo-economics when CHOKEPOINT is silent (R00, R05+).
- **CLAIM** — resources, reserves, feedstock geology, and the realism of addressable-feedstock claims.
- **ROYALTY** — business model, licensing economics, NSR royalty structure, deal terms, monetization.
- **MILL** — operations, integration into existing plants, technical-support delivery, customer-side feasibility.
- **CAPITAL** — financing, capital structure, the raise, runway, valuation, exit.
- **WATERSHED** — regulatory, environmental, permitting, ESG, and policy; carries the regulatory angle when CHOKEPOINT is silent.
- **DISSENT** — red team; runs a parallel weakness-and-threat slate and at least one non-base-case/do-not-proceed option.
- **CHOKEPOINT** (R01-R04 only) — geopolitics and supply-chain concentration: China control, government offtake, allied positioning.
- **PILOT** (R04-R07 only) — execution and scale-up feasibility; owns the Round 05 execution plan.

## R00-002 — Frame confirmed

Company frame confirmed and recorded in `rounds/r00-frame-lock.md`. Decision owner: LiT leadership (Keenum, Friedman, management). Investor-frame divergence noted there for carry into the final frame statement only.

## R00-003 — Research register consolidated (ruling: gate set)

The eighteen raw seat requests were merged into twelve consolidated items (CR-1..CR-12) in `rounds/r00-research-register.md`, deduped against `background/LiT_Market_Research_2026.md`. P1 spine items: CR-1 (IP/FTO), CR-2 (license structures), CR-3 (valuation comps). CR-12 (competitor/licensing landscape) is discharged by the dossier and requires no run. Three sub-parts are pre-flagged NEEDS EXTERNAL RETRIEVAL (FTO legal opinion, per-site tailings characterization, export-control counsel review); Round 01 treats their underlying claims as Assumption/Unsupported pending retrieval.

Ruling: the register is the governing gate. The Moderator executes one or two web items per iteration in the stated order. Round 01 does not open until every P1 and P2 item is fulfilled in `research/` or carries an agreed NEEDS EXTERNAL RETRIEVAL flag. DISSENT signs off at the evidence-lock step.

## R00-004 — Evidence lock (ruling: base locked, Round 01 opens)

Binding sponsor stipulations (`background/LiT_Sponsor_Stipulations.md`) ingested as established facts F-1 (no clean exclusive IP; pending PCT only), F-2 (recovery uplift undefined and unvalidated; validation is the use of seed funds), F-3 (all revenue inputs aggressive and compounding), and F-3a (binding NSR correction: the royalty is fully indexed to commodity price, so the concern is full price-downside exposure, not price omission). All hedges these stipulations resolve are removed.

The research gate surfaced more carried limitations than the three pre-flagged in the register. All are consolidated into a single twenty-item ledger (U-1..U-20) in `rounds/r00-evidence-lock.md`, grouped A–F. DISSENT signed off conditionally on five binding handling rules: no claim resting on U-1..U-20 rises above Assumption in Round 01; the sublicensable-rights gap (U-1, with F-1) and the unvalidated recovery uplift (F-2) travel to Round 02 as named load-bearing weaknesses with kill-switch standing reserved; no site-specific tailings sizing until U-13/U-14 retrieved; the F-3a correction is enforced without blunting the price-exposure point; and any assumption being promoted to a spine claim is re-flagged on contact.

Ruling: evidence base LOCKED. Round 01 (Independent SWOT Positions) may open. Round 01 is a divergent batched unit — all participating slates (core seats plus CHOKEPOINT) and DISSENT's parallel weakness-and-threat slate produced in one pass, each sealed and blind to the others. PILOT does not file in Round 01.

## R02-001 — Convergence taxonomy set; Cluster 1 (IP-rights) resolved

Round 02 is sequential, one contested cluster per iteration, accreting into `rounds/r02-convergence.md`. A six-state validation taxonomy was fixed for the whole round (CONFIRMED / CONFIRMED load-bearing / MERGED / CONTESTED-SPLIT / DOWNGRADED / REJECTED) so every later cluster assigns disposition the same way. Master findings take `W-/T-/S-/O-` IDs; risk entries take `RR-` IDs.

Cluster 1 (IP-rights: CRU-W2, ROY-W3, CHO-T2, DIS-W1) was steelmanned and challenged off the locked spine (F-1; VT Agreement Art. 13.4-13.6, 13.9(a); `r00-ip-fto.md`). Ruling: the weakness is CONFIRMED on existence and CONTESTED-SPLIT on severity; DISSENT's DIS-W1 kill-switch standing is UPHELD but scoped conditional on U-1 (an executed VTIP exclusive, sublicensable, field-of-use license that survives MRC's prior minerals rights). Outputs: master finding W-RIGHTS (load-bearing); CRU-W2 and ROY-W3 MERGED as its ownership and grant-capacity legs; CHO-T2 kept distinct as threat T-EXPORT for its own cluster; CAP-W5 routed to the model-integrity cluster; risk register opened RR-1 (no executed exclusive license), RR-2 (MRC field foreclosure / FTO), RR-3 (VTIP royalty layered on LiT economics). The two load-bearing items (W-RIGHTS rights gap, F-2 uplift) are treated as independent single points of failure and are not netted against each other.

## R04-001 — Scoring criteria: eighth criterion added; gate-vs-weight dual treatment fixed

Round 04 opened with the first sequential unit: weight and record the scoring criteria (`rounds/r04-stress-test.md`). The playbook (Section 4, Round 04) fixes seven criteria. Two rulings:

1. **Eighth criterion added — execution feasibility.** PILOT enters at R04 specifically to contribute the execution-feasibility view, and W-TEAM (High, confirmed) has no clean home in the seven, because process-science readiness (technical feasibility) and organizational delivery capacity are different dimensions that must not net into one score. Ruling: add C7 Execution feasibility as an eighth criterion at weight 8. This augments, does not replace, the playbook set; if the named playbook is later treated as binding-exact, reconcile by folding C7 back into a documented sub-score, but the evidence (PILOT scope + W-TEAM materiality) supports a distinct axis.

2. **Dual treatment of C1/C2 (gate vs weight) fixed, CONTESTED-SPLIT preserved.** The two kill-switch preconditions are scored both as weighted criteria (how well an option contains/sequences the risk) and enforced as binary gates (W-UPLIFT, W-RIGHTS) on every proceed option. A high weighted composite does not authorize proceeding; it ranks design quality conditional on the gates being clearable. DISSENT's position that C1/C2 should be pure pass/fail and not weighted is preserved as a CONTESTED-SPLIT and is carried as a named sensitivity case (gates fail → proceed options drop, OPT-1/OPT-4 dominate) into Unit 3 and into the STRATEGY.md dissent log. PILOT's caution that C7 at 8 may understate execution risk for high-scope options is handled by sensitivity, not by re-weighting.

Weights recorded (sum 100): C2 IP 18, C1 Technical 16, C3 Risk-adjusted return 16, C4 Adoption 14, C5 Capital efficiency 12, C6 Time-to-revenue 10, C7 Execution feasibility 8, C8 Policy durability 6. Scale 1-5; composite = weighted average on the 1-5 scale. Overlays OVL-A/OVL-B scored as signed modifiers, not standalone rows.
