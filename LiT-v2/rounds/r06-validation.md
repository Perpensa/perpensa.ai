# Round 06, Unit 2: Full validation pass across the three synthesis documents (sequential)

Frame: COMPANY (decision owner = LiT leadership). This unit validates synthesis/SWOT.md, synthesis/STRATEGY.md, and synthesis/EXECUTION_PLAN.md against four tests: (1) every conclusion is traceable to the locked evidence base and prior round work; (2) no Unsupported claim is admitted; (3) the pre-mortem feedbacks (rounds/r06-premortem.md) are represented wherever they change a stated control; (4) no scaffolding, internal codes, seat names, or em-dashes have leaked. Where a test failed, the defect was corrected in place; this record states what was checked, what was found, and what was fixed.

---

## Test 4 first (mechanical): scaffolding, codes, and em-dashes

**Codes / seat names / round labels / process language.** Swept all three documents for OPT-/RR-/CT-/OC-/OVL-/DIS- codes, gate codes (G0/G1/G2), seat codenames, "Round NN", "Moderator", "playbook", "steelman", "CONTESTED-SPLIT", and similar machinery. Result: none present in any synthesis document, before or after the edits below. PASS.

**Em-dashes.** FAIL on entry, corrected. SWOT.md carried em-dashes in the title and in eight body locations (the headline threats list, the deal-structures aside, the policy-magnitudes aside, the university-royalty note, the Weakness-3 heading, the timing-error aside, the environmental-claims aside, the exit-narrative aside, and the "how the picture fits together" curable-weaknesses clause). STRATEGY.md and EXECUTION_PLAN.md were already clean (written later under the no-em-dash rule). All nine SWOT.md instances were rewritten using colons, commas, or parentheses without changing meaning. Post-edit sweep of synthesis/ returns zero em-dashes. PASS after fix.

---

## Test 1: traceability

Every headline conclusion in the three documents traces to prior round work and the locked evidence base:

- SWOT four-quadrant findings → rounds/r02-swot-matrix.md and rounds/r02-convergence.md (4 S / 7+1 W / 5 T / 4 O), each cross-linked to the risk register RR-1..RR-26.
- The two load-bearing weaknesses (rights, uplift) → sponsor stipulations F-1, F-2 (background/LiT_Sponsor_Stipulations.md), carried as the CONTESTED-SPLIT.
- The selected direction (gated, narrow-first, asset-light licensing; clear gates, prove one site, widen on proof) → rounds/r04-stress-test.md Unit 4 and the scored matrix (Unit 3).
- The phased architecture, gates, KPIs, capital tranching, risk ownership, and dependency order → rounds/r05-execution.md Units 1-5, assembled into synthesis/EXECUTION_PLAN.md (Unit 6).
- The break-even-uplift formula and the coverage ratio → rounds/r05-execution.md Unit 3; rate band and pilot-duration anchors → research/r00-valuation-comps.md, research/r00-license-structures.md, research/r00-pilot-benchmarks.md.

No conclusion was found that lacks a chain back to a recorded finding. PASS.

## Test 2: no Unsupported claim admitted

Checked every quantified or factual claim for an admitted-Unsupported status:

- Comparable licensor value (well over $200M), royalty band (low single digits to ~5% of a recovered stream), and the deal-structure archetype are Cited (valuation/license research).
- The financing figures ($2.0M seed single-tranche-no-reserve, ~$235K IP line, ~$700K pilot line, $52K study spent) are Cited to background financials.
- The per-site support figure (0.2-0.5 FTE/site steady-state, one engineer covering ~2-5 sites) is presented explicitly as a conservative planning band to be replaced by the first-site measured figure, not as a fact. The continuous-pilot run-time, the company's burn, and the target site's tonnage/grade are carried in "What remains open" as named inputs the company must supply, not as invented numbers.
- Policy-driven revenue is held no higher than Assumption in all three documents; the category-level tailwind is Cited, its transmission to LiT's royalty line is Assumption. This matches the O-POLICY downgrade taken in Round 02.

No claim rises above its evidence in any deliverable. PASS.

## Test 3: pre-mortem feedbacks represented where they change a stated control

Each of the nine pre-mortem feedbacks was checked against the documents. Six required a control change that was not yet stated; all six were folded in. Three were already represented or required only sharpening. Detail:

| Pre-mortem feedback | Changes a control? | Status on entry | Action taken |
|---|---|---|---|
| CRUCIBLE: uplift reading must span the feed's mineralogical/grade variability, meet threshold on the harder end, certify variability covered | Yes (foundation-gate uplift reading) | Not represented (reading required continuity, not coverage) | Added to the uplift reading in EXECUTION_PLAN and to Weakness 2 in SWOT |
| SPOT: deal must clear coverage at a conservative downside price before signing; seek a rate floor | Yes (pricing / pre-signing test) | Partial (trough modeling and floor exploration mentioned; no pre-signing downside test) | Added downside-price-before-signing test and rate-floor language to EXECUTION_PLAN pricing and to STRATEGY Stage 2 |
| CLAIM: characterization must yield a distribution; price off a conservative percentile; run break-even/coverage on the conservative grade | Yes (characterization / pricing prerequisite) | Partial ("characterized" undefined; pricing could anchor to headline assay) | Added distribution-and-conservative-percentile discipline to the EXECUTION_PLAN characterization prerequisite |
| ROYALTY: benchmarked band in hand before signing (not only before modeling); first rate contractually bounded as a pilot rate by time/volume with step-up or MFN | Yes (pricing control) | Partial ("pilot reference" stated; no contractual bound, benchmarking was housekeeping) | Added contractual-bound + benchmark-before-signing to EXECUTION_PLAN pricing and STRATEGY Stage 2 |
| MILL: rank a small backup host-site set; set a deal-by date inside runway triggering re-selection or the services bridge | Yes (Phase-2 pipeline control) | Not represented (single-counterparty, no fallback trigger) | Added ranked backup set + deal-by date to EXECUTION_PLAN site selection |
| CAPITAL: reserve breach = kill trigger, not a financeable overrun; soft-circle the second tranche before the foundation gate | Yes (capital control) | Partial (reserve ring-fenced; breach not a trigger; tranche not pre-circled) | Added reserve-breach-as-kill and pre-gate soft-circle to EXECUTION_PLAN capital section |
| WATERSHED: host-site and per-site checks must test statutory third-party/successor reach, not only contractual allocation; policy revenue stays Assumption | Yes (liability checkpoint control) | Partial (checkpoints confirmed contractual allocation only; policy-as-Assumption already held) | Added statutory-reach counsel opinion to the host-site checkpoint and the per-site deal-structure check in EXECUTION_PLAN |
| DISSENT: rights read at step zero before Tranche A; externalize kill authority to a party with no incentive to continue | Yes (sequencing + governance control) | Partial (model restated at step zero; FTO at month 4-6; kill authority not externalized) | Added a step-zero preliminary rights/FTO read to the first prerequisite, and externalized kill authority to the kill-date discipline in EXECUTION_PLAN; reflected the ratchet defense in STRATEGY's alternative-view |
| PILOT: each hard prerequisite a documented, externally witnessed artifact gating spend; scope pilot run-time before fixing the kill date | Yes (enforcement) | Partial (the two big readings externally certified; run-time named as open input) | Added witnessed-artifact enforcement to the order-of-work intro and run-time-scoped-before-kill-date to the kill-date discipline in EXECUTION_PLAN |

All six unrepresented control changes are now stated in the document that owns the control (EXECUTION_PLAN for the controls, with altitude-appropriate echoes in STRATEGY and SWOT). No feedback required abandoning the architecture; each tightened a gate, added a pre-signing contingency, moved a control earlier, or hardened enforcement, exactly as the pre-mortem cross-cutting reading anticipated. PASS after fixes.

---

## Integrity holds

No gate was treated as cleared. No weakness was softened: every added control was framed as a tightening, a contingency, or an enforcement, and the structural exposures (commodity price, feedstock heterogeneity, environmental liability) remain labeled contained-not-cured. The two kill-switches remain the dominant failure surface. The CONTESTED-SPLIT (D-1) is preserved; its representation as "an alternative view holds" is confirmed in this pass and is the explicit subject of the next unit. No claim was elevated above its evidence by any edit.

## Files touched

- synthesis/SWOT.md (nine em-dash repairs; uplift-variability sharpening in Weakness 2)
- synthesis/STRATEGY.md (bounded pilot rate + downside test in Stage 2; ratchet defense / externalized authority in the alternative-view)
- synthesis/EXECUTION_PLAN.md (uplift reading; host-site checkpoint; site selection backup pipeline; deal-structure statutory-reach check; pricing discipline; characterization prerequisite; capital section reserve-breach + soft-circle; kill-date run-time + externalized authority; order-of-work witnessed artifacts + step-zero rights read)

## Carry forward

- Unit 3 (dissent reconciliation): confirm D-1 and the kill-switch CONTESTED-SPLIT read as "an alternative view holds" in each of the three documents, and that the newly added externalized-authority and step-zero-rights controls do not overwrite the preserved split.
- Unit 4 (confidence + fragility): confirm every conclusion across all three documents carries a confidence band and a fragility note, including the conclusions whose controls were just tightened here.
