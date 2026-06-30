# Round 04 — Option Stress-Test & Trade-off

Frame: COMPANY (decision owner = LiT leadership). Every criterion and score is read as "what does this option do for the company."

Sequential round, ONE unit per iteration. Units in order: (1) weight and record the scoring criteria [THIS UNIT]; (2) attack each option at its weakest assumption; (3) build the scored trade-off matrix with sensitivities; (4) select a recommended direction with dissent log and change-triggers; (5) write synthesis/STRATEGY.md (v1).

Participating seats this round: CRUCIBLE, SPOT, CLAIM, ROYALTY, MILL, CAPITAL, WATERSHED, DISSENT (core), CHOKEPOINT (active through R04), and PILOT (enters now, active R04-R07, contributing the execution-feasibility view).

Options under test (from rounds/r03-options.md): OPT-1 Conditional Stop / Rights-and-Validation-Only Vehicle; OPT-2 Gated Asset-Light Licensor (full intended scope); OPT-3 Narrow Single-Site, Single-Feedstock Beachhead; OPT-4 Validation-Services-First, Royalty-Later; OPT-5 Strategic-Partner / Out-License / Absorb; OPT-6 Build-Own-Operate / Operator-Funded JV Producer. Overlays OVL-A (Federally-Anchored Allied Recovery) and OVL-B (Allied R&D Base with Managed Export-Control) are scored as modifiers, not standalone options.

---

## Unit 1 — Scoring criteria, weights, and scale (recorded)

### Criteria set

The playbook fixes seven scoring criteria: technical feasibility, IP defensibility, capital efficiency, time-to-revenue, adoption probability, risk-adjusted return, and policy durability. One eighth criterion, **execution feasibility**, is added by moderator ruling (logged as R04-001) to give PILOT's mandated R04 execution-feasibility view a scoring home and to score the confirmed High weakness W-TEAM, which the seven do not cleanly capture (process-science readiness and organizational delivery capacity are different things and must not net into one score). The addition augments, does not replace, the playbook set. Eight criteria, weights summing to 100.

Each criterion is defined in the company frame and anchored to the specific Round 01-02 findings it scores, so a score is traceable to evidence, not to taste.

| # | Criterion | What it scores (company frame) | Anchored findings |
|---|-----------|--------------------------------|-------------------|
| C1 | **Technical feasibility** | Can the validated recovery science actually carry this option, on real feedstock, at the recovery quantum the model needs? Scores the W-UPLIFT validation gate and the W-GRADE / T-GRADE characterization burden, against the credible S-SCIENCE base. | W-UPLIFT (kill-switch), W-GRADE, T-GRADE, S-SCIENCE |
| C2 | **IP defensibility** | Does LiT have a clean, exclusive, sublicensable, field-of-use right to license, with freedom to operate, such that the option is LiT's to sell? Scores the W-RIGHTS gate and the export/IP-control tension. | W-RIGHTS (kill-switch), RR-1/2/3, CHO-T2 |
| C3 | **Risk-adjusted return** | Does the option produce a return that survives a sophisticated diligence after de-stacking — re-based royalty, trough price band, conservative exit? The integrating financial criterion. | W-MODEL, W-BASE, T-PRICE, O-EXIT |
| C4 | **Adoption probability** | Will real operators actually sign and convert, given a slow, conservative, incumbency-defended, thin-channel sale? Scores the demand-side gate on whether revenue ever materializes. | T-ADOPT, T-COMPETE, S-CHANNEL |
| C5 | **Capital efficiency** | Does the option survive on the capital realistically raisable, on the hard no-client-capex line, without a first-revenue slip ending the company? | W-CAPITAL, CAP-W1, S-FUNDABLE |
| C6 | **Time-to-revenue** | How fast does first real cash arrive, and how exposed is runway to the gap before it? | T-ADOPT runway leg, W-CAPITAL, MIL-O2/O4 sequencing |
| C7 | **Execution feasibility** | Can a team of the size LiT can fund actually build, sell, integrate, and deliver this option's operating load? PILOT's view; scores W-TEAM and the integration-footprint leg. | W-TEAM, MIL-W2, PILOT entry |
| C8 | **Policy durability** | How much durable, bankable tailwind does the option capture from the federal/allied policy direction, net of the fact that transmission to LiT revenue is unproven and banked nowhere in the base case? | O-POLICY, O-ALLIED-RD, S-POSITION |

### Weights (sum = 100) and rationale

Weights are set by materiality to the company decision as established across Rounds 00-02, not evenly. The logic has four tiers.

| Criterion | Weight | Tier and rationale |
|-----------|:------:|--------------------|
| C2 IP defensibility | **18** | **Tier 1 — kill-switch precondition.** W-RIGHTS carries conditional kill-switch standing: with no clean sublicensable right there is no business to score on any other axis. Top weight. |
| C1 Technical feasibility | **16** | **Tier 1 — kill-switch precondition.** W-UPLIFT carries conditional kill-switch standing: the recovery uplift is unvalidated (F-2) and the entire royalty math rests on it. |
| C3 Risk-adjusted return | **16** | **Tier 1 — integrating financial test.** Absorbs T-PRICE, W-BASE, and W-MODEL at once; the de-stacked return is the question leadership is ultimately deciding. Co-top with C1. |
| C4 Adoption probability | **14** | **Tier 2 — structural demand gate.** T-ADOPT is the most-cited demand-side threat (slow conservative sale, Jetti 3-of-23, thin channel). An option no one signs returns nothing regardless of design. |
| C5 Capital efficiency | **12** | **Tier 2 — survival.** Thin single-tranche seed (CAP-W1) and the no-client-capex line (RR-14) mean capital fit is close to existential, not merely efficient. |
| C6 Time-to-revenue | **10** | **Tier 3 — runway exposure.** First-cash timing is what couples adoption risk to capital risk; weighted below the gates but above the curable items. |
| C7 Execution feasibility | **8** | **Tier 3 — curable, capital-constrained.** W-TEAM is High but curable with staged capital; weighted below the structural and survival criteria. |
| C8 Policy durability | **6** | **Tier 4 — real but unbankable.** O-POLICY is Cited at the category/positioning level, but its transmission to LiT revenue never rose above Assumption/Medium and is banked nowhere in the base case. Lowest weight so a policy story cannot inflate a weak option. |

Total: 18 + 16 + 16 + 14 + 12 + 10 + 8 + 6 = 100.

### Scoring scale

Each option is scored 1-5 on each criterion: **1** = severely disadvantaged / the criterion works hard against this option; **2** = disadvantaged; **3** = adequate / neutral; **4** = advantaged; **5** = strong, evidence-backed advantage. Half-points are not used. Each score in Unit 3 carries a one-line evidentiary basis; a score with no basis in the locked findings is not admitted.

Composite = Σ (weight_i / 100 × raw_i), reported on the 1.00-5.00 scale. The composite ranks design quality; it does not, by itself, authorize proceeding (see the gating override below).

### Gating override (binding, separate from the weighted score)

The weighted composite scores how well each option is **designed**. It does not release the two conditional kill-switches. C1 and C2 function in two modes at once, and the distinction is load-bearing:

- As **weighted criteria**, C1 and C2 score how well an option contains and sequences the technical and rights risk relative to the other options.
- As **gates**, W-UPLIFT and W-RIGHTS are binary preconditions on every proceed option (OPT-2 through OPT-6). A high composite does not mean "proceed now"; it means "this is the best-designed option to carry into the gate." No proceed option may be executed at scale until both preconditions clear on acceptable terms. OPT-1 is precisely the option of standing at that gate and not spending past it.

This dual treatment is the agreed reconciliation of the preserved CONTESTED-SPLIT (recorded below): the weighting compares option design conditional on the gates being clearable; it never overrides the gates.

### Scoring conventions for the option set

- **OPT-1 (Conditional Stop)** is scored on the same eight criteria as the proceed options, as the disciplined floor of the decision space. It will score high on capital efficiency and on preserving IP-defensibility optionality, and low on time-to-revenue and on near-term return by construction. It is a real option, not a null row.
- **Overlays OVL-A and OVL-B** are not scored as standalone rows. They are recorded in Unit 3 as signed modifiers (for example, OVL-A as a small positive on C8 policy durability for whichever proceed option it attaches to, with an explicit note that none of it is banked in the base case; OVL-B as a positive on C5/C1 cost-and-capability offset against a negative on C2 from the export/IP-control tension). Modifiers are shown separately so the base option score and the overlay effect never blur.

### Dissent recorded on the weighting (CONTESTED-SPLIT preserved)

DISSENT's position, carried from the W-RIGHTS and W-UPLIFT kill-switch rulings: C1 and C2 should not be weighted criteria at all but pure pass/fail gates, because no amount of return, adoption, or policy quality matters until rights and uplift clear, and weighting them at 16 and 18 risks a reader treating a strong composite as permission to proceed before the gates are passed. The company-side position holds that the dual treatment above answers this: the gating override is binding and explicit, so the weights serve only to compare option design conditional on the gates. The split is preserved, not resolved, and travels into the trade-off matrix and the STRATEGY.md dissent log. PILOT registers a related caution that C7 at weight 8 may understate execution risk for the higher-scope options (OPT-2 full scope, OPT-6 producer); this is handled in Unit 3 by the sensitivity pass rather than by re-weighting.

### Sensitivity commitment for Unit 3

Unit 3 will re-run the composite under at least these moves, to test fragility rather than report a single ranking: (a) DISSENT's pass/fail treatment of C1/C2 (gates fail → proceed options drop out, OPT-1/OPT-4 dominate); (b) C7 execution feasibility re-weighted up (PILOT's caution); (c) C8 policy durability set to zero (transmission unproven); (d) C4 adoption moved one band down across the board (T-ADOPT realized worse than modeled). An option that wins only under the central weights and loses under these moves is flagged fragile.

---

## Unit 2 — Each option attacked at its weakest assumption

This unit does not score. It finds, for each option, the single load-bearing assumption that, if false, collapses the option, and presses on it. DISSENT leads every attack; the domain seat that owns the relevant finding co-leads; PILOT adds the execution-feasibility cut now that it is active. Each attack closes with the condition that would have to hold for the option to survive its own weakest point, and a fragility flag carried into the Unit 3 sensitivities. Attacks reason only from the locked findings; no new evidence is introduced.

### OPT-1 — Conditional Stop / Rights-and-Validation-Only Vehicle

**Weakest assumption.** That the two preconditions can be cleared on acceptable terms inside a defined budget and window, and that standing at the gate without spending preserves the company's value rather than quietly bleeding it.

**Attack (DISSENT lead; CRUCIBLE, WATERSHED, PILOT co-lead).** The option presents itself as the safe floor, but its safety is conditional on a clean, cheap validation it does not control. W-RIGHTS clears on a third-party legal event (an executed VTIP exclusive, sublicensable, field-of-use license clearing the prior MRC rights plus FTO, U-1); LiT cannot set that clock, and a stop-vehicle has the least leverage of any posture to force it. W-UPLIFT clears only through a continuous pilot on representative feedstock, which requires a host site, and per-site sampling at a contaminated tailings body is itself a CERCLA disturbance trigger (RR-21, coupled W-GRADE/RR-16). So the "minimal-spend" vehicle still needs an access-and-liability agreement with a title holder and a CRUCIBLE-grade pilot team to run the proof; the validation is not free and not fast, and a failed or slow pilot burns seed with nothing to show. PILOT: there is no truly skeletal version of this; the validation team is most of the technical org, and idle BD/integration capacity decays or disperses while the gate is pending. The abandonment fork's promise that capital is "returned or redeployed" holds only for unspent capital; everything spent on a validation that fails or stalls is gone, and the optionality the option exists to preserve (S-FUNDABLE, S-SCIENCE credibility) erodes as competitors (T-COMPETE: majors funding Jetti/Ceibo) advance during the wait.

**Survives if.** The gate is genuinely time-boxed with a pre-committed kill date and budget, a host-site access-and-liability agreement is reachable cheaply (favoring an active operator's site under WAT-O1's license-to-the-title-holder model, not an orphaned site), and the validation scope is held to the one feedstock with an executed bench basis. Absent the time-box, "conditional stop" degrades into indefinite, value-destroying limbo.

**Fragility flag.** Robust by construction on capital efficiency and on preserving the kill-switch optionality; fragile on time-to-revenue and on the hidden cost/liability of the validation itself. This is the option DISSENT's gate-fail sensitivity (Unit 3 move a) elevates.

### OPT-2 — Gated Asset-Light Licensor (full intended scope, disciplined)

**Weakest assumption.** That "disciplined full scope" is a stable posture, that LiT can clear both gates and then build, sell, integrate, and deliver the full intended platform (multi-feedstock, REE chemical extraction, a portfolio pipeline) on the capital it can realistically raise, without the discipline eroding back toward the optimistic stack once a raise is being marketed.

**Attack (DISSENT lead; CAPITAL, ROYALTY, MILL, PILOT co-lead).** The full-scope claim front-runs the evidence: only one feedstock has an executed bench basis (CRU-O1), the multi-feedstock and rare-earth value are undemonstrated, and W-GRADE/T-GRADE make each site its own characterization problem, so a "platform" offered before a second validated feedstock exists is the very overstatement Round 02 flagged. CAPITAL: the cure for capital adequacy is a staged raise (RR-14), but the starting point is a thin single-tranche seed (CAP-W1) and the cure is itself capital-constrained; full scope is the most capital-hungry proceed option, widening exactly the gap it must close. PILOT: full scope is the heaviest execution load against the thinnest fundable team (W-TEAM High), with the integration footprint per site (MIL-W2) multiplied across a broad pipeline the team cannot service; first revenue sits at the aggressive Month-25 (T-ADOPT) while a broad pipeline dilutes BD focus across deals that each move at the slow, conservative, incumbency-defended pace. DISSENT's structural objection: this is the option most exposed to a reader treating a strong composite as permission to proceed before the gates pass, precisely because it is the cured form of the intended business and will score well on design; a high score here is a ranking of design quality, never a release of W-RIGHTS or W-UPLIFT.

**Survives if.** Both gates clear on acceptable terms; the "full scope" is sequenced so that only validated feedstocks enter the commercial offer (CRU-O2 narrow-licensing discipline holds); the raise is genuinely staged against the validation gate with a hard no-client-capex line (RR-14); and BD is concentrated on active-operator anchor deals (MIL-O1) rather than a broad pipeline. It does not survive if "disciplined" and "full scope" are asserted together without the sequencing that makes them compatible.

**Fragility flag.** Strong on the central weights; fragile under C7-up (PILOT, Unit 3 move b) and under C4-down (Unit 3 move d), and it is the option whose composite must not be read past the gating override.

### OPT-3 — Narrow Single-Site, Single-Feedstock Beachhead

**Weakest assumption.** That one signed site is representative enough to prove the thesis and to set a defensible pricing comparable, and that narrowing to one deal lowers cost and risk proportionally to how much it lowers revenue.

**Attack (DISSENT lead; CLAIM, ROYALTY, PILOT co-lead).** T-GRADE is the direct refutation: tailings are heterogeneous, so a result on one characterized impoundment proves that impoundment, not the portfolio, and the headline resource value remains per-site-assay-dependent (W-GRADE). The beachhead therefore answers a narrower question than its proponents claim. ROYALTY: making the first signed license the definitive comparable (W-BASE rate leg) cuts both ways; a single early deal struck from a weak negotiating position anchors the portfolio rate low or mis-bases it, and one data point is a fragile foundation for pricing the rest. PILOT and CLAIM together press the unit economics: the fixed per-deal cost (BD, technical integration MIL-W2, per-site characterization RR-16) is nearly as high for one site as for several, so spreading it over a single royalty stream may not clear burn; narrowing cuts revenue faster than it cuts cost. Time-to-revenue is still governed by the same slow, conservative, incumbency-defended sale (T-ADOPT), so "narrow" buys focus but not speed.

**Survives if.** The one site is chosen for both high assayed grade and demand-led basket (SPO-O1/OC-6) so the single result is as informative and as bankable as a single result can be; the first license is explicitly framed as a pilot reference price, not the portfolio rate, to contain the W-BASE anchoring risk; and burn is held low enough (DIS-O3 micro-vehicle discipline) that one stream can carry it. It does not survive as a thesis proof if the site is unrepresentative or the first rate is allowed to set the portfolio anchor.

**Fragility flag.** More robust than OPT-2 on capital and execution, weaker on the generalizability of its proof; holds up reasonably under the Unit 3 moves, which is itself a signal worth surfacing.

### OPT-4 — Validation-Services-First, Royalty-Later

**Weakest assumption.** That operators will pay for per-site characterization and pilot validation as a standalone product, and that a paid validation engagement converts into a royalty license rather than cannibalizing or disclosing the very thing the royalty would be charged for.

**Attack (DISSENT lead; MILL, ROYALTY, CRUCIBLE, PILOT co-lead).** The conversion assumption is the soft center. A customer who has paid for and received the validation has obtained the proof and much of the know-how; with no clean exclusive right yet secured (W-RIGHTS unresolved), that disclosure can leak the differentiating fine-particle method before LiT can defend it, and the customer gains the option to deploy incumbent kit informed by what it learned (T-COMPETE: majors already fund and run rival leaching tech in these accounts). ROYALTY/CAPITAL: a paid-services business is a different company than a royalty licensor, with consulting-grade margins, a different customer relationship, and a different exit story; it weakens, not strengthens, the O-EXIT process-licensing-multiple narrative the financial cure depends on. PILOT: services-first is heavier on near-term field team, not lighter, because deployable characterization and pilot crews must exist before the first engagement; it pulls W-TEAM load forward against the thin seed. DISSENT: presenting a services engagement as customer-funded de-risking of W-UPLIFT and W-GRADE is attractive, but it risks selling the proof and keeping the risk, the inverse of the intended trade.

**Survives if.** Validation engagements are run only under an executed license or a binding option-to-license with strong confidentiality and IP-assignment terms, so the proof cannot be taken and reused; the rights gate (W-RIGHTS) is far enough along that LiT has something defensible to disclose; and the services line is positioned as a sequencing wedge into the royalty, not as the standalone business model. It does not survive if validation is sold before rights are secured.

**Fragility flag.** Robust on early non-dilutive cash and on customer-funded de-risking; fragile on rights-leakage and on conversion. Favored under DISSENT's gate-fail sensitivity (Unit 3 move a) alongside OPT-1, but only in the rights-protected form.

### OPT-5 — Strategic-Partner / Out-License / Absorb

**Weakest assumption.** That a credible counterparty will pay meaningful value for LiT's position before the two gates clear, and that LiT holds the bargaining leverage to extract that value rather than be routed around.

**Attack (DISSENT lead; ROYALTY, CAPITAL, CHOKEPOINT co-lead).** Pre-validation and pre-rights, the asset is an unvalidated recovery uplift (F-2) on a pending PCT (F-1) sitting behind a prior MRC right (U-1). A sophisticated strategic prices that near its option value, which is low, or declines to pay LiT at all and instead approaches VTIP to license the underlying art directly, routing around LiT entirely. T-COMPETE sharpens this: the majors who would be the buyers already fund Jetti and Ceibo and run incumbent kit, so they have a credible walk-away and little reason to pay up for an unproven alternative. CAPITAL: selling at this stage realizes the weakness rather than the value; it converts two unresolved single points of failure into a discount the buyer keeps. DISSENT's own framing (DIS-O2) places this move after the rights clear, as a deliberate monetization of a proven position; pulled forward to before the gates, it is the lowest-value moment to transact.

**Survives if.** At least the rights gate (and ideally a first validation result) has cleared, so LiT sells a de-risked position from a position of strength; the counterparty cannot cheaply replicate the route to VTIP; and the deal is structured to capture upside (royalty-on-royalty or earn-out) rather than a depressed lump sum. As an early exit it does not survive its own weakest assumption; as a post-gate option it is sound and is carried as such.

**Fragility flag.** Timing-fragile: strong after the gates, weak before them. Its score must be read as conditional on when it is exercised, a point the Unit 3 matrix will annotate rather than average away.

### OPT-6 — Build-Own-Operate / Operator-Funded JV Producer

**Weakest assumption.** That an operator will fund the capex of a JV built on LiT's unvalidated process when it could fund its own or a proven incumbent's, and that LiT could carry producer-level liability, capital, and operating load if one did.

**Attack (DISSENT lead; WATERSHED, CAPITAL, PILOT co-lead).** This option inverts every containment decision Rounds 02-03 made. WATERSHED: operating recovery plants on tailings loads T-LIABILITY at its maximum; LiT takes possession and process-title exposure and steps onto the self-operate path the licensed-process-inside-the-plant positioning (OC-4) was specifically chosen to avoid, with CERCLA PRP standing and no Good-Samaritan cover banked. CAPITAL: it abandons the asset-light, no-client-capex line (RR-14) that the entire fundability case (S-FUNDABLE) rests on; W-CAPITAL turns from High to existential, and full commodity-price exposure on the metal margin (T-PRICE) lands with no royalty floor or collar to dampen it. PILOT: LiT cannot staff, permit, or run a production operation on the team and capital it can realistically fund (W-TEAM, W-CAPITAL); this is the execution-feasibility floor of the set. DISSENT notes no seat proposed this as preferred; it exists only so the full axis is scored. The operator-funding premise is the load-bearing fiction: a producer rational enough to fund a plant will fund a validated process, and until W-UPLIFT clears LiT has nothing that earns that funding.

**Survives if.** Both gates have cleared with a strong validated uplift, an operator independently wants the metal margin and is willing to fund and indemnify, and LiT deliberately chooses to trade asset-light fundability for capture. None of those hold in the base case; the option is carried for completeness, not as a live recommendation.

**Fragility flag.** Fails on capital efficiency, execution feasibility, and liability simultaneously; the most fragile option in the set under every Unit 3 move. Retained on the matrix as the high-capture pole so the trade-off is visible, not hidden.

### Cross-option reading (no new content; pattern only)

Three patterns emerge from the attacks and are carried into Unit 3 without pre-judging the scores. First, every proceed option's weakest assumption traces back to one of the two gates: each collapses differently if W-RIGHTS or W-UPLIFT fails, which is the structural case for the gating override and for DISSENT's pass/fail sensitivity. Second, two options (OPT-4 services-first, OPT-5 partner/exit) are timing-conditional: each is sound on one side of the gates and weak on the other, so their scores must be read as posture-at-a-point, not as flat rankings. Third, the execution-feasibility cut (PILOT) bites hardest exactly where scope is widest (OPT-2 full scope, OPT-6 producer) and lightest where scope is narrowest (OPT-1, OPT-3, OPT-4), which is the evidentiary basis for testing C7-up in Unit 3. No attack cleared any gate or softened any confirmed weakness; all CONTESTED-SPLITs remain preserved.

---

## Unit 3 — Scored trade-off matrix, overlay modifiers, and sensitivities

This unit scores each option 1-5 on the eight Unit 1 criteria, each score carrying a one-line evidentiary basis traceable to a Round 01-02 finding (a score with no basis is not admitted), computes the weighted composite, applies OVL-A and OVL-B as signed modifiers shown separately from the base scores, and re-runs the composite under the four pre-committed sensitivity moves to flag fragile options. The composite ranks **design quality conditional on the gates being clearable**; it does not release the two conditional kill-switches and does not authorize proceeding (gating override, Unit 1). The CONTESTED-SPLIT on C1/C2 (DISSENT: pass/fail gates, not weighted criteria) is preserved and is tested directly as sensitivity move (a).

### Reading the C1/C2 scores (gating override, restated)

C1 and C2 are scored here in their **weighted-criterion mode only**: how well each option *contains and sequences* the technical and rights risk relative to the others. This is why OPT-1, which spends nothing past the gate, scores highest on C1/C2, and OPT-6, which bets full scale before either gate clears, scores lowest. These scores never assert that W-UPLIFT or W-RIGHTS has cleared. The gate-fail world is scored separately as move (a).

### Base scores with evidentiary basis (1-5)

**OPT-1 — Conditional Stop / Rights-and-Validation-Only Vehicle**

| Crit | Score | Evidentiary basis (one line) |
|------|:-----:|------------------------------|
| C1 Technical feasibility | 5 | The option *is* the W-UPLIFT validation gate; maximal containment of technical risk by spending only to validate before any scale commitment. |
| C2 IP defensibility | 5 | Prioritizes clearing W-RIGHTS (U-1) before commitment and spends nothing past it; maximal rights-risk containment. |
| C3 Risk-adjusted return | 2 | No revenue by design (W-MODEL moot, nothing banked); return is preserved optionality plus returned unspent capital, not cash. |
| C4 Adoption probability | 2 | Does not engage the T-ADOPT commercial sale; adoption neither advanced nor proven. |
| C5 Capital efficiency | 5 | Lowest burn, hard kill-date/budget, no client capex; best match to the thin single-tranche seed (CAP-W1). |
| C6 Time-to-revenue | 1 | No first cash by construction; all revenue deferred to a later proceed decision. |
| C7 Execution feasibility | 4 | Narrowest scope, lightest team load of the set (PILOT), though the validation team is most of the technical org. |
| C8 Policy durability | 2 | No positioning realized while standing at the gate; O-POLICY tailwind unbanked and unengaged. |

**OPT-2 — Gated Asset-Light Licensor (full intended scope)**

| Crit | Score | Evidentiary basis (one line) |
|------|:-----:|------------------------------|
| C1 Technical feasibility | 2 | Full multi-feedstock/REE scope offered before a second validated feedstock exists (only CRU-O1 has executed bench basis); widest W-GRADE/T-GRADE exposure. |
| C2 IP defensibility | 3 | Licensor model is rights-appropriate, but broad scope widens the FTO/CHO-T2 surface; gate-dependent on W-RIGHTS like all proceed options. |
| C3 Risk-adjusted return | 3 | Largest gross upside (platform pipeline + O-EXIT re-rate) but most exposed to de-stacking under W-MODEL/T-PRICE/W-BASE; nets adequate. |
| C4 Adoption probability | 2 | Broad pipeline dilutes the thin channel against T-ADOPT/T-COMPETE; no concentration advantage. |
| C5 Capital efficiency | 2 | Heaviest raise need; the RR-14 staged-raise cure is itself capital-constrained off CAP-W1. |
| C6 Time-to-revenue | 2 | First cash at aggressive Month-25 with broad-pipeline BD dilution; long runway exposure. |
| C7 Execution feasibility | 1 | Widest scope on a W-TEAM-constrained org; MIL-W2 integration footprint multiplied across the pipeline (PILOT's worst case). |
| C8 Policy durability | 4 | Broadest platform aligns most with O-POLICY/S-POSITION; most surface for federal anchoring (unbanked). |

**OPT-3 — Narrow Single-Site, Single-Feedstock Beachhead**

| Crit | Score | Evidentiary basis (one line) |
|------|:-----:|------------------------------|
| C1 Technical feasibility | 4 | Scoped to the one feedstock with executed bench basis (CRU-O1); minimal W-GRADE/T-GRADE exposure; tightest match to validated S-SCIENCE. |
| C2 IP defensibility | 4 | Narrowest field-of-use scope = smallest FTO/CHO-T2 surface; still gate-dependent on W-RIGHTS. |
| C3 Risk-adjusted return | 2 | One royalty stream over near-full fixed per-deal cost may not clear burn; W-BASE first-rate anchoring risk; limited upside. |
| C4 Adoption probability | 3 | Concentrated BD on a single active-operator anchor (MIL-O1) improves per-deal odds versus a broad pipeline, but same slow T-ADOPT/T-COMPETE sale. |
| C5 Capital efficiency | 4 | Lowest-burn proceed option (DIS-O3 micro-vehicle discipline); fits CAP-W1; no client capex. |
| C6 Time-to-revenue | 3 | Focused single-deal pursuit can reach first cash sooner than a broad pipeline, though T-ADOPT pace still governs. |
| C7 Execution feasibility | 4 | One site, one integration (MIL-W2 incurred once); fits the W-TEAM-constrained org. |
| C8 Policy durability | 2 | A single site offers limited O-POLICY/S-POSITION surface; modest positioning capture. |

**OPT-4 — Validation-Services-First, Royalty-Later**

| Crit | Score | Evidentiary basis (one line) |
|------|:-----:|------------------------------|
| C1 Technical feasibility | 4 | Per-site paid validation directly retires W-UPLIFT/W-GRADE on real feedstock; strong technical-risk sequencing. |
| C2 IP defensibility | 2 | Paid validation discloses the differentiating fine-particle method before W-RIGHTS is secured; leakage risk (Unit 2 soft center, T-COMPETE). |
| C3 Risk-adjusted return | 2 | Consulting-grade margins plus conversion risk weaken the O-EXIT process-licensing-multiple story; a lower-multiple business. |
| C4 Adoption probability | 3 | Services is a lower-commitment first "yes," but royalty conversion is unproven; nets adequate. |
| C5 Capital efficiency | 3 | Non-dilutive services cash offsets, but deployable crews pull W-TEAM cost forward against the thin seed; net adequate. |
| C6 Time-to-revenue | 4 | Services cash arrives earliest of any option; best time-to-first-revenue. |
| C7 Execution feasibility | 2 | Deployable characterization/pilot crews must pre-exist the first engagement; heavier near-term, not lighter (PILOT). |
| C8 Policy durability | 3 | Per-site validation aligns with the federal tailings-characterization push; moderate O-POLICY capture. |

**OPT-5 — Strategic-Partner / Out-License / Absorb** (scored in its base-case **pre-gate** posture; post-gate annotation below)

| Crit | Score | Evidentiary basis (one line) |
|------|:-----:|------------------------------|
| C1 Technical feasibility | 3 | Transfers technical execution to the counterparty, but pre-gate the uplift is unvalidated (F-2); neutral. |
| C2 IP defensibility | 2 | Pre-rights, the counterparty can approach VTIP directly (U-1) and route around LiT; weak leverage. |
| C3 Risk-adjusted return | 2 | A pre-gate transaction prices near low option value; the buyer keeps the de-risking discount (CAPITAL). |
| C4 Adoption probability | 2 | Single-counterparty dependent; the major buyers have credible walk-away (fund Jetti/Ceibo) and little reason to pay up (T-COMPETE). |
| C5 Capital efficiency | 4 | The transaction removes LiT's capital requirement entirely; capital-efficient by construction (value depressed). |
| C6 Time-to-revenue | 4 | A closed deal is the earliest single cash event; immediate if executed. |
| C7 Execution feasibility | 4 | Transaction-only load; no build/sell/integrate burden on W-TEAM. |
| C8 Policy durability | 2 | Positioning/policy upside transfers to the acquirer; LiT retains no durable tailwind. |

Post-gate annotation (DIS-O2 intended posture): with W-RIGHTS cleared and a first validation result in hand, C2 rises to 4 (de-risked position sold from strength), C3 to 4 (priced on value not option value), and C4 to 3 (broader credible-buyer set). The score below is the pre-gate floor; the matrix carries OPT-5 as posture-at-a-point, not a flat ranking.

**OPT-6 — Build-Own-Operate / Operator-Funded JV Producer** (high-capture pole, carried for axis completeness)

| Crit | Score | Evidentiary basis (one line) |
|------|:-----:|------------------------------|
| C1 Technical feasibility | 1 | Producer-scale commitment on the unvalidated uplift (F-2/W-UPLIFT); maximal technical exposure. |
| C2 IP defensibility | 2 | Still depends on W-RIGHTS to operate; the producer model does not strengthen defensibility. |
| C3 Risk-adjusted return | 2 | Full metal-margin upside but full commodity exposure (T-PRICE) with no royalty floor or collar; high-variance. |
| C4 Adoption probability | 1 | The operator-funding premise is the load-bearing fiction; a rational producer funds a validated process, not LiT's (T-COMPETE). |
| C5 Capital efficiency | 1 | Abandons the RR-14 no-client-capex line; W-CAPITAL turns existential; worst capital fit. |
| C6 Time-to-revenue | 1 | Plant build plus permitting is the longest path to first cash. |
| C7 Execution feasibility | 1 | A production operation is unstaffable on the W-TEAM/W-CAPITAL-constrained org; execution-feasibility floor of the set. |
| C8 Policy durability | 3 | Producers are the favored recipients of government capital (T-COMPETE government-capital leg); highest policy-capture surface if realized. |

### Weighted composite (central weights, 1.00-5.00)

Composite = Σ (weight_i / 100 × raw_i). Contributions shown so each is traceable.

| Option | C1×.16 | C2×.18 | C3×.16 | C4×.14 | C5×.12 | C6×.10 | C7×.08 | C8×.06 | **Composite** | Rank |
|--------|:------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|:-------------:|:----:|
| OPT-1 | 0.80 | 0.90 | 0.32 | 0.28 | 0.60 | 0.10 | 0.32 | 0.12 | **3.44** | 1 |
| OPT-3 | 0.64 | 0.72 | 0.32 | 0.42 | 0.48 | 0.30 | 0.32 | 0.12 | **3.32** | 2 |
| OPT-4 | 0.64 | 0.36 | 0.32 | 0.42 | 0.36 | 0.40 | 0.16 | 0.18 | **2.84** | 3 |
| OPT-5 (pre-gate) | 0.48 | 0.36 | 0.32 | 0.28 | 0.48 | 0.40 | 0.32 | 0.12 | **2.76** | 4 |
| OPT-2 | 0.32 | 0.54 | 0.48 | 0.28 | 0.24 | 0.20 | 0.08 | 0.24 | **2.38** | 5 |
| OPT-6 | 0.16 | 0.36 | 0.32 | 0.14 | 0.12 | 0.10 | 0.08 | 0.18 | **1.46** | 6 |

**Central-weight reading.** The two most disciplined options lead: OPT-1 (stand at the gate, spend nothing past it) and OPT-3 (narrow single-site beachhead). The full-scope convergent center OPT-2 ranks fifth, behind even the pre-gate floor of OPT-5, because the central weights tax exactly the things full scope strains: technical breadth ahead of evidence (C1), capital hunger (C5), and execution load (C7). This is the matrix making the gating override visible in numbers: the best-designed posture given unresolved gates is to clear them cheaply (OPT-1) or on one well-chosen deal (OPT-3), not to commit full scope (OPT-2) or full scale (OPT-6). The composite ranks design, not permission to proceed.

### Overlay modifiers (signed, shown separately from base scores)

Overlays are not standalone rows; they attach to whichever proceed option leadership selects and are recorded as signed deltas so the base score and the overlay effect never blur. None of the overlay upside is banked in the base case.

**OVL-A — Federally-Anchored Allied Recovery.** Signed modifier: **C8 +1 band** (capped at 5), with explicit note that transmission to LiT revenue is unproven (O-POLICY transmission never rose above Assumption/Medium). Composite delta = +0.06 for any attaching option. Illustration: OPT-3 → C8 2→3, composite 3.32 → 3.38; OPT-2 → C8 4→5, composite 2.38 → 2.44. The overlay does not change any ranking; by design (C8 weight 6) a policy story cannot rescue a weak option.

**OVL-B — Allied R&D Base with Managed Export-Control.** Signed modifier: **C1 +1 and C5 +1** (cost-and-capability offset from a lower-cost allied R&D base) against **C2 −1** (export/IP-control tension, CHO-T2). Composite delta = +0.16 (C1) + 0.12 (C5) − 0.18 (C2) = **+0.10 net**, but the negative lands on the highest-weighted gate criterion. DISSENT flag: a net-positive composite delta that is achieved by lowering the IP-defensibility gate score is exactly the kind of blur the gating override guards against; OVL-B's C2 drag must be read as worsening the load-bearing rights position, not as a free capability gain. Illustration on OPT-3: C1 4→5, C5 4→5, C2 4→3, composite 3.32 → 3.42, with the C2 caution attached.

### Sensitivities (four pre-committed moves)

Each move re-runs the composite; an option that wins only under the central weights and loses under a move is flagged fragile.

**Move (a) — DISSENT pass/fail on C1/C2 (gates fail).** The CONTESTED-SPLIT made operational: if W-RIGHTS or W-UPLIFT fails, C1 and C2 stop being weighted and become binary. Every proceed option that requires *clearing* the gates to deliver value collapses to its gate-failed score (C1=C2=1); OPT-1 retains 5/5 because its value is precisely standing at the gate and not spending past it.

| Option | Composite (gate-fail) | Δ vs central |
|--------|:---------------------:|:------------:|
| OPT-1 | 3.44 | 0.00 (robust by construction) |
| OPT-3 | 2.30 | −1.02 |
| OPT-4 | 2.18 | −0.66 (but retains non-dilutive services cash; see note) |
| OPT-2 | 1.86 | −0.52 |
| OPT-5 (pre-gate) | 2.56 | −0.20 (already prices the unresolved gates) |
| OPT-6 | 1.10 | −0.36 |

The arithmetic understates the real effect: under genuine gate-fail the proceed options are not merely lower-scored, they are *off the table* (no business to run). The coherent survivors are OPT-1 and, for non-dilutive cash while the rights question is decided, the **rights-protected** form of OPT-4 (services run only under an executed option-to-license with IP-assignment, per its Unit 2 survival condition). This is the deliberation's central structural result: the disciplined floor dominates outright the moment the gates are treated as binary, which is DISSENT's whole point and is preserved, not resolved.

**Move (b) — C7 execution feasibility re-weighted up (PILOT caution).** C7 raised 8→16, funded by C6 10→6 and C8 6→2 (sum stays 100).

| Option | Composite | Δ | Rank |
|--------|:---------:|:--:|:----:|
| OPT-1 | 3.64 | +0.20 | 1 |
| OPT-3 | 3.44 | +0.12 | 2 |
| OPT-5 (pre-gate) | 2.84 | +0.08 | 3 |
| OPT-4 | 2.72 | −0.12 | 4 |
| OPT-2 | 2.22 | −0.16 | 5 |
| OPT-6 | 1.38 | −0.08 | 6 |

Confirms PILOT's caution: weighting execution feasibility up widens the gap. The narrow-scope options (OPT-1, OPT-3) gain; the wide-scope options (OPT-2, OPT-6) fall further. OPT-2's full-scope form is the option most penalized when execution load is taken seriously.

**Move (c) — C8 policy durability set to zero (transmission unproven).** C8 weight removed; composites renormalized to the remaining 94 weight to keep the 1-5 scale comparable.

| Option | Composite | Rank |
|--------|:---------:|:----:|
| OPT-1 | 3.53 | 1 |
| OPT-3 | 3.40 | 2 |
| OPT-4 | 2.83 | 3 |
| OPT-5 (pre-gate) | 2.81 | 4 |
| OPT-2 | 2.28 | 5 |
| OPT-6 | 1.36 | 6 |

Ranking unchanged. No option depends on the policy story to place; OPT-2 and OPT-6 are not rescued by removing it. The low C8 weight is doing its intended job: a policy narrative cannot inflate a weak option.

**Move (d) — C4 adoption one band down across the board (T-ADOPT realized worse than modeled).** Each option's C4 raw reduced by one band (floor 1).

| Option | Composite | Rank |
|--------|:---------:|:----:|
| OPT-1 | 3.30 | 1 |
| OPT-3 | 3.18 | 2 |
| OPT-4 | 2.70 | 3 |
| OPT-5 (pre-gate) | 2.62 | 4 |
| OPT-2 | 2.24 | 5 |
| OPT-6 | 1.46 | 6 |

Ranking stable. A worse-than-modeled adoption environment compresses every revenue-bearing option but does not reorder them; OPT-1 (which banks no adoption) is least affected, reinforcing it as the floor.

### Fragility flags (carried to Unit 4)

- **OPT-1 — robust.** Leads or co-leads under every move; the only option robust to gate-fail by construction. Its weakness is structural, not analytic: it banks no revenue and no time-to-revenue, so it is a floor and a decision-deferral, not a destination.
- **OPT-3 — robust; the most robust proceed option.** Consistent #2, within ~0.12 of OPT-1 on central weights, and it *gains* under the execution-feasibility move. The matrix's strongest evidence-backed proceed posture given unresolved gates.
- **OPT-2 — FLAGGED FRAGILE.** Fifth on central weights and falls further under both move (b) C7-up and move (d) C4-down; never rescued by the policy story (move c); collapses hardest in relative design terms under gate-fail. Its full-scope-at-once form is dominated; it is sound only in the sequenced form from its Unit 2 survival condition (validated feedstocks only, staged raise, concentrated BD), which is operationally close to OPT-3 scaling into OPT-2 after the gates clear.
- **OPT-4 — conditional.** Mid-table and rights-leakage-fragile (lowest C2 of the credible options); valuable specifically as the non-dilutive cash wedge under gate-fail, but only in its rights-protected form. Posture, not standalone destination.
- **OPT-5 — timing-fragile (posture-at-a-point).** Pre-gate floor scored here; post-gate it rises to mid-pack on C2/C3/C4. Carried as a deliberate post-gate monetization (DIS-O2), never as an early exit.
- **OPT-6 — most fragile.** Last under every move; fails on capital, execution, and liability simultaneously. Retained only as the visible high-capture pole.

### What Unit 3 establishes for Unit 4 (no recommendation made here)

The scored matrix and all four sensitivities point the same direction without yet choosing it: given two unresolved conditional kill-switches, the evidence favors a **disciplined, gate-first posture** (clear W-RIGHTS and W-UPLIFT cheaply and on one well-chosen deal) over full-scope or full-scale commitment, and that ordering is robust to every committed sensitivity move. OPT-1 and OPT-3 dominate; OPT-2's value is real but only in its sequenced form, which is OPT-3-scaling-into-OPT-2 after the gates clear; OPT-4 (rights-protected) and OPT-5 (post-gate) are conditional postures, not destinations; OPT-6 is the carried pole. No gate was cleared, no confirmed weakness softened, and the C1/C2 CONTESTED-SPLIT is preserved and now quantified as move (a). Unit 4 will convert this into a recommended direction with a dissent log and explicit change-triggers.

---

## Unit 4 — Recommended direction, dissent log, and change-triggers

This unit selects the direction LiT leadership should take, grounded strictly in the Unit 3 matrix and its four sensitivities and bound by the Unit 1 gating override. It does not introduce new evidence, clear any gate, or soften any confirmed weakness. It converts the scored finding ("a disciplined, gate-first posture dominates, robustly") into a single sequenced strategy that leadership can execute, with the dissent preserved and the conditions that would change the recommendation named in advance. Round 05 turns the selected direction into a phased execution architecture; this unit fixes the direction, not the build.

### The recommendation

**LiT should not choose among the six options as rival destinations. It should run them as an ordered sequence governed by the two gates, and commit capital one stage at a time.** The recommended direction is a **gated, narrow-first asset-light licensing path**, expressed in four sequenced stages with hard go/no-go decisions between them:

- **Stage 0 — Gate-clearing vehicle (this is OPT-1, and it is mandatory, not optional).** Before any commercial scope is committed, LiT runs a deliberately minimal, time-boxed program whose only job is to clear the two conditional kill-switches: secure an executed exclusive, sublicensable, field-of-use license from VTIP that clears the prior MRC rights with freedom to operate (W-RIGHTS / U-1), and validate the recovery uplift in percentage points against a named baseline through a continuous pilot on representative feedstock (W-UPLIFT / F-2). This stage is OPT-1 by construction: it spends only to validate, carries a pre-committed kill date and budget, and returns or redeploys unspent capital if either gate fails. It scored highest on the central weights (3.44) and is the only option robust to gate-fail by construction. It banks no revenue, which is its known cost, not a flaw to be cured.

- **Stage 1 — Narrow beachhead (this is OPT-3), entered only after both gates clear.** With rights secured and a first validated uplift in hand, LiT signs one license on a single, deliberately chosen active-operator site selected for high assayed grade and a demand-led mineral basket (OC-6 / SPO-O1), structured as licensed-process-inside-the-operator's-plant (OC-4) to hold T-LIABILITY at its collapsed, license-to-the-title-holder level. The first rate is framed explicitly as a pilot reference price, not the portfolio anchor, to contain the W-BASE anchoring risk. OPT-3 is the most robust proceed option in the matrix: consistent #2 within ~0.12 of OPT-1, and the only proceed option that *gains* when execution feasibility is weighted up. Burn is held to a level a single royalty stream can plausibly carry (DIS-O3 discipline).

- **Stage 2 — Disciplined widening (this is OPT-2, and only in its sequenced form).** Scope broadens to additional feedstocks and sites **only as each is independently validated** and only against a staged raise tied to proof milestones (RR-14, hard no-client-capex line). This is the sole form in which the convergent-center full-scope ambition survives its own Unit 2 attack: OPT-2 offered full scope at once is dominated (fifth on central weights, fragile under C7-up and C4-down), but OPT-3-scaling-into-OPT-2 after the gates clear is exactly the sequencing its survival condition requires. Full scope is the eventual destination of the business, reached by walking, never the opening posture.

Two non-base-case postures are held as **named, conditional branches**, not as the main line:

- **A rights-protected services wedge (OPT-4) is available during Stage 0/1 as a non-dilutive cash bridge,** but only run under an executed option-to-license with IP-assignment and confidentiality terms (its Unit 2 survival condition), so the proof cannot be bought and reused. It is the coherent companion to OPT-1 specifically under gate-fail, where it is the only way to earn while the rights question is decided. It is a financing posture, not the business model.

- **A strategic-monetization exit (OPT-5) is reserved for a deliberate post-gate decision (DIS-O2),** taken from strength once rights are cleared and a validation result exists, never as an early sale that realizes the weakness and lets the buyer keep the de-risking discount. It is an exit on the value, available later, not a hedge taken now.

**OPT-6 (build-own-operate) is rejected as a direction.** It inverts every containment decision Rounds 02-03 made, is last under every sensitivity move, and fails on capital, execution, and liability simultaneously. It is retained on the record only as the visible high-capture pole so the trade-off LiT is declining is explicit.

### Why this direction and not the highest single composite

OPT-1 scored highest (3.44), but selecting OPT-1 *as the destination* would be a misreading of the matrix the gating override exists to prevent: OPT-1 banks no revenue and is a decision-deferral, a floor, not a business. The correct reading is that OPT-1's dominance is the matrix saying **"clear the gates before committing scope,"** not "stop." The recommended sequence honors that by making OPT-1 the mandatory Stage 0 and OPT-3 the first revenue-bearing stage, so the company captures OPT-1's discipline (spend nothing past the gate) and OPT-3's robustness (the strongest proceed posture) in their correct order rather than treating them as competitors. This is the only construction in which the central-weight ranking and the gate-fail sensitivity agree: under move (a), OPT-1 and rights-protected OPT-4 are the sole survivors; under central weights, OPT-1 then OPT-3 lead; the sequence is built from exactly those robust elements.

### Dissent log (preserved, not resolved)

| # | Dissent | Held by | Status in the recommendation |
|---|---------|---------|------------------------------|
| D-1 | **The two gates are pass/fail preconditions, not weighted criteria.** Weighting C1/C2 at 16/18 risks a reader treating a strong composite as permission to proceed before rights and uplift clear. | DISSENT (carried from W-RIGHTS / W-UPLIFT kill-switch rulings; CONTESTED-SPLIT) | **Upheld and made structural.** The recommendation is a gate-*first* sequence in which Stage 0 is mandatory and no scope is committed until both gates clear on acceptable terms. The composite is used only to order option *design* behind the gates, exactly as the gating override stipulates. The split is preserved: DISSENT's reading ("do-not-proceed-as-framed until the gates clear") and the company reading ("gateable, then proceed in sequence") are not merged; the sequence is the construction on which both agree about Stage 0. |
| D-2 | **Execution feasibility is under-weighted at C7=8; the wide-scope options understate their delivery risk.** | PILOT | **Accepted into the direction.** Tested as sensitivity move (b), which confirmed the caution and is the reason the recommendation places OPT-2 (widest scope) only after OPT-3 (one integration, fits the W-TEAM-constrained org) and gates Stage 2 widening on staged capital. The narrow-first ordering is the operational answer to the C7 concern. |
| D-3 | **A paid validation/services line can sell the proof and keep the risk** if run before rights are secured. | DISSENT, ROYALTY, CRUCIBLE | **Honored as a constraint.** OPT-4 is admitted only in its rights-protected form (executed option-to-license with IP-assignment) and only as a financing branch, never as the model. If the rights gate has not cleared far enough to give LiT something defensible to disclose, the services wedge is not run. |
| D-4 | **An early strategic sale realizes the weakness, not the value.** | DISSENT, CAPITAL | **Honored.** OPT-5 is reserved for a deliberate post-gate decision (DIS-O2); pre-gate monetization is explicitly excluded from the recommended direction. |
| D-5 | **OVL-B's net-positive composite is achieved by lowering the IP-defensibility gate score** (C2 −1), which is the blur the gating override guards against. | DISSENT | **Carried as a caution on the overlay, not a rejection.** If the allied-R&D-base overlay is later adopted, its C2 drag must be read as worsening the load-bearing rights position (CHO-T2), not as a free capability gain; it is not netted into a single number in the recommendation. |

No dissent is recorded as resolved that is not. The load-bearing CONTESTED-SPLIT (D-1) remains the spine of the strategy: the recommendation is acceptable to the company side *because* it is gate-first, and acceptable to DISSENT *because* Stage 0 is genuinely a stop-unless-cleared, with a real kill date and budget.

### Change-triggers (the conditions that would change the direction)

These are pre-committed so the decision is revisited on evidence, not on optimism. Each names what would have to be observed and what the company does in response.

| Trigger | Observable | Direction change |
|---------|-----------|------------------|
| **CT-1 — Rights gate fails or stalls.** | No executed exclusive, sublicensable, field-of-use VTIP license clearing MRC prior rights within the Stage 0 time-box (U-1 unresolved at kill date). | Do not enter Stage 1. Fall to OPT-1's abandonment fork (return/redeploy unspent capital) or, if a defensible disclosure position exists, the rights-protected OPT-4 services wedge only. This is move (a) realized: proceed options are off the table, not merely lower-scored. |
| **CT-2 — Uplift validates below the threshold the royalty math requires.** | Continuous-pilot recovery uplift, in percentage points vs the named baseline, lands below the level that makes a re-based royalty (RR-6) clear burn on a single stream. | Do not enter Stage 1 at the modeled rate. Either re-scope to a site/feedstock where the validated uplift clears, or fall to the abandonment fork. The headline resource figures stay restated as per-site-assay-dependent (W-GRADE) regardless. |
| **CT-3 — First-deal economics do not clear burn.** | Stage 1 single royalty stream, at the validated uplift and re-based rate, does not cover the fixed per-deal cost (BD + MIL-W2 integration + RR-16 characterization). | Hold at Stage 1; do not widen to Stage 2. Reassess whether any asset-light royalty path is viable, or pivot to the post-gate OPT-5 monetization from the now-de-risked position. |
| **CT-4 — Adoption realizes materially slower than the conservative case.** | First conversion runs past the slow-case T-ADOPT window with runway exposed (W-CAPITAL coupling); pipeline signing rate tracks below the Jetti 3-of-23 conservative reference. | Do not fund Stage 2 widening; extend runway by invoking the OPT-4 non-dilutive services bridge and/or the post-gate OPT-5 option. Move (d) confirmed this compresses but does not reorder; the response is runway, not scope. |
| **CT-5 — A competitor or government program forecloses the position.** | A major funds a rival process (Jetti/Ceibo) into LiT's target accounts, or government capital anchors a producer-favored alternative, before Stage 1 signs (T-COMPETE). | Accelerate the post-gate OPT-5 monetization decision while the position still has scarcity value; do not chase scope into a foreclosed channel. |
| **CT-6 — Liability containment breaks.** | The licensed-process-inside-the-plant structure (OC-4) cannot be achieved at a candidate site, forcing a self-operate / orphaned-site posture with full CERCLA PRP standing (T-LIABILITY at its High level). | Reject that site; do not take title or process possession. Re-select to an active-operator, license-to-title-holder site, or hold. Never let a single deal pull LiT onto the self-operate path the positioning was chosen to avoid. |
| **CT-7 — Upside trigger: gates clear cleanly and the first site over-delivers.** | Both gates cleared on strong terms and Stage 1 validated uplift and economics beat the conservative case on a representative site. | *Then and only then* fund Stage 2 widening on a staged raise — the disciplined OPT-2 form — and consider OVL-A federal anchoring (with the OVL-B C2 caution, D-5). This is the one trigger that authorizes broadening. |

### What Unit 4 establishes for Unit 5

The recommended direction is fixed: a **gated, narrow-first asset-light licensing path** — mandatory Stage 0 gate-clearing (OPT-1), then a single well-chosen beachhead (OPT-3), then disciplined widening (sequenced OPT-2) only on validated proof and staged capital — with a rights-protected services wedge (OPT-4) and a post-gate strategic exit (OPT-5) held as named conditional branches, and OPT-6 rejected. The CONTESTED-SPLIT (D-1) is preserved as the spine; four further dissents are logged with their handling; seven change-triggers (CT-1..CT-7) pre-commit the conditions for re-deciding. No gate is cleared and no confirmed weakness softened by this selection. Unit 5 writes synthesis/STRATEGY.md (v1) as the client-grade statement of this direction, free of all scaffolding (no option codes, no round or seat names, no composite mechanics), opening with the recommended direction and supporting it with the evidence a reader can verify.
