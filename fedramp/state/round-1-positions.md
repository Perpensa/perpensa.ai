# Round 1 — Independent Positions
**Protocol:** Parallel, silent. No member read another's statement before committing. Cross-talk begins Round 2.
**Date:** 2026-06-16

---

## MARIANA REYES — Advocate 1
*Former ISSO, 12 yrs federal compliance, three systems through FedRAMP Moderate*

**On the five conclusions:**

*Customer and path are the same thing* — Accept, without reservation. CR26 didn't create this reality; it formalized what ISSOs already knew: cloud-native SaaS and legacy systems have fundamentally different authorization experiences. This is the first piece of research I've seen that names the gap honestly rather than pretending one framework fits all.

*The moat is the combination* — Accept the thesis, conditionally. The OSCAL data model plus LaunchPad plus 3PAO channel is the right combination. But the combination only exists if Guide Rail is staffed and functioning. Right now "Guide Rail" is a label, not a built capability. The moat has a staffing dependency that isn't visible in the framing.

*Consistency as reason to exist* — Accept, fully. I have lived the 2am discovery that your SSP narrative says one thing and your boundary diagram says another, four weeks before an assessment. This is the real kill condition for first-time authorizations, and the current market offers no structural fix. A single OSCAL data model eliminates it by design. This is the sharpest product truth in the research.

*ConMon as retention engine* — Accept, and this is the conclusion I weight most heavily. Monthly ConMon is not optional. Miss a deliverable and you're on a suspension timeline. Companies don't leave a platform that is baked into their ATO maintenance cycle — they can't afford to. The 5+ year LTV math is not optimistic; it's structural. This is the most defensible revenue claim in the package.

*GTM is channel-led* — Accept, with a hard qualification: the 3PAO referral model is proven at Paramify's scale, which is small. At 10x, we don't know if it holds. Rafael will push harder on this than I will, and he should.

**Sharpest concern:**

Guide Rail is the soft underbelly of the entire model. The 1:30 advisor:customer ratio is the minimum viable floor, not the target. Federal compliance advisory talent is concentrated at Coalfire, Schellman, A-LIGN — it does not walk into startups. If Guide Rail becomes senior-consultant hours at market rate, the margin profile collapses and we become a services business wearing a SaaS label. James's AI-augmentation thesis is the right framing, but "AI-augmented review" is not yet proven at the control-family level.

**Falsifiable claim I will stake:**

If the Guide Rail headcount ratio exceeds 1:20 advisor:active-customer at Series B, the model has reverted to services economics and the software margin story is false. Test condition: fully-loaded Guide Rail cost per customer per year, tracked quarterly from first revenue.

---

## JAMES KOWALSKI — Advocate 2
*Ex-startup CTO, platform architecture, DX-first, Terraform/HashiCorp ecosystem*

**On the five conclusions:**

*Customer and path are the same thing* — Accept completely. CR26 made this decision for us. The debate about whether to be 20x-native or Rev5-compatible was a distraction; the framework routing is written into the rule. Single OSCAL model, generate both outputs. This is a clean architectural decision with regulatory backing. Connor and I were disagreeing about something the PMO already resolved.

*The moat is the combination* — Accept, and I want to sharpen it. The combination only works if we own the infrastructure layer. OSCAL-native documentation is Paramify's ground — we cannot plant a flag there and win. LaunchPad is the differentiator Paramify lacks and Vanta hasn't bothered with, because their business doesn't need it. Building OSCAL component definitions for Azure, AWS, and GCP ourselves creates a proprietary switching-cost asset that acquisition cannot replicate easily. The component-definition library is where I'd concentrate engineering resources.

*Consistency as reason to exist* — Accept. I'd reframe it slightly from the product side: the reason OSCAL works for this is the import-chain traceability. Every downstream document inherits upstream state. Inconsistency becomes architecturally impossible when the data model is correct. This is the technical proof of the market claim.

*ConMon as retention engine* — Accept. I'd note that ConMon automation is where the infrastructure layer earns its keep — real-time telemetry from LaunchPad feeds directly into POA&M state. The 75% automation figure is achievable specifically because we control the environment the monitoring runs against. This is a compounding advantage: the more infrastructure we manage, the better the ConMon coverage.

*GTM is channel-led* — Accept in principle. My concern is timeline dependency: 3PAO referrals are relationship-driven and lag the product. We need pipeline earlier than 3PAO relationships can generate. The procurement signal play (SAM.gov/FPDS ingest) reaches buyers at trigger-moment before they call the 3PAO. I want this running before we have 3PAO density.

**Sharpest concern:**

The LaunchPad build timeline is 6-9 months of serious engineering work, not 3. Incumbents — specifically Vanta — have the same CR26 clarity we do, and they have $504M raised and 375+ integrations already wired. If they decide to build an OSCAL-native infra layer, they can fund it at a speed we can't match with capital. The window is real but it is not wide. Every month of build time is a month of incumbent observation time.

**Falsifiable claim I will stake:**

If a working LaunchPad with pre-built OSCAL component definitions for Azure and AWS is not in production use by end of Q1 2027, the infrastructure switching-cost moat has not been established, and differentiation collapses to documentation depth alone — which Paramify already owns.

---

## DIANA PARK — Skeptic 1
*SaaS CFO x2, growth-equity investment committee, Vanta economics studied*

**On the five conclusions:**

*Customer and path are the same thing* — Accept as a market-segmentation insight. The routing logic is real. What I need to understand is whether targeting 20x Class C exclusively is a strategic choice or a capital constraint masquerading as one. The answer matters for what happens if the 20x window narrows.

*The moat is the combination* — Doubt. Not because the combination isn't valuable, but because it conflates product differentiation with capital defensibility. Moats in SaaS require either data network effects, distribution scale, or infrastructure switching costs at meaningful scale. We have a version of #3 in LaunchPad — IF it gets built. We have none of #1 or #2. The combination is a compelling product story; it is not yet a durable economic moat.

*Consistency as reason to exist* — Accept as the core product truth. Reject it as a defensibility claim — any OSCAL-native tool eliminates inconsistency by design. This is table stakes for the category, not a differentiator beyond the first mover window.

*ConMon as retention engine* — Accept, and this is the finding that most improved the economics in my view. If the ATO revocation teeth are real and ConMon prep costs $150-350K/yr, the switching cost is enormous. I revised my LTV model upward on this basis. The caveat: retention only holds if we own the ConMon workflow end-to-end. If 3PAOs bring their own tooling for ConMon, we can be displaced.

*GTM is channel-led* — Partial. Channel dependency at this scale is a business risk, not a GTM strategy. We are assuming 3PAOs will refer customers to us because it reduces their review iterations. That's plausible but unproven at any meaningful conversion rate. Rafael will have more on this.

**Sharpest concern:**

The TAM tension is not peripheral — it is the central question the deliberation must answer. The research shows ~$30-45M ARR at 20-30% share of the FedRAMP-only market. That is a strong outcome for a focused SaaS business, but it is not a venture-scale Series C story without expansion. The expansion thesis rests on CMMC reciprocity (50-60% probability by the research's own estimate, which I read as optimistic) and ACV expansion above the ~$90K blended figure. Neither of those assumptions has been validated. We are building the business plan on a contingency.

**Falsifiable claim I will stake:**

If the integrated wedge (Comply Engine + LaunchPad + Guide Rail) cannot command an ACV of ≥$150K for a full 20x Moderate authorization engagement, the $30-45M FedRAMP-only TAM produces a Series B ceiling, not a Series C foundation. Test condition: first 20 customer ACVs, tracked against $150K threshold before Series B close.

---

## RAFAEL NAVARRO — Skeptic 2
*18 yrs federal sales, ran federal org 0→$30M gov revenue in 4 yrs*

**On the five conclusions:**

*Customer and path are the same thing* — Accept the regulatory routing logic. My concern is who inside the target company is making the purchase decision. "Series A-C cloud-native SaaS" is a funding stage, not a buyer profile. The actual buyer is a CTO or VP Engineering being handed a compliance requirement they didn't expect and don't want to own. That buyer has never made a FedRAMP procurement decision and has no frame for evaluating tools. They call the 3PAO. Which means we have to be in the 3PAO's mouth before the buyer calls.

*The moat is the combination* — Partial. The combination is defensible IF we build it. My concern is sequencing: we can't lead with the combination until LaunchPad exists. In the interim, we're selling documentation tooling against Paramify, which is already there. The 3PAO channel helps only if 3PAOs prefer us to the tool they already know.

*Consistency as reason to exist* — Accept as the message that will land with a stressed CTO. "Your package cannot be internally inconsistent because it's generated from one model" is the one sentence that cuts through. This is the right wedge message for the channel.

*ConMon as retention engine* — Accept completely, from a sales perspective. A product that is load-bearing for ATO maintenance is not optional software. The renewal conversation doesn't exist; the question is whether they expand. In my federal sales experience, this retention profile is extremely rare and extremely valuable.

*GTM is channel-led* — Accept the direction, reject the certainty. The 3PAO referral model is a hypothesis supported by Paramify's experience at small scale. Paramify's advisor/assessor marketplace took years to build and they had first-mover advantage in OSCAL documentation. We are entering with the same claim but not the same head start. I have not seen conversion data from 3PAO referral to closed revenue that validates this as a reliable channel.

**Sharpest concern:**

The 18-24 month sales cycle creates a cash gap that the research acknowledges but doesn't size. From first contact (via procurement signal or 3PAO referral) to signed contract to revenue recognition: this is not a 90-day cycle in the federal market. Authorization projects that slip — and they all slip — defer revenue further. If the Series A close date is Q3 2026 and Phase 3 enrollment doesn't open until Q4 2026, the first cohort of 20x customers doesn't authorize until mid-to-late 2027 at earliest. That is a long time to be burning Series A capital before demonstrating the revenue model works.

**Falsifiable claim I will stake:**

If the 3PAO referral channel does not produce ≥5 qualified opportunities within 12 months of the first 3PAO partnership being formalized, the GTM is not channel-led — it is channel-aspiring. Test condition: pipeline sourced from 3PAO referral vs. procurement-signal outreach, tracked by sourced opportunity, not just ACV.

---

## DR. SARAH LIN — Red Team 1
*PhD competitive strategy, 5 yrs Gartner GRC analyst, authored Magic Quadrants, interviewed Vanta/Drata/Secureframe/RegScale*

**On the five conclusions:**

*Customer and path are the same thing* — Accept as a market segmentation insight. Note that every funded incumbent has access to the same CR26 document. The window this routing creates is not exclusive; it is visible to Vanta's strategy team.

*The moat is the combination* — Reject as stated. The combination is a product bundle, not a moat. A moat requires durability under competitive attack. The OSCAL Wave research I did for the SOC 2 transition shows that incumbents with distribution advantage consistently won market share from specialists with better products. Vanta's 375+ integrations and 16,000-customer base give them a learning data set and referral network that makes "OSCAL-native + infra + 3PAO channel" replicable within 12-18 months of a commitment decision. The only piece that doesn't replicate easily is the proprietary OSCAL component-definition library — IF it is built at sufficient depth.

*Consistency as reason to exist* — Accept as product truth. Reject as message differentiation once incumbents can say the same thing. Vanta already claims "OSCAL export" — they will claim "OSCAL-native" within a product cycle of watching us succeed.

*ConMon as retention engine* — Accept. This is the most durable element of the thesis because it is structural, not feature-based. An installed ConMon workflow is the hardest thing to rip out. This is the ground worth defending.

*GTM is channel-led* — Partial. The 3PAO channel is the right model. My concern is that the same 3PAOs Paramify has been building relationships with for 3-4 years are the same ones we need. If Vanta acquires Paramify, they inherit those relationships. The channel we're counting on may become an incumbent asset before we scale.

**Sharpest concern:**

The acquisition scenario is the highest-probability threat and it is not adequately treated in the research. Vanta at $4B valuation and $504M raised can acquire Paramify at a price that is rounding error for them. Paramify gets them: (a) the OSCAL-native documentation stack, (b) the 3PAO marketplace with established relationships (Schellman, Coalfire, etc.), (c) 20x Moderate authorized status, and (d) the FedRAMP-specialist brand. That acquisition closes our primary differentiation gap and converts our target 3PAO partners into Vanta's channel. The research says "position so a Paramify acquisition doesn't kill us" but does not specify what that positioning is.

**Falsifiable claim I will stake:**

If Vanta acquires Paramify before we reach $5M ARR, and we do not yet have LaunchPad in production with ≥50 customer environments deployed, the competitive position is not survivable without a significant strategic pivot. Test condition: Vanta acquisition of Paramify as a binary event, cross-referenced against LaunchPad production deployment count at time of announcement.

---

## CONNOR TRASK — Red Team 2
*8 yrs in/around FedRAMP PMO, contributed to early 20x policy, left GSA 2025*

**On the five conclusions:**

*Customer and path are the same thing* — Accept the routing conclusion. I reversed my slippage concern in research and stand by that reversal: Phase 3 is on track for Q3-Q4 2026. But I want to flag what the research doesn't say loudly enough: the 20x framework is still being implemented. The implementation guidance is being developed concurrently with the framework itself. "CR26 is durable" is not the same as "CR26 implementation is stable." There will be substantive clarification memos and updated guidance issued throughout 2026-2027 that will require product adjustments.

*The moat is the combination* — Partial. The combination is the right thesis. My concern is the temporal dependency: it requires all three pillars to be operational simultaneously to be defensible. Right now only the documentation pillar is something we can build toward with certainty. LaunchPad depends on the cloud provider OSCAL Component Definition publishing maturing, which is partially out of our control. The GTM channel depends on 3PAO relationship depth that takes time.

*Consistency as reason to exist* — Accept. I've reviewed authorization packages. The failures the research cites are exactly what I saw at the PMO. This is the accurate diagnosis of the market failure.

*ConMon as retention engine* — Accept, conditionally. My concern is that ConMon automation depends on stable control mappings. If the PMO issues a control update or a new overlay requirement, the automation needs to be reworked. The research treats ConMon as passive recurring revenue; from the PMO side, it is active compliance maintenance that changes as the framework evolves.

*GTM is channel-led* — Accept in principle. I want to flag an orthogonal risk: the research identifies the buyer as "Series A-C cloud-native SaaS." These companies are founder/CTO led and do not have dedicated federal compliance functions. They have no existing GSA Schedules, no set-aside qualifications, no SBIR history. The procurement signal play assumes we can reach them before they call a 3PAO — but the research also says they "trust the 3PAO network." The 3PAO call comes first; the procurement signal is the pre-trigger. We need to be in the 3PAO's recommendation before the buyer even calls.

**Sharpest concern:**

The product is being built for a regulatory framework that has no authorization case law under the 20x model yet. The first cohort of 20x Class C authorizations will be the test bed for how the framework actually works — what the PMO accepts, where they push back, what control interpretations hold. The companies building the authorization tools will be learning alongside the companies using them. Our OSCAL-native architecture bets that the implementation guidance converges with the framework as documented. If there are significant divergences — and there will be some — the product needs enough flexibility to absorb them without emergency rewrites.

**Falsifiable claim I will stake:**

If the PMO issues a substantive 20x Class C implementation amendment before Q2 2027 that requires rework of ≥20% of the Comply Engine's pre-built control implementations, the product roadmap slips by ≥2 months and the first-mover timeline advantage is erased. Test condition: track PMO memo/guidance issuances against the percentage of control implementations requiring rework per issuance.

---

## DISAGREEMENT MAP (exit condition check)

Explicitly named points of disagreement across the six positions — required ≥3:

**D1: TAM adequacy as a venture-scale foundation**
Diana holds that $30-45M FedRAMP-only ARR is a Series B ceiling without validated expansion. Mariana and James treat the expansion thesis (CMMC, GovRAMP, FISMA) as a plausible resolution. Rafael and Sarah note that expansion depends on contingent events. *Tension: unresolved. Diana has not been answered.*

**D2: LaunchPad as a durable moat vs. incumbent-replicable feature**
James holds that the OSCAL component-definition library creates infrastructure switching costs that acquisition cannot replicate quickly. Sarah holds that Vanta can build or buy the same capability within 12-18 months with available capital. *Tension: unresolved. The durability window is the crux.*

**D3: Guide Rail margin risk**
Diana holds that advisory-heavy Guide Rail reverts the model to services economics. Mariana accepts the risk but makes it conditional on the advisor:customer ratio. James proposes AI-augmentation as the mitigation. *Tension: partially surfaced; AI-augmentation is a hypothesis, not a demonstrated margin fix.*

**D4: 3PAO channel as proven channel vs. unproven hypothesis**
Rafael holds that 3PAO referral conversion data does not exist at scale; the channel is aspiring, not established. Mariana and the research cite Paramify's 3PAO marketplace as proof. *Tension: the proof is at small scale; Rafael is right that extrapolation is unvalidated.*

**D5: Regulatory stability risk**
Connor holds that "CR26 is durable" ≠ "implementation is stable," and that the first 20x cohort will surface framework gaps that require product rework. The research and other members treat the regulatory foundation as settled. *Tension: Connor's concern is not engaged by advocates or skeptics.*

**Count: 5 distinct disagreements named. Exit condition met (≥3 required).**
