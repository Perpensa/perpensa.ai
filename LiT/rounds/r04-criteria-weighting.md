# Round 04 — Option Stress-Test & Trade-off — Step 1: Criteria Weighting

**Round:** 04 Option Stress-Test & Trade-off
**Unit (sequential step 1 of N):** Define, weight, and record the seven scoring criteria and the scoring scale, before any option is scored.
**Lead:** Moderator runs the matrix. **PILOT** is now phase-active (R04–R07) and its execution-feasibility lens enters scoring; its view on the weighting is recorded below. **DISSENT** reviews the weighting for proceed-bias.
**Lens:** ADVISOR, prospective capital provider (locked in `rounds/r00-frame-lock.md`). The weighting serves the advisor's question: *should this capital provider deploy, and on what structure, given that the downside is a real and live outcome.*
**Inputs:** `rounds/r03-options.md` (7 options, 0–7), `synthesis/SWOT.md` (risk register), Round 00 research base.

> This step produces no scores. It fixes the measuring instrument so the later scoring, attack, and matrix steps are consistent and cannot be re-weighted after the numbers are visible. Recording the weights *before* scoring is the Playbook R04 requirement ("Weight the criteria explicitly and record the weighting") and the anti-anchoring control: weights chosen after seeing scores would let a preferred option set its own yardstick.

---

## 1. The seven criteria, defined

Each criterion is defined narrowly so the seven are as close to mutually exclusive as a multi-objective decision allows. The one deliberate overlap (risk-adjusted return aggregates the others) is handled in Section 4.

| # | Criterion | What it measures (definition for scoring) | Primary SWOT / risk-register anchor |
|---|-----------|--------------------------------------------|-------------------------------------|
| C1 | **Technical feasibility** | Probability the core recovery process performs at a commercially relevant, independently reproducible level on the option's chosen feedstock(s), at the scale the option requires. NOT whether it is patented (C2) and NOT how fast (C4). | R-TECH-1 (validation gate, High), R-TECH-2 (scale-up), R-TECH-3 (thin moat), R-TECH-4 (Dhanbad capability) |
| C2 | **IP defensibility** | Strength and controllability of the right to license/operate: cleared FTO, an executed exclusive (not an option), and a claim or know-how position a competitor cannot route around. | R-IP-1 (gate (a), High, NOT cleared), R-IP-2, R-IP-3, R-IP-4 |
| C3 | **Capital efficiency** | Return per dollar at risk and, critically for the advisor, the *abandonability* of the bet: can capital be staged behind evidence gates so the downside is a small validation loss rather than a committed growth round. | R-REV-6 (runway/bridge), R-REV-10 (entry priced for pre-seed risk), W14, S1 (tranche architecture) |
| C4 | **Time-to-revenue** | Realistic elapsed time to first contracted revenue, paced by the buyer's qualification cycle, not by the deck's calendar. | R-ADOPT-2 (multi-year per-operator/per-feedstock qualification, High — master timing risk), W6, R-REV-5 |
| C5 | **Adoption probability** | Likelihood a real buyer signs and deploys at all, given customer concentration, self-substitution by majors, an occupied channel, and resistance to the proposed commercial instrument. | R-ADOPT-1 (concentration/self-substitution, High), R-ADOPT-3 (all-in cost), R-ADOPT-4 (whole-mine-NSR resistance), R-ADOPT-5 (incumbent licensor) |
| C6 | **Risk-adjusted return** | The advisor's bottom line: probability-weighted return across an explicit up/base/down scenario band (First-Chicago method), net of the gating risks. Integrative — see Section 4 for the double-count control. | R-REV-3 (price band), R-REV-7 (exit multiples), R-REV-8 (multiplicative stacking, High), the joint First-Chicago downside (R-REV-8 × R-ADOPT-2) |
| C7 | **Policy durability** | The degree to which the option's thesis depends on policy capital, offtake, or price floors that are time-bounded and could lapse, versus standing on economics that survive a policy reversal. Higher score = LESS dependence on fragile policy. | R-GEO-1 (policy durability, Moderate), O5, R-REV-3 (downside floor) |

---

## 2. The scoring scale (fixed now, applied in step 2)

A single 1–5 ordinal scale applies to every criterion. Anchored so the same number means the same strength of evidence across criteria, and so a high score always means "good for the advisor."

| Score | Meaning | Evidence posture |
|-------|---------|------------------|
| 5 | Strong / largely retired | Cited or near-cited; the criterion is an advantage of this option. |
| 4 | Favorable | Supported with minor open questions. |
| 3 | Neutral / mixed | Genuinely two-sided or moderate-confidence Assumption. |
| 2 | Unfavorable | A material weakness for this option; Elevated risk anchor. |
| 1 | Gating defect | A High-confidence gating risk that, unmitigated, blocks the option. |

**Conventions carried into step 2:**
- Half-points are not used; force a 1–5 choice to keep the matrix legible, and capture nuance in the per-cell rationale and the sensitivities, not in the score.
- Every cell carries a one-line evidence tag (Cited / Assumption+band / Unsupported). Unsupported reasoning cannot set a score (Playbook evidence discipline; Validation Engine checks each score's basis).
- **Option 0 (Pass)** is scored on the same seven criteria as the *opportunity-cost baseline*: it scores high on capital efficiency, time-to-revenue (capital preserved, redeployable) and risk-adjusted return-of-capital, and is defined as a 3 (neutral) on the criteria that only bind if one proceeds (C1/C2/C5). This keeps the null option a real competitor rather than a rhetorical floor (DISSENT neutrality control).

---

## 3. The weighting (recorded; locked for the round)

Weights sum to 100. Rationale is grounded in the R02 finding that three risks are *gating* (R-IP-1, R-TECH-1, R-ADOPT-2) and that the revenue model's master defect is multiplicative downside stacking (R-REV-8). Under the advisor lens the dominant question is not "how large is the upside" but "how likely and how survivable is the downside," so the integrative and the gating-discriminator criteria carry the most weight, and the bounded accelerant carries the least.

| # | Criterion | Weight | Rationale for the weight (advisor lens) |
|---|-----------|:------:|------------------------------------------|
| C6 | **Risk-adjusted return** | **22%** | The advisor's terminal question. It is the only criterion that prices the joint First-Chicago downside (R-REV-8 × R-ADOPT-2), the single most fragile thing in the model. Highest weight, but capped below one-third so the matrix does not collapse into a single integrative number that hides *why* an option scores as it does. |
| C5 | **Adoption probability** | **18%** | Demand-side gating risk (R-ADOPT-1, High). If no real buyer signs, every other strength is stranded. The R02 convergence named adoption the binding constraint alongside IP and validation. |
| C2 | **IP defensibility** | **15%** | Gate (a) is *not cleared* (R-IP-1, High). A license-to-others business with no controlled exclusive right is unsellable; this is a precondition, weighted as a primary discriminator. |
| C4 | **Time-to-revenue** | **14%** | The qualification-cycle master risk (R-ADOPT-2, High) is a *timing* risk distinct from whether adoption happens at all. For a staged capital provider, when revenue arrives drives the bridge/runway math (R-REV-6) and the IRR more than the headline multiple does. |
| C3 | **Capital efficiency** | **13%** | The advisor's downside-control lever: an option that can be staged into small abandonable bets is worth more at equal expected value than one demanding a committed growth round. Weighted high enough to reward the restructure-first architecture. |
| C1 | **Technical feasibility** | **12%** | The validation gate (R-TECH-1, High) is real, but it is partly *upstream* of C2/C4/C5 (a failed number sinks adoption, IP value, and timeline anyway), so weighting it as heavily as those would double-count. Sized to register the gate without triple-counting it. |
| C7 | **Policy durability** | **6%** | Policy capital is a Cited but *bounded* accelerant (R-GEO-1, Moderate), explicitly "not a structural base" (R02 Cluster 5 ruling). It discriminates Option 7 and the downside-floor question, so it is non-zero, but the lowest weight so no option can be carried by a subsidy that may lapse. |
| | **Total** | **100%** | |

**Weight clusters (the shape of the instrument):** the three gating-discriminator criteria (C5+C2+C4 = 47%) plus the integrative criterion (C6 = 22%) carry 69% of the weight. Feasibility and capital efficiency (C1+C3 = 25%) are the build-quality criteria. Policy durability (6%) is the tie-breaker/overlay criterion. This is deliberately a *downside-and-gates* instrument, consistent with the advisor lens and the SWOT neutrality-hazard note.

---

## 4. Double-count control (C6 vs the component criteria)

C6 (risk-adjusted return) necessarily reflects C1–C5 and C7: a probability-weighted return *embeds* feasibility, adoption, and timing. Left unmanaged this would weight those drivers twice. Three controls:

1. **C6 is scored as a scenario-band outcome, not a re-sum.** It is the First-Chicago expected value across explicit up/base/down worlds (R-REV-3 price band, R-REV-7 exit recentred to 2–4x rev per W6, R-ADOPT-2 timing), capturing the *multiplicative interaction* (R-REV-8) and the *value-capture/liability trade-off* (DISSENT-OPT-3) that the component criteria, scored independently, miss. The interaction term is what C6 adds beyond the parts.
2. **C6's weight is capped at 22%**, below the 25% the component criteria might argue for, precisely to discount the partial overlap.
3. **Probe is tasked (step 2)** to flag any option whose C6 score is inconsistent with its C1–C5 profile (e.g., a high C6 sitting on a 1/1 feasibility/adoption base), forcing the contradiction onto the record rather than letting the integrative score launder a gating defect.

C1's partial upstream overlap with C2/C4/C5 is handled by the same logic: C1 is weighted at 12% (below the gating criteria it feeds) to avoid triple-counting a failed recovery number.

---

## 5. PILOT — execution-feasibility view on the weighting (first R04 contribution)

> PILOT (Seat 9, Execution & Scale-Up Operator) is phase-active R04–R07. Its mandate is to keep the scoring honest about *what it takes to build*, not just what it would be worth. This is a view on the *weighting*, not yet on the options.

- **Endorses the high weight on C4 (time-to-revenue) and supports raising the realism bar inside C1.** From the build seat, the Month 10/16 milestones in the deck are *campaign-start* dates, not validated-number dates (r00-flotation-scaleup.md, r00-operator-qualification-cycles.md). A scale-up program runs bench → instrumented pilot → per-operator/per-feedstock qualification, each a gate with its own failure probability. PILOT asks that C1 be scored on *scaled, reproduced* recovery, not bench recovery, and that C4 be scored on the *qualification-cycle-entry-to-revenue* span, not signature date. The weights as set (C4 14%, C1 12%) support this; the discipline must land in the per-cell scoring.
- **Flags one weighting tension for the record:** capital efficiency (C3, 13%) and technical feasibility (C1, 12%) together are 25%, but for the capital-intensive options (5 hybrid-TaaS, 6 BOO) the *execution* burden — equipment, field-service org, integration headcount, the two-principals-to-seven-person build — is a first-order driver of both. PILOT does not ask to re-weight; it asks that the C3 and C1 cells for Options 5 and 6 explicitly price the team-build and capex ramp, so the higher-capture options are not scored as if execution were free. Recorded as a scoring instruction, not a weight change.
- **Concurs the weighting is correctly tilted to gates over upside.** An execution operator's failure mode is committing build before the gates clear; the instrument rewards staged, abandonable structures (Option 1), which is the executable posture.

---

## 6. DISSENT — review of the weighting for proceed-bias

> DISSENT (Seat 10) reviews every instrument for bias. The question: does this weighting rig the matrix toward proceeding?

- **Accepts the weighting as non-proceed-biased, with three conditions on the record:**
  1. **Option 0 (Pass) must be scored as a live competitor on the opportunity-cost baseline (Section 2 convention), not as a floor.** If the proceed options cannot beat capital-preserved-and-redeployed on the 22%-weighted C6 *under the downside scenario*, the recommendation is to pass. DISSENT will hold the matrix to scoring C6 under the down-world, not only the expected value.
  2. **The gating criteria (C2, C5, and the C1 validation gate) must be able to score a 1 and *cap* the option.** DISSENT requires a recorded rule: any option resting on an unmitigated High gating risk (R-IP-1, R-TECH-1, R-ADOPT-1/2) is scored 1 on that criterion and cannot be recommended on a high weighted-average alone — the gate is a precondition, not a tradeable quantity. (See Section 7.)
  3. **No criterion rewards optimism.** C7's inversion (high score = less policy dependence) is correct and must hold; an option leaning on a price floor that may lapse must *lose* on C7, not gain.
- **DISSENT-OPT-3 carried in:** the value-capture/liability trade-off is split across C3/C6 (capture and risk-adjusted return) and is NOT given its own weighted column, by design, because liability is a *risk* that belongs inside the risk-adjusted return, not a separate objective to be traded away. DISSENT accepts this provided the Option 5-vs-6 liability exposure (R-ESG-2, CERCLA) is explicitly priced into their C6 down-world, not noted and dropped. Recorded for the matrix step.

---

## 7. Gating-override rule (recorded; binds the recommendation step)

The weighted average is necessary but not sufficient. A precondition that is unmet is not compensable by strength elsewhere.

**Rule:** an option carrying an *unmitigated High-confidence gating risk* (R-IP-1 IP control, R-TECH-1 validation, R-ADOPT-1/R-ADOPT-2 adoption/timing) scores **1** on the corresponding criterion (C2, C1, C5/C4) and is **ineligible for recommendation** regardless of weighted total, until the option's own structure retires that gate. Options that *internalize the gate as a release condition* (Options 1, 3, 4, 5, 6, 7 secure IP+FTO before deployment) are scored on the *post-gate* state with the gate logged as a release condition; Option 2, which leaves the gates unaddressed, is scored on the *unmitigated* state. This is what operationalizes the difference between "proceed as written" and "restructure-first" in the numbers.

---

## 8. Sensitivity weightings (held for the matrix step)

To test robustness, step 3 will re-run the weighted totals under two alternative weightings and report whether the ranking changes:
- **Pure-return weighting:** C6 40%, C5 20%, C4 15%, C3 10%, C2 8%, C1 5%, C7 2% — the lens of an investor who trusts the gates will clear. If the recommendation is stable under this, it is not an artifact of the advisor's caution.
- **Company/founder weighting:** C6 25%, C4 25% (speed-first), C5 15%, C1 12%, C2 12%, C3 6%, C7 5% — the deck's implicit priorities. If "pass/restructure-first" still leads here, the conclusion is robust to the founder's own yardstick.

These are not applied now; they are recorded so the matrix step runs them as declared sensitivities rather than as post-hoc rationalization.

---

## Evidence tags for this step
- Criterion-to-risk anchors: **Cited** to `synthesis/SWOT.md` risk register and the R02 convergence rulings.
- Weights and scale anchors: **Assumption (moderator judgment, High confidence)** that this instrument expresses the advisor lens; the sensitivity weightings (Section 8) are the declared test of that assumption.
- PILOT and DISSENT views: their own seat positions, recorded verbatim in substance, not moderator findings.

*Step 1 of Round 04 complete. Next sequential step: attacks on each option's weakest assumption (one pass over Options 0–7, DISSENT plus the relevant domain seat per option), then the scored trade-off matrix with sensitivities and the joint First-Chicago downside, then the recommended direction with dissent log and change-triggers → `synthesis/STRATEGY.md`.*
