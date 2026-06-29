# Round 06 — Pre-Mortem (batched divergent unit)

**Engagement:** Lithium Technologies, Inc. (LiT) seed-stage capital decision.
**Frame (locked, `rounds/r00-frame-lock.md`):** ADVISOR lens, prospective capital provider.
**Object of the pre-mortem:** the recommended convert-to path the Strategy and Execution documents designate, namely **Option 1 (Restructure-first)** on the `T1 → (Gate A ∥ Gate B) → Gate C → P3` spine, with the **Anchor escalation (T3)** held as a contingency configuration. (`synthesis/STRATEGY.md` §4.4; `synthesis/EXECUTION_PLAN.md` §1, §7.)

**Method (Playbook §Round 06.1):** It is 24 months out and the plan has failed. Each participating perspective writes the single most plausible cause of failure from its own domain, **sealed and blind to the others**, each under its own heading. No contribution references another; they are parallel positions, not a conversation. Participating seats: the core eight (CRUCIBLE, SPOT, CLAIM, ROYALTY, MILL, CAPITAL, WATERSHED, DISSENT) **plus PILOT** (active R04-R07). CHOKEPOINT is phase-scoped out after Round 04 and files no Round 06 contribution; its geo limbs (China price-suppression increment, government-offtake floor, allied positioning) are carried by SPOT and WATERSHED where relevant, per the seat-scope rule.

**Evidence discipline:** every claim is Cited, Assumption with a confidence band, or carries a `NEEDS EXTERNAL RETRIEVAL` pointer. Each failure mode states its evidence anchor, its likelihood band, and the earliest observable signal. Prose is direct; no em-dashes.

After the nine sealed positions, **Part B (Moderator feed-back)** routes every credible failure mode into the Execution Plan as either an earlier/new decision gate or a named contingency, per the Playbook dissent rule that failure modes may not be dropped for narrative tidiness. Part B is the only place the positions are allowed to interact.

---

## PART A — Sealed, blind failure-mode positions

### CRUCIBLE (Process Metallurgist) — "Bench passed, scale never did"

It is 24 months out. Gate B was funded, an independent line was contracted, and the campaign ran. The number came back below the bench figure and kept sliding as feed got coarser and more variable. The plan failed because **the recovery uplift is a bench-and-fines artifact that does not survive scaled, real-feedstock operation**, and no bounded P1 spend could retire that.

**Mechanism.** The deck's 16-19% uplift is a bench number. The locked analogs establish that fine and ultrafine flotation and HHS-type routes read *below* bench when piloted, and that validated scaled recovery across the closest analogs is years out, not the deck's Month-10/16 window. *(Cited: `research/r00-flotation-scaleup.md` W3; `research/r00-operator-qualification-cycles.md` W9; SWOT R-TECH-1 High, R-TECH-2 Elevated.)* When the campaign read at scale on an operator-relevant feed, the marginal uplift collapsed toward the elephant-curve limit. The "feedstock-agnostic" claim made it worse: every new feedstock reset the recovery and reopened the question. *(Cited: CRUCIBLE LiT-specific hooks; SWOT R-TECH-3.)*

**The specific way it killed the plan, not just the gate.** The danger is not a clean Gate-B "no." It is a **soft, ambiguous read** that comes back as "X% at semi-pilot on a convenient feed," close enough to argue, and the advisor, having sunk P1, reads "at scale" down to "bench-plus" to keep the option alive. That is the failure: a marginal number is laundered through Gate B, P2 capital releases, and the operator's own qualification then surfaces the true scaled performance two years and one growth round later, when capital is no longer preserved.

**Earliest signal.** The B2 campaign design negotiates the scale, the feed, or the basis downward (relative percent instead of percentage points; partner-convenient feed; semi-pilot rebadged as pilot). Any softening of the B2 protocol is the leading indicator, well before B4.

**Likelihood / confidence.** This is the **single most likely cause of total failure** in my domain. Moderate-to-High that scaled recovery disappoints relative to bench; High that if it does, no P1 spend retires it. **Fragility:** overturned only by an independent scaled number, stated on a defined baseline and basis, that holds on an operator-relevant feed. Until that exists, treat the uplift as unproven, not probable.

---

### SPOT (Critical-Minerals Economist) — "The royalty base was real but the price world wasn't"

It is 24 months out. The technology cleared its gates, a first reference even signed, and the deal still failed to deliver because **the revenue base was priced into one commodity world and the other one arrived**. Lithium re-rated down into a surplus trough, the REE tonnage was too thin to carry the shortfall, and the banded model that was supposed to protect against exactly this was quietly relaxed to a single optimistic price line when the term was written.

**Mechanism.** The documented lithium swing is roughly 2x inside twelve months and the 2026 surplus-vs-deficit forecasts are genuinely contested; REE shows ~2.6x intra-year swing on a market whose tonnage is small relative to its strategic profile. *(Cited: `research/r00-li-ree-price-forecasts.md` W8; SWOT R-REV-3 High, R-REV-4 Moderate.)* A 1%-type royalty on a price base that halves loses half its value with no operational fault. On top of the cyclical move sits a **China strategic price-suppression increment** that can hold the price down precisely when an allied entrant most needs margin. *(Cited: SWOT R-GEO-3 Moderate, carried from CHOKEPOINT.)*

**The specific way it killed the plan.** R-REV-3 is mitigated by an "analytical instrument," the banded dual-world model, not by a binary gate. *(Cited: EXECUTION_PLAN §5, R-REV-3 row.)* An instrument that lives in a spreadsheet is only as strong as the discipline of the person holding it under deal pressure. The failure is that at T1, with a willing counterparty in the room, the surplus-world band got treated as a pessimistic tail rather than a coin-flip, the term was priced off the deficit world, and when the surplus world showed up the return inverted. The model did not fail; it was overridden.

**Earliest signal.** The T1 term carries a single headline return number rather than a return *range* with both price worlds weighted near-equally; or the surplus-world IRR is never written down next to the deficit-world IRR in the committed materials.

**Likelihood / confidence.** High that one of the two price worlds materially disappoints over the horizon; Moderate that the band gets relaxed under deal pressure. Combined, a leading cause of value-destruction-without-technical-fault. **Fragility:** overturned by a durable government-offtake or price-floor mechanism actually attaching to the base. *(`research/r00-major-miner-techprograms.md` shows the revealed instruments are equity/in-house/product-of-process, not price floors, so this is not assumable.)* Until then the base is cyclical and the protection is only as good as the discipline.

---

### CLAIM (IP & Patent Strategist) — "There was nothing exclusive to license"

It is 24 months out. The validation number was fine. The deal failed because **at Gate A the company turned out not to hold an exclusive, FTO-clean right it could license**, and the thing it could defend was too thin to keep anyone out once the number was public.

**Mechanism.** The public record carries no granted, enforceable LiT filing, only a possibly-lapsed 2024-03 provisional; the live surface-chemistry HHS IP is VTIP-owned and already licensed worldwide to Minerals Refining Company, and what LiT holds toward it is an **option-to-license (Art. 13.4-13.6), not an executed license**. *(Cited: `research/r00-ip-patent-landscape.md` W1; `research/r00-company-queue-disposition.md` C3 sharpened; SWOT R-IP-1 High gating, R-IP-2/R-IP-3 Elevated.)* The sub-500 °C field is crowded prior art, so the leaching limb is not category-novel. *(Cited: `research/r00-lowtemp-spodumene-priorart.md` W2.)*

**The specific way it killed the plan.** Two distinct deaths, and the plan only guarded the first cleanly.
1. **The option lapses or is encumbered before it is converted.** If the VTIP option window closes, or MRC's worldwide HHS license is read to capture LiT's field, Gate A returns a disqualifying fact and P1 is the bounded loss. The plan handles this honestly as a hard stop. *(EXECUTION_PLAN §2.2 Gate A / T6.)*
2. **The quieter, more likely death: Gate A "clears" on a narrow, defensible-but-thin claim, and then the validated number itself teaches the field how to do it.** Once Gate B publishes a baselined recovery uplift, a major's in-house program or Glencore Technology designs around a thin claim within the same qualification cycle. The moat was incremental, not categorical (R-TECH-3, contained-not-removed), so exclusivity bought a head start, not a franchise. The plan captures value through a "narrow verifiable base," which is honest, but a narrow base on a thin moat is a narrow franchise.

**Earliest signal.** The executed VTIP license comes back field-of-use-limited or non-exclusive in the relevant field; or the independent FTO opinion can only clear LiT by scoping the claim so narrowly that it would not stop a competent design-around.

**Likelihood / confidence.** High that Gate A is genuinely binding (the IP question is unresolved on the record, not a formality); Moderate that even a cleared Gate A yields only a thin, designed-around-able moat. **Fragility:** overturned by an executed exclusive license plus a clean FTO opinion plus claims broad enough to survive a motivated design-around. None of those three is in evidence today.

---

### ROYALTY (Licensing Deal Architect) — "The structure we could close was not the structure we modeled"

It is 24 months out. Technology and IP held up, an operator was even willing, and the deal failed because **the only royalty structure an operator would actually sign was so much narrower than the modeled whole-mine NSR that the returns no longer cleared**, and the upfront leg that was supposed to bridge the gap never materialized.

**Mechanism.** The 1% whole-mine NSR is off-market and overstated; observed process-tech licensing norms and the revealed instruments of the named majors are improvement-based or product-of-process royalties, minority equity, or in-house build, **not** a percentage of the whole mine's revenue. *(Cited: `research/r00-licensing-norms.md` W4; `research/r00-major-miner-techprograms.md` W10; SWOT R-REV-1 High, R-REV-2 Moderate, R-ADOPT-4 Elevated.)* The plan correctly repapers onto a "verifiable narrow base" (metered licensed-process throughput) at T1. *(EXECUTION_PLAN §5, R-REV-1 row.)* The risk is what that repaper *costs*: a base narrowed from "whole mine" to "the incremental tonnage our process recovers" can be an order of magnitude smaller.

**The specific way it killed the plan.** The narrow base is the *honest* base, but the model's returns were built on the wide one. The upfront leg ($2M/$10M) was supposed to de-risk the back-loaded royalty, but the upfront in the deck sits on a collapsed greenfield-license pipeline. *(Cited: SWOT R-REV-5 Elevated.)* So in the failure case: the wide-base royalty is unsignable, the narrow-base royalty is signable but thin, the upfront has no pipeline to land on, and the "self-sustainability without a bridge" claim was always the missing bridge. The deal closes on terms that are real but do not return the cost of capital, which is a worse outcome than not closing, because capital is now committed and illiquid.

**Earliest signal.** At T1, the counterparty accepts the gating and repricing readily but **only against a base it defines** (its own metered uplift, net of its costs), and the resulting modeled royalty falls below the threshold that justified entry. Easy acceptance on a self-defined narrow base is the warning, not the win.

**Likelihood / confidence.** High that the signable base is materially narrower than modeled; Moderate that it falls below the return threshold. **Fragility:** overturned by a hybrid/TaaS or product-of-process structure that captures more of the created value, but those carry the liability and capital tails (R-ESG-2, R-REV-9) the licensing-first choice was made to avoid. The structure trade is real and unresolved.

---

### MILL (Mining Operator Voice / Customer) — "The buyer evaluated it, then built it themselves"

It is 24 months out. I am the operator. We looked at LiT seriously, we ran a long evaluation, and the deal failed because **once the process was de-risked enough for us to want it, it was de-risked enough for us to do without LiT**, on a structure we would never have granted to begin with.

**Mechanism.** Only about a quarter of qualified operators have even evaluated tailings reprocessing, so the buying population is thin and slow. *(Cited: `research/LiT_Market_Research_2026.md` adoption finding; SWOT R-ADOPT-2 High.)* The named target accounts already fund competing technologies, run incumbent fine-particle equipment, and have in-house leach R&D; every one of them can build, buy, or fund-a-competitor rather than license, and the revealed instruments confirm they prefer equity or in-house to a royalty. *(Cited: `research/r00-major-miner-techprograms.md` W10; SWOT R-ADOPT-1 High, R-ADOPT-5 Elevated.)* Glencore Technology is already in the channel as a license-model competitor with its own patents. *(Cited: W10; R-ADOPT-5.)*

**The specific way it killed the plan.** Adoption is per-operator and per-feedstock, on a ~2-3 year qualification cycle per site. *(Cited: `research/r00-operator-qualification-cycles.md` W9; R-ADOPT-2.)* During that long evaluation we learn the process, we see the (thin) claim scope, and we price the *all-in adoption cost*, integration, downtime, requalification, that the deck omitted. *(Cited: SWOT R-ADOPT-3 Elevated.)* At the end, three outcomes all kill the licensing thesis: we replicate around a thin claim; we buy the incumbent's already-qualified equivalent; or we offer minority equity instead of a royalty and the advisor's royalty model evaporates. The single-anchor T3 escalation does not save it, because **the anchor is one of these same self-substituting majors**: it converts pipeline concentration into counterparty concentration (R-ADOPT-1, contained-not-removed), and absent a hard field-of-use ring-fence that bars in-house replication, the anchor learns the process and walks.

**Earliest signal.** The target operator's interest is strong but routes to its corporate-development or in-house-R&D function rather than its procurement function; or the anchor will engage only without a ring-fence on replication.

**Likelihood / confidence.** High that a serious evaluation enables self-substitution on a thin moat; High that adoption, if it comes, comes on the ~2-3 year cycle, not the deck's calendar. **Fragility:** overturned by a contractual field-of-use ring-fence that demonstrably bars in-house replication and competitor funding for a defined period, signed by a counterparty with a real reason not to build. That counterparty has not been identified.

---

### CAPITAL (Growth Investor & CFO) — "The numbers held only as long as no one had to honor them"

It is 24 months out. Every gate behaved as designed, and the *capital* story still failed, because **the disciplines that lived in spreadsheets did not survive contact with a live term sheet and a growth round that had to be raised from someone else.**

**Mechanism.** Three soft points, none of them a gate.
1. **Entry repricing relaxes under deal pressure (R-REV-10, R-REV-7).** The $13M pre-money is seed-priced for pre-seed-level technical and IP risk. *(Cited: `research/r00-seed-valuation-norms.md` W7; SWOT R-REV-10.)* The plan repaper repays this at T1 only if the advisor actually holds the repriced entry. If the counterparty has another bidder (or claims to), the repricing discipline is the first thing traded away, and the advisor enters at a price the evidence does not support.
2. **The exit shape was never a clean multiple.** Recentered comps put cleantech at ~1.8x and software median ~2.6x revenue, not the deck's 8-10x; exits are upfront-plus-earnout, and the named "comps" are acquirers or venture marks, not realizations. *(Cited: `research/r00-exit-multiples.md` W6; SWOT R-REV-7 High.)* If the return was ever defended on a clean multiple, the exit underdelivers structurally.
3. **The P3 growth round cannot be raised at the repriced-up valuation.** The plan honestly replaces the deck's "no bridge / Year-3 self-sustainability" fiction with an explicit P3 growth round (R-REV-6). *(Cited: EXECUTION_PLAN §3.3 Conflict 1.)* But P3 only exists if Gate C clears *and* a new lead will price a growth round on a single reference into a slow, concentrated market. In the failure case Gate C clears late and thin, no growth lead appears at a step-up, and the position is stranded: too funded to write off cleanly, too unproven to mark up.

**The specific way it killed the plan.** The master multiplicative downside R-REV-8 and the time-to-revenue master R-ADOPT-2 are both mitigated by **one** mechanism, the staged option to not proceed (T2 and the abandon ceilings). *(Cited: EXECUTION_PLAN §5.3 standing master-risk flag.)* If T2 is mis-judged even once, both masters lose their mitigation simultaneously, and the staging that was the entire advantage of Option 1 over the deck evaporates. The capital failure is not a bad model; it is a single point of failure dressed as two independent protections.

**Earliest signal.** The T1 term is signed at or near the deck's original price; or the T2 sequencing analysis is accepted as "good enough" rather than affirmatively proven; or P3's prospective lead universe is never actually identified before P2 capital releases.

**Likelihood / confidence.** Moderate-to-High that at least one of the three soft points slips under live pressure; High that if T2 is mis-judged both masters fail together. **Fragility:** overturned by demonstrated pricing discipline written into the committed T1 term and a named, credible P3 lead universe before P2 funds. Neither exists yet.

---

### WATERSHED (ESG, Remediation & Regulatory) — "The green story became the legal exposure"

It is 24 months out. The deal failed not because the environmental thesis was false but because **the green and remediation claims were made before they were substantiated, and the gap became a liability the position could not outrun.**

**Mechanism.** Three claim defects all collapse into one unretrieved evidence file (C1). "No acidic byproducts" is a free-of claim that fails the FTC Green Guides unless the substitute-reagent trade-off is analyzed and scoped to "no *highly* acidic"; "~30% energy reduction" is a comparative claim Unsupported without a disclosed baseline; "lower carbon footprint/ton" is an implicit LCA claim with no LCA in the base. *(Cited: `research/r00-green-claims-substantiation.md` W13; `research/r00-esg-procurement-driver.md` W12; SWOT R-ESG-1 Elevated.)* The Guides expressly reach B2B licensing claims, and investor materials add a 10b-5 / disclosure surface. *(Cited: W13.)* Separately, if the model ever drifts to title, custody, or BOO of abandoned impoundments, default US CERCLA strict, joint-and-several, retroactive liability attaches, and the Good Samaritan shield is narrow (federal land only, no profit beyond cost recovery, 7-year pilot, NPL-excluded). *(Cited: `research/r00-tailings-liability.md` W11; SWOT R-ESG-2 Elevated, High under title/custody/BOO.)*

**The specific way it killed the plan.** The failure path is not a fine. It is that **the unqualified claims sit in the company's existing materials right now**, and the advisor, by funding and converting, inherits and amplifies them through its own investor materials before the C1 substantiation file exists. When the scaled number underperforms the claim (the same baseline gap that makes "~30%" unsupported is the gap that makes Gate B hard), the green claim becomes a misrepresentation with a paper trail, and the 10b-5 surface turns a technical disappointment into a securities-disclosure problem. The remediation thesis, sold as the asset, becomes the liability. ESG was never the procurement *driver* the deck implied; W12 shows recovery-tech procurement is economics-led, with ESG only a coincident accelerant through financing and insurance, so the green story carried legal downside without carrying commercial upside.

**Earliest signal.** Any investor or marketing material, the advisor's included, repeats an unqualified "no acidic byproducts / 30% / lower carbon" before the Gate A substantiation memo and the shared Gate B baselined-number file exist; or a BOO/custody structure is floated without a CERCLA + closure-bond line.

**Likelihood / confidence.** Moderate that an unqualified claim survives into committed materials; High that if it does and the number underperforms, it converts a technical miss into a legal exposure. **Fragility:** overturned by the Gate A limb-(iii) substantiation memo scoping every claim to defensible bench-stage wording *before* any conversion, sharing one evidence file with Gate B. The memo does not yet exist.

---

### PILOT (Execution & Scale-Up Operator) — "We could not stand up an independent line inside the envelope, so the gate was never real"

It is 24 months out. The plan failed at its own joints: **the de-risking gates the whole architecture depends on could not be produced, independently, inside the bounded P1 envelope and timeframe**, so either the gate was faked or the capital ran past it.

**Mechanism.** Gate B requires a scaled recovery number reproduced by a party **outside the founder and outside the partner R&D pool**, but the company's only process know-how sits with the academic partners (75% IIT-ISM Dhanbad / 25% Virginia Tech) and the VTIP-licensed MRC surface chemistry; there is no in-house validating principal until the CTO arrives in Year 3, *after* the gate that gates the most money. *(Cited: SWOT R-TECH-4; EXECUTION_PLAN §3.2-3.4.)* Standing up a genuinely independent scaled line costs money and time the ~$0.9M / ~12-month P1 envelope may not contain, because the analogs put validated scaled recovery years out. *(Cited: `research/r00-flotation-scaleup.md` W3; `research/r00-operator-qualification-cycles.md` W9.)*

**The specific way it killed the plan.** T2 is the binding uncertainty: can Gate A and Gate B run parallel and read inside ~12 months for ~$0.9M? *(Cited: EXECUTION_PLAN §6.2.)* The execution failure is concrete: the critical path B1→B2→B3→B4→A3 does **not** fit. An independent authority outside the partner pool either cannot be contracted at all (the only competent labs *are* the partner labs) or quotes a campaign that reads in 18-24 months, not 12. Faced with that, the two failure branches are (a) **relax independence**, let the partner labs run it, which fails the gate's whole purpose, or (b) **relax scale**, accept a semi-pilot number, which is CRUCIBLE's nightmare in execution clothing. The feed-forward interlock makes it harder still: the validation feedstock must simultaneously be operator-relevant *and* run by someone outside the partner pool, and those two constraints can be unsatisfiable at the same B1 vendor. *(Cited: EXECUTION_PLAN §6.4 flag 3.)* When they conflict, one gets quietly dropped, and the gate stops being real.

**Earliest signal.** At B1, the shortlist of independent validation authorities is empty, or every credible bidder is inside the partner pool, or the only outside bidder requires a feedstock the target operators do not run. Any of those at B1 means T2 was unprovable and should have failed.

**Likelihood / confidence.** Moderate-to-High that the independence-plus-relevance-plus-12-month-plus-$0.9M conjunction cannot all be met; this is the most likely *execution* cause of failure. **Fragility:** overturned by an actual, named, outside-the-pool validation authority that quotes an operator-relevant scaled campaign inside the envelope. That quote does not exist today; T2 must produce it, not assume it.

---

### DISSENT (Red Team) — "The advisor talked itself into the deal it was funding"

It is 24 months out. The plan failed in the way the charter named as the central hazard at the start: **neutrality lost to narrative.** Every gate had a soft edge, and under the accumulating pressure of sunk cost and a willing counterparty, each soft edge was read in the direction of proceeding. No single decision was indefensible; the *sequence* was fatal.

**Mechanism.** The engagement originates from a party that may hold or be considering a position in LiT; that is a neutrality hazard, not a thesis. *(Cited: Council §2.2.)* The plan's protections concentrate at exactly the points most exposed to that hazard:
- **T2 is a judgment, not an artifact.** "Parallel-readable inside ~12 months" is an analysis the advisor writes and the advisor accepts. A motivated advisor writes it to pass. *(Cited: EXECUTION_PLAN §6.4 flag 1.)*
- **R-REV-3 and R-REV-7 are mitigated by "analytical instrument," i.e. the advisor's own pricing discipline under deal pressure**, the one place the neutrality hazard bites hardest. *(Cited: EXECUTION_PLAN §5.3.)*
- **The §6.3 feed-forward is a designed channel for pre-commitment.** "Soft anchor scouting at zero commitment" and "choose the Gate B feedstock to match a real target operator" are exactly how an advisor builds a relationship it then cannot walk away from. The interlock that makes the plan efficient is the same interlock that makes abandonment emotionally and reputationally expensive. *(Cited: EXECUTION_PLAN §6.3, §6.4 flag 2.)*
- **The master pair R-REV-8 × R-ADOPT-2 share one mitigation.** The staged option to not proceed is the whole defense, and it is the advisor's own willingness to say no, repeatedly, against its own sunk cost. *(Cited: EXECUTION_PLAN §5.3.)*

**The specific way it killed the plan.** "Bench passes, scale never does" is the headline failure mode, but the *reason it is allowed to happen* is governance, not metallurgy. A truly independent reviewer halts at the first soft read. The advisor, having scouted an anchor, designed a feedstock around it, sunk $0.9M, and written its own T2 analysis, reads the ambiguous Gate B number as a pass, relaxes the entry repricing to close, and carries the optimism into committed P2 capital. Twenty-four months later the operator's qualification surfaces the real number and the position is stranded. The plan's own §6 neutrality-hazard flag named this and then handed the enforcement of it to the party with the conflict.

**Earliest signal.** The advisor cannot name, in advance and in writing, the *specific* result at each gate that would make it walk away; or gate decisions are made by the deal team rather than by a party with no position; or any gate's "pass" is argued from "we have come this far" rather than from the artifact.

**Likelihood / confidence.** High that at least one soft edge is read toward proceeding if no structural counter exists; this is the most likely *governance* cause of failure and the amplifier on every other seat's. **Fragility:** overturned only by a structural neutrality control external to the deal team, a pre-committed written abandon-spec per gate, and a no-position decision authority on the converts. The plan currently relies on self-discipline, which is the thing the charter said not to rely on.

---

## PART B — Moderator feed-back: every failure mode routed to an earlier gate or a contingency

Per the Playbook dissent rule, each credible failure mode above is fed back into the Execution Plan. The rule applied: a failure mode that an *artifact* can pre-empt becomes a **new or earlier gate / a hardened KPI**; a failure mode that can only be *bounded* becomes a **named contingency with a trigger and an abandon action**. Nothing is dropped. Items marked **[PLAN CHANGE]** are amendments the R07 synthesis must carry into the relevant document; items marked **[CONFIRMED]** were already in the plan and the pre-mortem ratifies them.

### B.1 The single most load-bearing result: governance is the binding mitigation, not metallurgy

CRUCIBLE, PILOT, and DISSENT converge from three independent domains on one structure: the headline failure is "bench passes, scale never does," but the *mechanism that lets it happen* is a soft read at a gate by a conflicted decision-maker. CAPITAL and SPOT add that the two analytical-instrument mitigations (pricing) fail the same way. This is the pre-mortem's central finding: **the plan's gates are sound, but several are enforced by advisor judgment at exactly the points the neutrality hazard is strongest.** Two structural amendments follow.

- **[PLAN CHANGE — new gate G0, "Neutrality & abandon-spec," precedes T1.]** Before any term is tabled, the advisor commits *in writing* to (i) a per-gate abandon specification: the specific, pre-named result at T2, Gate A, Gate B, and Gate C that forces a walk-away, written before the gate is approached and not editable after; and (ii) a decision authority on each *convert* (T1, T2, Gate B pass, P2 release, P3 release) that holds no position and sits outside the deal team. Routes DISSENT's failure mode and is the structural counter the charter §2.2 requires. *(Maps to EXECUTION_PLAN §2; insert as G0 ahead of §2.2 Gate T1.)*
- **[PLAN CHANGE — hard rule on soft reads.]** Any gate "pass" argued from sunk cost or pipeline progress rather than from the named artifact is automatically a fail. Add to the §4 standing overrides alongside T8: "no pass on momentum." Routes DISSENT and the CRUCIBLE/PILOT soft-read branch.

### B.2 CRUCIBLE — "bench passes, scale never does" → hardened Gate B KPI + earlier B2 protocol lock

- **[PLAN CHANGE — B2 protocol is itself a sub-gate.]** The pre-mortem locates the death not at B4 but at B2, where scale/feed/basis get negotiated downward. Add **Gate B-pre**: the campaign protocol (scale, feedstock identity + PSD, baseline, basis, operator) is fixed and accepted by the no-position authority *before* the campaign is funded, and may not be amended downward thereafter. Any downward amendment is a §4 fail. *(Maps to §4.1 "defined baseline and basis"; §6.1 step B2.)*
- **[CONFIRMED]** The standing "at scale ≠ bench-plus" caution (§4.2 strike-4) and the inadmissibility of partner-lab reports (§4 Gate B row) already encode the core. The pre-mortem ratifies them as load-bearing, not cautionary. Confidence on this mitigation rises from the convergence; the residual is irreducible until an artifact exists.

### B.3 PILOT — independent line may be unbuildable inside the envelope → T2 must produce a named vendor quote, not an analysis

- **[PLAN CHANGE — T2 evidentiary standard raised.]** T2 currently passes on a written sequencing *analysis*. Per PILOT and DISSENT, an analysis the advisor authors is too soft. Raise the T2 KPI: T2 passes only on **an actual written quote/scope from a named, outside-the-partner-pool validation authority** for an operator-relevant scaled campaign inside the ~12-month / ~$0.9M envelope. No quote, no T2, the pass holds (Option 0). This converts the binding uncertainty from a judgment into an artifact. *(Maps to §2.2 Gate T2; §4 T2 row; §6.2.)*
- **[CONFIRMED + sharpened]** The §6.4 flag-3 conflict (independence vs operator-relevance binding together on B1) is ratified: if no single B1 vendor satisfies both, T2 fails. Neither constraint is relaxable. Add explicitly to the T2 abandon action (T7).

### B.4 CLAIM — option lapses / thin moat designed around → Gate A timing pulled forward + moat-scope sub-test

- **[PLAN CHANGE — VTIP option-window check pulled into T1 diligence.]** CLAIM's faster death is the option lapsing before conversion. The window length (Art. 13.4-13.6 terms, C3) must be retrieved and the conversion deadline calendared *at T1 signing*, not discovered at Gate A. If the window is shorter than a realistic Gate A timeline, that is a T1 fact, not a P1 surprise. *(Maps to §2.2 Gate T1; §4 Gate A row.)*
- **[PLAN CHANGE — Gate A adds a moat-durability limb.]** The FTO opinion (A2) must also state whether the executed claim scope is broad enough to survive a competent design-around once the Gate B number is public, not merely whether LiT is free to operate. A "clear FTO on a claim too thin to stop a copier" is logged as a contingency, not a clean pass, and routes to the value-capture question below. Routes the R-TECH-3 contained-not-removed residual into an explicit Gate A read. *(Maps to §2.2 Gate A; §5 R-TECH-3 row.)*

### B.5 ROYALTY — signable base too thin to clear → T1 carries a minimum-viable-base floor

- **[PLAN CHANGE — T1 acquires a quantitative floor.]** The plan repapers onto a "verifiable narrow base" but sets no floor. Per ROYALTY, easy acceptance on a self-defined narrow base is a warning. Add to the T1 pass test a **modeled minimum royalty base** below which the repapered structure does not clear the return threshold; if the only signable base falls below it, T1 fails (standing pass), it is not a partial win. This prevents the "real but value-destroying close." *(Maps to §2.2 Gate T1; §4 T1 row; §5 R-REV-1 row.)*
- **[CONFIRMED]** The structure trade (narrow licensing base vs hybrid/TaaS/BOO with their liability tails) stays open and T9-guarded (§5 R-REV-9, R-ESG-2). Pre-mortem ratifies it as unresolved, not closed.

### B.6 MILL — buyer self-substitutes on a thin moat → T3 ring-fence is a hard pre-condition, not a feature

- **[CONFIRMED + elevated]** The plan already makes the field-of-use ring-fence a hard pre-condition for T3 firing (§2.3: "absent the ring-fence, T3 does not fire"). MILL's pre-mortem elevates this from contingency wording to the central anchor risk: an anchor without a contractual bar on in-house replication and competitor funding is a self-substitution accelerant. **[PLAN CHANGE]** Add to the T3 trigger an explicit, time-bounded **replication bar and competitor-funding bar** as named ring-fence components, and route the anchor's interest-channel (procurement vs corp-dev/in-house-R&D) into the §4 Gate C fail-reading: interest that routes to corp-dev rather than procurement is a self-substitution signal. *(Maps to §2.3 T3; §5 R-ADOPT-1 row.)*
- **[CONFIRMED]** R-ADOPT-1, R-ADOPT-2, R-ADOPT-5 remain contained-not-removed; the pre-mortem confirms they are paced/fenced, never eliminated, and they stay as standing residuals in every document.

### B.7 CAPITAL — pricing discipline and P3 raisability slip → repricing written into T1, P3 lead universe named before P2

- **[PLAN CHANGE — entry repricing is a committed term, not a posture.]** Per CAPITAL and SPOT, R-REV-3/R-REV-7/R-REV-10 are mitigated only by discipline the advisor must actually hold. Require the **repriced entry and the dual-world return range (both price worlds weighted near-equally) to appear in the committed T1 term itself**, reviewed by the no-position authority (G0). A single-point return number in the committed materials is a §4 fail. This is the governance check §7 handed forward, now made an artifact. *(Maps to §3.1 "entry repriced"; §5 R-REV-3/R-REV-7 rows; §5.3.)*
- **[PLAN CHANGE — P3 raisability tested before P2 funds.]** The explicit P3 growth round (R-REV-6) only de-risks if a lead can be raised on a single reference. Add to the **P2 release** condition a named, credible **P3 lead universe** identified before P2 capital releases; if no plausible growth lead exists for a single-reference, slow-market story, P2's premise is unproven. *(Maps to §2.1 P2/P3; §3.3 Conflict 1; §5 R-REV-6 row.)*
- **[CONFIRMED]** The master-pair single-mitigation concentration (R-REV-8 × R-ADOPT-2 both on T2) is ratified by CAPITAL as the plan's single point of failure dressed as two protections. The G0 abandon-spec and the raised-T2-evidentiary-standard (B.3) are its structural reinforcement; without them the concentration stands.

### B.8 WATERSHED — green claims precede substantiation → substantiation memo pulled ahead of any conversion

- **[PLAN CHANGE — green-claim quarantine from P0.]** Per WATERSHED, the exposure is live *now*, in existing materials, and the advisor inherits and amplifies it on conversion. Add a **P0 quarantine rule**: the advisor's own materials carry no unqualified "no acidic byproducts / ~30% / lower carbon" claim at any point, and conversion at T1 is conditioned on a remediation commitment for the company's existing unqualified claims. The Gate A limb-(iii) substantiation memo, currently downstream of B4 (A3), is **pulled forward to a P1-entry deliverable for the advisor's own claim-hygiene**, while remaining downstream of B4 for the substantiated *number*. *(Maps to §2.2 Gate A limb iii; §5 R-ESG-1 row; §6.1 A3.)*
- **[CONFIRMED]** R-ESG-2 (CERCLA) stays Low under licensing-first and re-rates to High under any title/custody/BOO move, held under T9. The pre-mortem confirms the licensing-first model choice is itself the mitigation and must not drift without the CERCLA + closure-bond line.

### B.9 SPOT — banded price model relaxed under deal pressure → dual-world range is a committed-materials requirement

- Routed jointly with CAPITAL at B.7: the dual-world return range (both worlds near-equally weighted) must appear in the committed T1 materials and be reviewed by the G0 no-position authority. **[CONFIRMED]** The R-REV-3 banded instrument and the R-GEO-3 China-suppression increment riding on it stay as analytical mitigations; the pre-mortem's contribution is to require they be *written down and reviewed*, not held in the deal team's head.

### B.10 Net effect on the architecture

The pre-mortem does not overturn the four-phase, three-gate, event-driven structure; every seat's failure mode resolves *within* it. What it changes is **where enforcement lives**. Five plan changes harden the soft edges into artifacts or earlier gates:
1. **G0 neutrality & abandon-spec gate** ahead of T1 (DISSENT, the amplifier on all others).
2. **T2 raised to a named outside-pool vendor quote**, not an advisor analysis (PILOT, CAPITAL).
3. **B2 protocol lock as a sub-gate** before the validation campaign funds (CRUCIBLE).
4. **T1 quantitative floors**: minimum viable royalty base + committed repriced entry + dual-world return range (ROYALTY, CAPITAL, SPOT).
5. **Pulled-forward deliverables**: VTIP option-window calendar and green-claim quarantine at P0/T1; Gate A moat-durability limb; P3 lead universe before P2 (CLAIM, WATERSHED, CAPITAL).

The four contained-not-removed residuals (R-ADOPT-1/2, R-TECH-3, R-ADOPT-5) survive the pre-mortem unchanged: they are bounded and fenced, never eliminated, and ship as standing residuals in all three documents. The master-pair concentration (R-REV-8 × R-ADOPT-2 on T2) is reinforced by changes 1 and 2 but remains the plan's binding uncertainty.

**Confidence (pre-mortem unit):** High that the nine failure modes are the dominant ones across the covered domains and that they were generated blind (each is anchored to its own seat's evidence and none references another). High that the central finding (governance enforces the load-bearing gates and must be made structural) is forced by the convergence of three independent seats, not asserted. **Moderate** on whether the five plan changes are *sufficient*, since several (G0 no-position authority, an outside-pool validation vendor, a P3 lead universe) depend on resources and facts not yet retrieved (C1/C4) and on counterparties not yet identified. **Fragility:** if the G0 neutrality control cannot be stood up in practice, every other mitigation reverts to advisor self-discipline, which the pre-mortem identifies as the single deepest failure path. These five changes are handed to the Round 06 final-validation pass and to Round 07 synthesis for incorporation into STRATEGY.md (G0, T1 floors, T2 standard) and EXECUTION_PLAN.md (§2 G0/B2, §3 pulled-forward deliverables, §4 KPIs, §5 residual ratification, §6 T2 standard).
