# Round 04 — Option Stress-Test & Trade-off — Step 3: Scored Trade-off Matrix

**Round:** 04 Option Stress-Test & Trade-off
**Unit (sequential step 3 of 4):** Score the seven options (0–7) against the seven weighted criteria on the locked 1–5 scale, evidence-tag every cell, run the two declared sensitivity weightings (`rounds/r04-criteria-weighting.md` §8), price the joint First-Chicago downside (R-REV-8 × R-ADOPT-2) into C6's down-world, make the value-capture/liability trade-off (DISSENT-OPT-3) visible across C3/C6, apply the §7 gating-override, and run Probe's §4 consistency check. This step does **not** select a direction; that is step 4 (→ `synthesis/STRATEGY.md`).
**Lead:** Moderator runs the matrix. **PILOT** scores execution-feasibility into C1/C3 for Options 5/6 (§5 instruction). **DISSENT** holds the down-world condition (§6.1) and the DISSENT-OPT-3 liability pricing.
**Lens:** ADVISOR, prospective capital provider (locked in `rounds/r00-frame-lock.md`).
**Inputs:** `rounds/r04-criteria-weighting.md` (instrument, scale §2, weights §3, double-count control §4, gating-override §7, sensitivities §8), `rounds/r04-attacks.md` (per-option load-bearing assumption and threatened criterion), `rounds/r03-options.md` (Options 0–7), `synthesis/SWOT.md` (risk register).

> Discipline carried in: half-points are not used (§2); each cell carries an evidence tag and a one-line rationale traceable to the attack pass; the §7 gating-override caps any option resting on an unmitigated High gate at 1 on the relevant criterion and bars it from recommendation; Option 2 is scored on its **unmitigated** state, the other proceed options on their **post-gate** state with the gate logged as a release condition. Scores are moderator judgments (Assumption-tagged) anchored to Cited risk-register items; the band is given per cell.

---

## 1. The scored matrix (base / advisor weighting)

Weights (locked §3): **C1 12 · C2 15 · C3 13 · C4 14 · C5 18 · C6 22 · C7 6** (sum 100).

| Option | C1 Tech feas. (12) | C2 IP def. (15) | C3 Cap. eff. (13) | C4 Time-to-rev (14) | C5 Adoption (18) | C6 Risk-adj. ret. (22) | C7 Policy dur. (6) | **Weighted /5** | Rank |
|--------|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| **0 — Pass** | 3 | 3 | 4 | 4 | 3 | 4 | 5 | **3.61** | **1** |
| **1 — Restructure-first** | 3 | 3 | 5 | 2 | 3 | 4 | 5 | **3.46** | **2** |
| **2 — Licensing base as written** | **1**◆ | **1**◆ | 2 | **1**◆ | **1**◆ | 1 | 5 | **1.37** | 8 (ineligible) |
| **3 — Anchor co-development** | 3 | 2 | 3 | 4 | 4 | 3 | 4 | **3.23** | **3** |
| **4 — Repriced narrow-base licensing** | 3 | 3 | 4 | 2 | 3 | 3 | 5 | **3.11** | **5** |
| **5 — Hybrid TaaS / capacity** | 2 | 3 | 2 | 2 | 3 | 2 | 4 | **2.45** | **6** |
| **6 — Build-own-operate / producer** | 2 | 3 | 1 | 2 | 5 | 1 | 3 | **2.40** | **7** |
| **7 — Government-anchored (standalone)** | 3 | 3 | 4 | 3 | 4 | 3 | 1 | **3.19** | **4** |

◆ = §7 gating-override applied (unmitigated High gate → capped at 1; option ineligible for recommendation regardless of total). See §6.

**Base-weighting ranking:** 0 (3.61) > 1 (3.46) > 3 (3.23) > 7 (3.19) > 4 (3.11) > 5 (2.45) > 6 (2.40) > 2 (1.37, ineligible).

**Shape of the result.** Pass and Restructure-first lead as a close pair (3.61 vs 3.46); the 0-vs-1 gap is 0.15 and is driven entirely by C4 (Option 0 scores redeployability-of-capital at 4 under the §2 opportunity-cost convention; Option 1's gated re-entry is slow at 2) net of Option 1's C3 edge. The middle band (3, 7, 4 within 0.12 of each other) is the "proceed-and-configure" cluster. Hybrid and Producer trail on the value-capture/liability trade-off (§5). Option 2 is both lowest and §7-ineligible.

---

## 2. Per-cell rationale and evidence tags

> One line per cell, traceable to the attack pass (`r04-attacks.md`) and the risk register. Tag = (evidence posture; confidence band). Where a cell is governed by §2 conventions or §7, that is stated.

### Option 0 — Pass / do not proceed
- **C1 = 3** — Criterion binds only on proceeding; scored neutral per §2 opportunity-cost convention. *(Convention; n/a band.)*
- **C2 = 3** — Same; IP risk not incurred. *(Convention.)*
- **C3 = 4** — Capital preserved and redeployable; high abandonability, but return-*of*-capital only, no return-*on* (CAPITAL's attack: passing forfeits the cheapest entry). *(Assumption, High; §2 convention; R-REV-10 Cited.)*
- **C4 = 4** — Capital redeployable now; "fast" in the opportunity-cost sense, not literal revenue. *(Convention, High.)*
- **C5 = 3** — No adoption to win; neutral. *(Convention.)*
- **C6 = 4** — The benchmark every proceed option must beat: no down-world loss, no up-world gain, a solid floor under the advisor's downside lens. DISSENT §6.1 binds — a proceed option wins only if its down-world C6 beats this. *(Assumption, High; R-REV-8 Cited as the risk pass avoids.)*
- **C7 = 5** — Zero policy dependence. *(Cited; High.)*

### Option 1 — Restructure-first
- **C1 = 3** — Validation internalized as a hard release condition (§7 favourable, post-gate state); lithium-first single feedstock is the narrowest scale demand, but the scaled number is a moderate-confidence Assumption, not proven. *(Assumption, Moderate; R-TECH-1 Cited, gate logged.)*
- **C2 = 3** — IP+FTO is a release condition (§7 favourable); post-gate the position is controlled but the moat is thin (R-TECH-3/R-IP-3) and clearance against crowded sub-500C art is not guaranteed. *(Assumption, Moderate; R-IP-1 Cited, gate logged.)*
- **C3 = 5** — The capital-efficiency archetype: small validation-and-IP tranche, growth capital withheld, maximally staged and abandonable. This is Option 1's signature advantage and the build-quality the instrument is tuned to reward. *(Assumption, High; R-REV-6/R-REV-10, S1 Cited.)*
- **C4 = 2** — Most-threatened criterion (DISSENT attack): the three gates may be entangled and serial, turning the "small abandonable bet" into a multi-year tie-up; first scaled revenue is qualification-cycle-paced. *(Assumption, Moderate-High; R-ADOPT-2 Cited.)*
- **C5 = 3** — The narrowed verifiable base eases acceptance (R-ADOPT-4), but restructure-first gates *capital*, not adoption; concentration/self-substitution remain. *(Assumption, Moderate; R-ADOPT-1/4 Cited.)*
- **C6 = 4** — First-Chicago: the multiplicative downside (R-REV-8 × R-ADOPT-2) is *capped by staging* to a small validation loss, while the up-world retains real option value. Ties the pass benchmark; whether it is a 4 or a 5 is the down-world decision handed to step 4 (§4 below, §6.1). *(Assumption, High; R-REV-8 × R-ADOPT-2 Cited.)*
- **C7 = 5** — Economics-led, no policy crutch. *(Assumption, High.)*

### Option 2 — Licensing-first base as written (strawman, unmitigated)
- **C1 = 1 ◆** — Unmitigated R-TECH-1; multi-stream scope is the hardest validation demand. §7 cap. *(Cited; High gate.)*
- **C2 = 1 ◆** — Unmitigated R-IP-1: no cleared exclusive (VTIP is an option-to-license; only a possibly-lapsed 2024-03 provisional on the LiT side). §7 cap; option ineligible. *(Cited; High gate.)*
- **C3 = 2** — Seed accepted as offered, calendar-keyed releases, entry seed-priced for pre-seed risk (R-REV-10); least abandonable of the licensing options. *(Assumption, Moderate; R-REV-10 Cited.)*
- **C4 = 1 ◆** — Calendar-keyed tranches assume revenue on the deck's dates against an unmitigated qualification cycle (R-ADOPT-2). §7 cap. *(Cited; High gate.)*
- **C5 = 1 ◆** — Unmitigated R-ADOPT-1 plus whole-mine-NSR resistance (R-ADOPT-4). §7 cap. *(Cited; High gate.)*
- **C6 = 1** — Multiplicative stacking (R-REV-8) fully un-mitigated, no downside scenario, exit multiples 3–5x too rich (R-REV-7); C6 sits on a 1/1/1 gating base — Probe-consistent (§5). *(Assumption, High; R-REV-7/8 Cited.)*
- **C7 = 5** — No policy dependence (it fails on its gates, not on policy). *(Assumption, High.)*

### Option 3 — Anchor co-development
- **C1 = 3** — Gate internalized; the anchor's qualification *is* the validation, scored at the operator's scale. *(Assumption, Moderate; R-TECH-1 Cited, gate logged.)*
- **C2 = 2** — IP+FTO is a release condition, but the anchor sees the flowsheet and can replicate in-house or fund a competitor (Freeport backs Jetti *and* runs internal leach R&D); the relationship degrades defensibility. *(Assumption, Moderate; R-ADOPT-1, r00-major-miner-techprograms.md Cited.)*
- **C3 = 3** — Licensing-light on equipment, but a strategic round is a larger, less-abandonable commitment than Option 1's validation tranche. *(Assumption, Moderate; R-REV-5 Cited.)*
- **C4 = 4** — The anchor's strength and the fastest credible path to a first reference: collapses validation + first-reference + adoption into one move. *(Assumption, Moderate-High; r00-operator-qualification-cycles.md Cited.)*
- **C5 = 4** — Secures the first deployment (a committed first buyer), the strongest first-deal adoption on the board; exposed on transfer (R-ADOPT-5) and counterparty leverage (R-ADOPT-1), which load C2/C6 not C5. *(Assumption, Moderate; O6 Cited.)*
- **C6 = 3** — Strong first-deal expected value, but the down-world is anchor value-extraction / in-house build / competitor funding (concentration realized) over a larger committed round, and transfer does not spill. *(Assumption, Moderate; R-ADOPT-1 Cited.)*
- **C7 = 4** — Anchor is commercial, not policy; largely independent. *(Assumption, Moderate.)*

### Option 4 — Repriced narrow-base licensing
- **C1 = 3** — Gate internalized; lithium-first, same favourable feasibility posture as Option 1. *(Assumption, Moderate; R-TECH-1 Cited, gate logged.)*
- **C2 = 3** — Best-articulated IP posture: secure exclusive + FTO *plus* trade-secret where patent scope is weak (directly answers the thin-moat R-TECH-3); post-gate state. *(Assumption, Moderate; R-IP-1/R-TECH-3 Cited, gate logged.)*
- **C3 = 4** — Restructured terms/triggers, capital-light (no equipment), stageable; a fuller licensing build than Option 1's minimal validation tranche. *(Assumption, Moderate-High; r00-licensing-norms.md Cited.)*
- **C4 = 2** — Fixes the *basis* objection but inherits a *measurement* objection (metering "incremental recovered metal" needs an agreed counterfactual baseline operators will contest); does not escape the qualification cycle (R-ADOPT-2). *(Assumption, Moderate; ROYALTY metering attack, R-ADOPT-2 Cited.)*
- **C5 = 3** — Repriced narrow base removes the whole-mine-NSR resistance (R-ADOPT-4 addressed), better than Option 2, but still a cold sell into the cycle with concentration unaddressed. *(Assumption, Moderate; R-ADOPT-4 Cited.)*
- **C6 = 3** — Value-capture sufficiency is the open question (SPOT: acceptable-but-thin — set low enough to clear procurement and it may not clear cost of capital; set high enough to matter and it re-triggers resistance); offset by low liability (stays with the miner) and high abandonability. *(Assumption, Moderate; SPOT thinness attack, R-REV-1 Cited.)*
- **C7 = 5** — Economics-led licensing, no policy dependence. *(Assumption, High.)*

### Option 5 — Hybrid TaaS / capacity
- **C1 = 2** — PILOT §5 scoring: scored on *scaled, reproduced* recovery in the operator's circuit at capacity scale (highest feasibility demand short of producing); LiT would stand up a service org around an unproven scaled number (bench ≠ piloted ≠ per-site qualified). *(Assumption, Moderate; r00-flotation-scaleup.md Cited.)*
- **C2 = 3** — Gate internalized; capacity model embeds know-how in operated equipment, which supports trade-secret protection. *(Assumption, Moderate; R-IP-1 Cited, gate logged.)*
- **C3 = 2** — PILOT §5: must absorb capex for processing units, a field-service organization, integration headcount, and a two-to-seven-person build that materially understates the ramp; materially lower capital efficiency than the licensing options, less abandonable. *(Assumption, Moderate-High; PILOT attack, r00-businessmodel-economics.md Cited.)*
- **C4 = 2** — Host-operator qualification risk plus the time to build and commission capacity. *(Assumption, Moderate; R-ADOPT-2 Cited.)*
- **C5 = 3** — Shared-savings aligns incentives (operator pays from uplift), but hosting LiT-operated equipment in the circuit is a heavier integration ask the operator may resist. *(Assumption, Moderate; R-ADOPT-1 Cited.)*
- **C6 = 2** — DISSENT-OPT-3 priced (§4): up-world is higher capture, but the down-world carries sunk capex + field-service org + *partial* CERCLA/custody exposure (R-ESG-2 partial, operator-like custody) + host-qualification failure — the worst-of-both axis (more build/liability than licensing, less control than producing). The capture upside does not compensate the heavier, less-abandonable down-world. *(Assumption, Moderate; DISSENT-OPT-3, R-ESG-2, r00-tailings-liability.md Cited.)*
- **C7 = 4** — Strategic equipment round is mostly commercial; modest policy reliance. *(Assumption, Moderate.)*

### Option 6 — Build-own-operate / producer
- **C1 = 2** — PILOT: first-of-a-kind plant built by a team with no plant-building track record, on a process whose scaled number is unproven — highest execution risk on the board, at full production scale. *(Assumption, Moderate; PILOT attack Cited.)*
- **C2 = 3** — Owns or exclusively licenses the full flowsheet; as a producer the IP-as-licensable-moat constraint is less binding, but FTO to operate is still required (gate logged). *(Assumption, Moderate; R-IP-1 Cited, gate logged.)*
- **C3 = 1** — Largest committed round, least abandonable, cannot be staged into small bets — once committed it is committed. Worst capital-efficiency profile on the board for a staged capital provider. (Severity-1 on the criterion's own terms — worst abandonability — *not* a §7 gating-override; flagged in §6.) *(Assumption, High; PILOT attack Cited.)*
- **C4 = 2** — Removes the external qualification cycle (no buyer to qualify) but first revenue waits on plant construction and commissioning — long. *(Assumption, Moderate; r00-businessmodel-economics.md Cited.)*
- **C5 = 5** — Removes the buyer entirely: R-ADOPT-1 dissolved, adoption-independence is the highest on the board (the option's defining strength). *(Assumption, Moderate-High; R-ADOPT-1 Cited.)*
- **C6 = 1** — DISSENT-OPT-3 at maximum: the down-world inverts remediation-as-asset to strict joint-and-several retroactive CERCLA liability (R-ESG-2 → High) plus closure bonds plus *direct* full commodity-price exposure (R-REV-3 leveraged, lithium deck ~2x / REE ~2.6x intra-year), executed by an inexperienced team and least abandonable — a leveraged loss with an environmental tail that can exceed invested capital. The Good Samaritan shield (PL 118-155) is too narrow to cover a for-profit producer. *(Assumption, High; r00-tailings-liability.md, r00-li-ree-price-forecasts.md Cited.)*
- **C7 = 3** — Standalone, Option 6 barely survives without a policy floor on its price exposure ("only survives as Option 6-plus-7"); its viability leans on policy capital/offtake, so its policy dependence is elevated. *(Assumption, Moderate; defeater note in r04-attacks.md Cited.)*

### Option 7 — Government-anchored allied-supply-chain (scored standalone)
- **C1 = 3** — Gate internalized; policy capital funds the validation campaign (better-resourced feasibility) and onshoring Dhanbad helps R-TECH-4, but the underlying science is unchanged. *(Assumption, Moderate; R-TECH-1/R-TECH-4 Cited, gate logged.)*
- **C2 = 3** — Secure exclusive + FTO + onshore Dhanbad addresses the R-GEO-2 IP-custody limb; government diligence will demand clean IP. *(Assumption, Moderate; R-IP-1/R-GEO-2 Cited, gate logged.)*
- **C3 = 4** — Non-dilutive grant-first capital is a genuine capital-efficiency strength for LiT's own dollars (someone else funds proof). *(Assumption, Moderate; O5, Market Research 222–225 Cited.)*
- **C4 = 3** — Government offtake supplies a committed buyer that can shortcut the qualification cycle, but grant timelines and appropriations slow the capital arrival — mixed. *(Assumption, Moderate; R-GEO-1 Cited.)*
- **C5 = 4** — Offtake / price-floor provides demand and materially de-risks the buyer question (durability bound sits in C7, not here). *(Assumption, Moderate; O5 Cited.)*
- **C6 = 3** — The price-floor/offtake floors the down-world (underwrites R-REV-3 downside), but standalone this is *rented* cover (time-bounded, appropriations-risk), not a retired downside, and the gates are untouched. As an *overlay* on a gated base it lifts the base's C6 (§7 overlay analysis). *(Assumption, Moderate; R-GEO-1, R-REV-3 Cited.)*
- **C7 = 1** — By construction the most policy-dependent direction on the board as a standalone base (high score = less dependence). DISSENT bars the subsidy from buying points on C1/C2/C5. *(Cited inversion; High.)*

---

## 3. Joint First-Chicago downside priced into C6 (R-REV-8 × R-ADOPT-2)

C6 is scored as a scenario-band expected value, not a re-sum of C1–C5 (§4 double-count control). The interaction term C6 adds beyond the parts is the *multiplicative* coupling of the price/exit downside (R-REV-8) with the qualification-cycle timing downside (R-ADOPT-2): a slow cycle does not just delay revenue, it stretches the burn across a low-price world and compounds the loss. Pricing this explicitly for the options whose C6 it moves:

| Option | Up-world | Base-world | Down-world (R-REV-8 × R-ADOPT-2 coupled) | C6 |
|--------|----------|------------|-------------------------------------------|:--:|
| **0 — Pass** | Capital redeployed at hurdle | Capital preserved | Capital preserved (no loss) — the floor | 4 |
| **1 — Restructure-first** | Validated number + cleared IP + first pilot → repriced upside, optionality intact | Narrow verifiable royalty, modest | **Staging caps it:** small validation-and-IP tranche written off; the multiplicative coupling cannot reach growth capital because growth capital is withheld behind the gates | 4 |
| **3 — Anchor** | Anchor reference converts toward a franchise | One reference deal, slow transfer | Anchor extracts value / builds in-house / funds a competitor; a *larger committed round* is exposed to the coupled downside than in Option 1 | 3 |
| **4 — Narrow licensing** | Clean instrument scales across operators | Acceptable-but-thin royalty | Narrow base + cycle delay fails to clear cost of capital, but liability stays with the miner and the bet is abandonable | 3 |
| **5 — Hybrid** | Higher capture (capacity / shared-savings >>1%) | Mid-capture | **Sunk capex + field-service org** caught in a cycle-delayed low-price world, *plus* partial CERCLA/custody — the coupling lands on committed build, not an abandonable tranche | 2 |
| **6 — Producer** | Full margin in a high-price world | Margin at mid-cycle price | **Worst on the board:** least-abandonable mega-round + strict retroactive CERCLA tail + closure bonds, fully long a ~2x/~2.6x price swing, built by an inexperienced team — a leveraged loss that can exceed invested capital | 1 |

**The discriminator the interaction term exposes:** the joint downside is *survivable* only where capital is staged (Option 1) or never committed (Option 0); it is *amplified* monotonically as the option moves up the value-capture axis (3 → 5 → 6) because more capital is committed and less of it is abandonable when the coupled down-world hits. This is exactly the multiplicative stacking R-REV-8 names, and it is why the gated/abandonable structures dominate the committed/high-capture ones on the 22%-weighted criterion.

---

## 4. Value-capture / liability trade-off made visible (DISSENT-OPT-3) across C3 and C6

Per §6.2 of the weighting doc, liability is priced *inside* the risk-adjusted return rather than given its own column. The trade-off is therefore read off the C3 (capital efficiency / abandonability) and C6 (risk-adjusted return, liability-priced) gradient, which must be visible and not averaged away:

| Direction | Value capture | C3 (cap. eff. / abandonability) | Liability posture | C6 (risk-adj., liability priced) |
|-----------|---------------|:--:|-------------------|:--:|
| **4 — Licensing (narrow base)** | Lowest | **4** — capital-light, stageable | Stays with the miner (off LiT balance sheet) | **3** |
| **5 — Hybrid TaaS / capacity** | Mid | **2** — capex + field-service, less abandonable | *Partial* operator-like custody (R-ESG-2 partial) | **2** |
| **6 — Producer / BOO** | Highest | **1** — committed mega-round, non-stageable | Title/custody → strict retroactive CERCLA (R-ESG-2 High) + closure bonds | **1** |

The gradient is monotone and intended: each step up in capture is bought with lower abandonability (C3) and a heavier liability-loaded down-world (C6). DISSENT-OPT-3 is satisfied — the matrix does not let the higher-capture options score around the liability they take on; the capture upside is visible only in the C6 up-world (§3), and the liability is priced into the C6 down-world, not noted and dropped.

---

## 5. Probe — §4 consistency check (C6 vs the C1–C5 base)

Probe is tasked to flag any option whose C6 is inconsistent with its component profile (a high C6 laundering a gating base, or a low C6 contradicting a strong base). Findings:

1. **Option 2 — C6 = 1 on a 1/1/1/1 base: consistent.** The integrative score correctly reflects the gating base; no laundering. Confirms the §7 cap rather than overriding it.
2. **Option 6 — C6 = 1 sitting on C5 = 5: a documented, intentional divergence, not an inconsistency.** Adoption-independence is genuinely the highest on the board (the buyer is removed), but the interaction term C6 adds (CERCLA liability tail × full price exposure × non-abandonability) dominates the risk-adjusted return. This is precisely the case §4 anticipated — C6 prices an interaction the component criteria, scored independently, miss. The divergence is on the record, not averaged away. **Pass with note.**
3. **Option 7 — C6 = 3 standalone with C7 = 1: checked for subsidy-laundering.** The standalone C6 = 3 reflects a *rented*, time-bounded downside floor, and the base gates remain scored on their own merits (C1 = 3, C2 = 3, C5 = 4 are the gated-base scores, not subsidy-inflated). The subsidy does **not** buy points on C1/C2/C5 (DISSENT's bar holds). **Pass.**
4. **No proceed option carries a high C6 on a weak feasibility/adoption base.** The highest proceed C6 is 4 (Options 1), resting on a 3/3/3 base with staging that caps the down-world — consistent. Options 3/4 at C6 = 3 rest on 3–4 bases — consistent. **Pass.**

Probe consistency check **passed**, with the Option 6 C5/C6 split and the Option 7 C6/C7 overlay distinction logged as intended, evidence-backed divergences.

---

## 6. §7 gating-override applied

- **Option 2** carries unmitigated High gates: R-IP-1 (C2), R-TECH-1 (C1), R-ADOPT-1/2 (C5/C4). Each capped at **1**; per §7 the option is **ineligible for recommendation regardless of weighted total** (1.37). Its role is fixed as the baseline whose gap to the alternatives (≈ 1.7–2.2 weighted points) quantifies the value of restructuring.
- **Options 1, 3, 4, 5, 6, 7** internalize the same gates as *release conditions*; they are scored on the post-gate state with each gate logged in the per-cell rationale (§2). None is §7-ineligible, but the recommendation in step 4 must carry the release conditions forward as binding pre-conditions, not as retired facts.
- **Option 6's C3 = 1 is a severity-1 score, not a §7 gating-override.** Capital efficiency carries no gating risk; the 1 records the worst-in-class abandonability profile (largest committed, non-stageable round) on the criterion's own ordinal terms. Logged here so the matrix is not misread as a fourth gate.

---

## 7. Sensitivity A — Pure-return weighting (investor who trusts the gates clear)

Weights (§8): **C6 40 · C5 20 · C4 15 · C3 10 · C2 8 · C1 5 · C7 2.**

| Option | Weighted /5 | Rank | Δ vs base |
|--------|:--:|:--:|:--:|
| 0 — Pass | **3.69** | 1 | — |
| 1 — Restructure-first | **3.49** | 2 | — |
| 3 — Anchor | **3.29** | 3 | — |
| 7 — Government (standalone) | **3.26** | 4 | — |
| 4 — Narrow licensing | **2.99** | 5 | — |
| 5 — Hybrid | **2.32** | 6 | — |
| 6 — Producer | **2.20** | 7 | — |
| 2 — Base as written | 1.18 | 8 | ineligible |

**Finding: the ranking is identical to the base weighting** (0 > 1 > 3 > 7 > 4 > 5 > 6 > 2). The conclusion that Pass and Restructure-first lead is **not an artifact of advisor caution** — it survives an investor who weights pure return at 40% and trusts the gates. Pass still tops because its C6 = 4 floor is not beaten: every proceed option's *single-cell* C6 is ≤ 4. The one place this could flip is fully exposed below.

**The load-bearing sensitivity for step 4.** Option 0 and Option 1 both hold C6 = 4 in the matrix. If, on the down-world analysis (DISSENT §6.1), Option 1's risk-adjusted return is judged a **5** (up-world dominant, down-world genuinely capped to the validation tranche) while Pass stays 4, then under pure-return Option 1 = **3.89 > Pass 3.69** and the recommendation flips to Restructure-first. The entire 0-vs-1 decision therefore reduces to a single judgment — *is Option 1's down-world C6 strictly better than capital-preserved-and-redeployed?* — which the matrix deliberately leaves at a tie and hands to step 4 with the down-world specified (§3).

---

## 8. Sensitivity B — Company/founder weighting (speed-first, the deck's implicit priorities)

Weights (§8): **C6 25 · C4 25 · C5 15 · C1 12 · C2 12 · C3 6 · C7 5.**

| Option | Weighted /5 | Rank | Δ vs base |
|--------|:--:|:--:|:--:|
| 0 — Pass | **3.66** | 1 | — |
| 3 — Anchor | **3.33** | 2 | **▲ 1 (3→2)** |
| 1 — Restructure-first | **3.22** | 3 | **▼ 1 (2→3)** |
| 7 — Government (standalone) | **3.11** | 4 | — |
| 4 — Narrow licensing | **2.91** | 5 | — |
| 5 — Hybrid | **2.37** | 6 | — |
| 6 — Producer | **2.31** | 7 | — |
| 2 — Base as written | 1.26 | 8 | ineligible |

**Findings:**
1. **Pass still leads even under the founder's own speed-first yardstick** (3.66). The conclusion is robust to the deck's priorities: valuing speed (C4 25%) and return (C6 25%) the way the founder does does *not* rescue proceeding, because the proceed options are either slow (gated) or thin/liability-loaded — unless the gates are simply assumed away (which no weighting can do; that is what the §7 gates and the C6 down-world encode). Pass wins both heavy criteria on the §2 convention (C4 = 4 redeployability, C6 = 4 floor).
2. **A genuine ranking change inside the proceed set: the Anchor (3) overtakes Restructure-first (1)** when speed is weighted heavily. This is real and evidence-backed — Option 3 is the fastest credible path to a first reference (C4 = 4) while Option 1's gated re-entry is slow (C4 = 2). It tells step 4 that *if* the decision is to proceed and *if* time-to-first-reference is the binding founder constraint, the anchor configuration outranks the pure restructure-first sequence — at the cost of the concentration/leakage exposure that drags its C2/C6. This is the crossover the matrix must hand forward, not suppress.

---

## 9. Secondary sensitivity — the flagged crossovers (overlays, not standalone directions)

`r03-options.md` flagged three crossovers to test as sensitivities. They are not re-scored as primary rows (that would double-count); their *direction of effect* on the base scores is recorded for step 4:

- **Option 7 as a capital overlay on a gated base (1 / 3 / 4 / 5)** rather than a standalone. As an overlay it does not touch the base's gates (DISSENT's bar), but it lifts the base's **C6 down-world floor** (price-floor/offtake underwrites R-REV-3) and its **C3** (non-dilutive capital). Estimated effect: **+~1 on C6, +~1 on C4** for the base, while the base's own C7 is unchanged (the base still stands on economics). Net: an Option-1-plus-7 or Option-4-plus-7 configuration scores *above* either standalone. This is the defensible use of policy (overlay, downside floor) versus the standalone Option 7 (rank 4) which is penalised on C7 = 1. Step 4 should treat policy as an overlay lever on the leading proceed option, never as the base.
- **Option 1's gates applied to Options 3/4/5.** Options 3, 4, and 5 already internalize the gates as release conditions in their scoring (§2/§7), so this crossover is *already priced in* — it confirms that the gated discipline is portable across the proceed configurations and is not unique to Option 1. No additional adjustment.
- **Option 5 vs 6 on the value-capture/liability axis** is the DISSENT-OPT-3 gradient already made explicit in §4: 5 dominates 6 on C3 (2 vs 1) and C6 (2 vs 1); 6 dominates 5 only on C5 (5 vs 3, adoption-independence). The trade is adoption-independence bought with a CERCLA tail and zero abandonability — and on the 22%-weighted C6 and 13%-weighted C3, the liability/capital cost outweighs the adoption gain. Neither is a leading direction.

---

## 10. Robustness summary (carried to step 4)

1. **Pass leads under all three weightings** (base 3.61, pure-return 3.69, founder 3.66). The result is robust to advisor caution *and* to the founder's own speed-first yardstick.
2. **The decision the matrix exists to make is 0 vs 1, and it reduces to one judgment:** whether Option 1's down-world C6 strictly beats capital-preserved-and-redeployed (DISSENT §6.1). At a C6 tie (both 4) Pass edges Restructure-first on C4; if Option 1's down-world is judged genuinely capped (C6 = 5) it overtakes Pass under pure-return (§7). Step 4 must resolve this against the unretrieved company-acceptance fact (C1/C3/C4, VTIP option terms C3) — the matrix correctly leaves it at the margin.
3. **The proceed-set ordering is 1 ≈ 3 ≈ 7 ≈ 4, then a clear gap to 5 and 6.** Anchor (3) rises under speed-first; the three configurations cluster within ~0.3 points and are differentiated by *which constraint binds* (speed → 3; capital-abandonability → 1; downside floor → 7-as-overlay; instrument-clean low-liability → 4), not by a dominant winner. Policy (7) is strongest as an overlay, not standalone.
4. **Hybrid (5) and Producer (6) are dominated** across every weighting; the value-capture/liability trade-off (§4) and the joint downside (§3) price them out under the advisor's downside lens. They survive only with both a policy floor *and* a liability ring-fence (the Option 6-plus-7 configuration), i.e., never standalone.
5. **Option 2 is §7-ineligible and lowest** under every weighting; its only function is to quantify the ≈1.7–2.4-point gap that restructuring closes.

---

## Evidence tags for this step
- **Scores:** Assumption (moderator judgment), per-cell confidence band stated in §2, each anchored to a Cited risk-register item or Round 00 research file named in the cell.
- **§2 conventions** (Option 0 opportunity-cost baseline; redeployability scored on C3/C4/C6): applied as the locked convention from `rounds/r04-criteria-weighting.md` §2.
- **§7 gating-override** (Option 2 caps; post-gate scoring for 1/3/4/5/6/7): applied per the locked rule; Cited to the R02 gating findings (R-IP-1, R-TECH-1, R-ADOPT-1/2).
- **Weighted totals and sensitivities:** arithmetic on the locked weights (§3) and the two declared sensitivity weightings (§8); reproducible from the score matrix in §1.
- **PILOT C1/C3 for 5/6 and DISSENT down-world / DISSENT-OPT-3 pricing:** their own seat positions from `r04-criteria-weighting.md` §5–§6 and `r04-attacks.md`, recorded in substance, not moderator findings.

*Step 3 of Round 04 complete. No direction is selected here. Next sequential step (step 4): the recommended direction with the dissent log and change-triggers, resolving the 0-vs-1 down-world judgment (§7, §10.2) against the carried company-acceptance condition, and writing `synthesis/STRATEGY.md` (v1).*
