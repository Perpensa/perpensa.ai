# W13 — Environmental-Claim Substantiation Standards: Greenwash Exposure on LiT's "No Acidic Byproducts" and Energy/Emissions Claims

**Round:** 00 Grounding & Research Commissioning
**Unit:** [Web] item W13 (P2), the final web item before the [Company]-queue disposition
**Requesting seat:** WATERSHED 3
**Lens:** ADVISOR, prospective capital provider (locked in `rounds/r00-frame-lock.md`)
**Decision it unblocks:** Greenwash / claim-substantiation exposure; claims-scoping guidance for the SWOT, Strategy, and deliverables
**Write target:** this file
**Tagging:** every claim tagged Cited / Assumption(confidence) / Unsupported per PROMPT.md

---

## The LiT claims under test (from the locked base)

WATERSHED's mandate names three claims for defensibility (Council 164). Located in the base:

1. **"No acidic byproducts" / "zero acidic byproducts" / "no highly acidic byproducts" / "eliminating acid drainage at the source."** Cited (Business Plan 35, 194; Pitch 62, 67, 161; Prospectus 76).
2. **"~30% energy reduction" / "approximately 30% less energy than conventional methods" / "no direct fossil fuel use in extraction."** Cited (Business Plan 35; Pitch 65, 161; Prospectus 78).
3. **"Reduces greenhouse gas emissions" / "materially lower carbon footprint than the same ton recovered conventionally."** Cited (Business Plan 35; Prospectus 78).

Two facts about these claims, established in prior units, set the exposure:
- They are **bench-stage assertions, not validated at scale**, and rest on the same unretrieved bench dataset (C1) that gates the recovery claim. Cited (`rounds/r00-reading-notes.md` 161; `research/r00-lowtemp-spodumene-priorart.md` 41, 49).
- The specific **"~30%" energy figure is Unsupported as a number** absent the bench dataset, though directionally credible. Cited (`research/r00-lowtemp-spodumene-priorart.md` 41).
- They appear in **investor-facing materials** (Prospectus, Pitch) and would appear in **licensing materials** sold B2B to miners. Both channels carry substantiation duty (see below).

---

## The substantiation frameworks that govern these claims

### 1. FTC Green Guides — 16 CFR Part 260 (the controlling US framework)

- **Standard of proof.** A reasonable basis for an environmental claim "often requires competent and reliable scientific evidence," defined as "tests, analyses, research, or studies that have been conducted and evaluated in an objective manner by qualified persons and are generally accepted in the profession to yield accurate and reliable results," and "sufficient in quality and quantity based on standards generally accepted in the relevant scientific fields." Cited (FTC, *Environmental Claims: Summary of the Green Guides*; 16 CFR Part 260).
- **Applies B2B, not only to consumers.** The Guides cover claims "made to another person or business about the environmental characteristics of a product, package, or service in labeling, advertising, promotional materials, and all other forms of marketing in any medium," and explicitly reach business-to-business marketing and intermediaries (certifiers, auditors, wholesale sellers). Cited (FTC Green Guides §260.1; FTC business-guidance summary). This is the key point for LiT: a licensing pitch to BHP or Freeport is squarely inside the Guides, not exempt as "B2B."
- **All reasonable interpretations must be substantiated** before the claim is made. Cited (FTC summary).

### 2. ISO 14021:2016 — self-declared (Type II) environmental claims

- A self-declared claim (no third-party verifier) is legitimate only if it is "accurate, verifiable, and not misleading," and the maker must "possess documented evidence substantiating claims and be prepared to provide this information to purchasers or enforcement authorities upon request." Cited (ISO 14021:2016; ISO/ANSI summaries).
- The standard specifies general and claim-specific **evaluation and verification methodologies** that must be available on request. Cited (ISO 14021:2016).
- The maker "bears the full responsibility for the claim's truthfulness." Cited (ISO 14021 summaries). LiT's badges and prose are exactly Type II self-declarations; under ISO 14021 they require a documented, on-request evidence file that, per C1, has not been retrieved.

### 3. EU Green Claims Directive / ECGT — now in limbo, but the substance is the benchmark

- As proposed, it required explicit environmental claims to be **substantiated and verified before publication**, on a **full-life-cycle** basis, via LCA or other recognised methods; carbon claims required offsetting and emissions data reported **separately** with the accounting methodology disclosed. Cited (EU Green Claims Directive proposal; commentary).
- **Status:** Parliament adopted it 12 March 2024; Council general approach 17 June 2024; the Commission announced intent to **withdraw the proposal in June 2025** over small-business burden. Cited (Carbon Gap tracker; Crowell & Moring; commentary). So it is **not in force** and should not be cited as a binding requirement. Assumption(High): it remains the most demanding articulated benchmark and signals where verification expectations are heading, so it is useful as a "best-practice ceiling," not a live obligation.

---

## Per-claim defensibility read

### Claim A — "No acidic byproducts" (a "free-of" / absence claim)

- The Green Guides treat absence/"free-of" claims as a distinct, hazardous category. A "free-of" claim can be **deceptive even when literally true**: it is deceptive if the product is free of one substance but contains another posing a **similar environmental risk**, or if the substance was **never associated with that product category** in the first place. Cited (FTC summary; FTC Green Guides).
- Application to LiT: "no acidic byproducts" invites two failure modes. (i) If the low-temperature route substitutes a **caustic/alkaline reagent system** (the leading inference for a sub-500C non-acid leach; see `research/r00-lowtemp-spodumene-priorart.md`), an alkaline waste or spent-reagent stream with its own disposal and environmental burden may pose a "similar environmental risk," which the absence claim conceals. Assumption(Moderate) pending C1 reagent chemistry. (ii) The claim is comparative-by-implication against "conventional chemical extraction produces acidic waste" (Prospectus 76), which is defensible **only** if scoped to the specific conventional route being displaced and to the verified lithium bench process, not generalised across feedstocks or to commercial scale.
- **Exposure:** Moderate-to-High. An unqualified "zero acidic byproducts" badge (Pitch 67) is the most fragile formulation; "no *highly* acidic byproducts" (Business Plan 194; Prospectus 76) is narrower and more defensible. The reagent-substitution trade-off must be analysed and disclosed for the claim to survive the Guides' free-of test. Assumption(Moderate-High).

### Claim B — "~30% energy reduction" / "no direct fossil fuel use" (a comparative claim)

- Comparative claims must make the **basis of comparison clear** (vs the advertiser's prior version or vs a competitor / industry conventional route) and must be substantiated for **all reasonable interpretations**. Cited (FTC summary).
- Application: "approximately 30% less energy than conventional methods" does not specify the conventional baseline (decrepitation-roast-leach for spodumene? which commodity?), the boundary (extraction step only vs full process), or the basis (per tonne ore vs per tonne product). The "~30%" number is **Unsupported as a specific figure** absent C1 (`research/r00-lowtemp-spodumene-priorart.md` 41). A precise percentage with no disclosed basis is the textbook comparative-claim vulnerability.
- "No direct fossil fuel use **in the extraction process**" is narrowly scoped and more defensible **as written**, but is easily over-read as whole-process or whole-product decarbonisation. The scoping qualifier ("in extraction") must travel with the claim every time. Assumption(High).
- **Exposure:** Moderate as currently worded; rises to High if the "~30%" is repeated as a hard number in investor or licensing materials without a stated, evidenced baseline.

### Claim C — "Reduces GHG emissions" / "materially lower carbon footprint per ton" (a carbon claim)

- Carbon-footprint and emissions claims are the most evidence-hungry category. The EU benchmark expects **life-cycle** substantiation and separate emissions/offset accounting (Cited above); the FTC standard still requires competent and reliable scientific evidence for the specific reduction asserted. A per-ton carbon-footprint comparison is an implicit LCA claim.
- Application: LiT has **no LCA** in the base; the carbon claim is inferred from the energy claim. A "materially lower carbon footprint than the same ton recovered conventionally" (Prospectus 78) is a quantitative-comparative LCA-grade assertion supported only by a bench energy inference. **Unsupported** as an LCA claim; Assumption(Moderate) directionally (less heat plausibly means less CO2 if grid/fuel mix holds).
- **Exposure:** High for the per-ton footprint phrasing; Moderate for a softened "lower energy use can reduce emissions" framing.

---

## Findings for WATERSHED (and DISSENT, CLAIM, CAPITAL)

1. **The claims are not greenwash in intent, but they are presently un-substantiated to the governing standard, and the standard reaches LiT's B2B licensing channel, not only consumer ads.** The single most important correction to a likely management assumption ("these are B2B technical claims, the Green Guides are a consumer-marketing thing") is that the FTC Green Guides expressly cover business-to-business environmental claims. Cited (FTC §260.1; FTC summary). The licensing pitch is in scope.

2. **Three distinct claim archetypes, three distinct fixes.** "No acidic byproducts" is a *free-of* claim that fails the Guides unless the substitute-reagent trade-off is analysed and the claim is scoped to "no highly acidic byproducts" for the verified lithium process. "~30% energy" is a *comparative* claim that needs a disclosed, evidenced baseline or it must drop the number. "Lower carbon footprint per ton" is an implicit *LCA* claim that needs an actual life-cycle basis or must be softened to a qualified energy statement. Assumption(Moderate-High) across the three.

3. **The defect is shared with C1.** Every one of these claims becomes substantiable the moment the bench dataset (reagent chemistry, energy measurement, grade-recovery) is produced and, ideally, third-party verified. They are not separately fatal; they are the same evidence gap wearing an environmental label. This means the remedy is the same remedy already required for the core recovery Strength, which is efficient for the Strategy: one validation/verification workstream closes both the technical and the green-claim exposure. Assumption(High).

4. **Investor-materials channel adds a second liability surface.** Because the claims sit in the Prospectus and Pitch, the exposure is not only FTC advertising risk but securities/disclosure risk: information in a prospectus and its advertising "shall not be inaccurate or misleading." Cited (EU Prospectus Regulation commentary; general greenwashing-in-disclosure literature). For a US private placement the analogous exposure is Rule 10b-5 / antifraud on material misstatements. Assumption(Moderate): the dollar amounts are small and the audience sophisticated, but overstated environmental claims are increasingly challenged by investors themselves, not only regulators. Cited (Harvard CorpGov; ESMA greenwashing report).

5. **Claims-scoping rule for all deliverables (the deliverable-guidance this unit owes).** In SWOT/Strategy/Execution outputs, the environmental advantages must be written as **scoped, qualified, bench-stage** statements: tie each to the verified lithium process, name the comparison baseline, carry the "in extraction" qualifier, and avoid unqualified absolutes ("zero," "eliminates," "materially lower footprint"). The environmental thesis enters the SWOT as a **qualified, second-order Opportunity contingent on validation**, consistent with the W12 finding that ESG is an economics-mediated accelerant, not a hard procurement mandate. Cited (`research/r00-esg-procurement-driver.md`). It does **not** enter as a clean Strength.

---

## Confidence and limits

- Framework descriptions (FTC standard, B2B scope, free-of/comparative rules, ISO 14021 duties, EU GCD status) are **Cited** from FTC, ISO, and legal-commentary sources retrieved this unit.
- The per-claim risk ratings are **Assumption(Moderate to Moderate-High)** because they depend on the unretrieved reagent chemistry and energy basis (C1). They are scoping judgments, not legal opinions.
- `NEEDS EXTERNAL RETRIEVAL: LiT Stage Two reagent system (alkaline vs other), the measured energy basis behind "~30%", any LCA or third-party environmental verification.` Lives in [Company] C1; carried under the DISSENT gate. Until retrieved, the green claims are demoted to assumptions in every deliverable.
- Direct WebFetch of the FTC business-guidance summary returned HTTP 403; the FTC specifics above rest on the FTC search-result extracts and the regulatory text references, which is sufficient for a substantiation-standard finding but not for claim-by-claim regulatory drafting.

## Handoffs

- **WATERSHED:** carries items 1–5 into Round 01 as a Weakness (un-substantiated green claims / greenwash exposure) cross-linked to the C1 evidence gap, and as the claims-scoping rule for all deliverables.
- **DISSENT:** the green claims reinforce the gate (b)/(c) pattern that headline assertions outrun the evidence; folds into the "demote optimistic claims to assumptions" ruling.
- **CLAIM / CRUCIBLE:** reagent chemistry (C1) closes both the Stage-Two novelty read and the "no acid" read at once.
- **CAPITAL:** investor-materials substantiation/disclosure exposure feeds the Round 04 risk register and the term-structure/representation-and-warranty discussion.

## Sources

- [FTC Green Guides — 16 CFR Part 260 (eCFR)](https://www.ecfr.gov/current/title-16/chapter-I/subchapter-B/part-260/)
- [FTC — Environmental Claims: Summary of the Green Guides](https://www.ftc.gov/business-guidance/resources/environmental-claims-summary-green-guides)
- [FTC Green Guides text (PART 260, §260.1)](https://www.ftc.gov/sites/default/files/attachments/press-releases/ftc-issues-revised-green-guides/greenguides.pdf)
- [FTC — Environmental Marketing (business guidance)](https://www.ftc.gov/business-guidance/advertising-marketing/environmental-marketing)
- [ISO 14021:2016 — Self-declared environmental claims (Type II)](https://www.iso.org/standard/66652.html)
- [EU Green Claims Directive — status & timeline (Carbon Gap tracker)](https://tracker.carbongap.org/policy/green-claims/)
- [The Green Claims Directive — Crowell & Moring](https://www.crowell.com/en/insights/client-alerts/the-green-claims-directive)
- [Litigation Risks Posed by "Greenwashing" Claims (Harvard Corp Gov)](https://corpgov.law.harvard.edu/2022/04/25/litigation-risks-posed-by-greenwashing-claims-for-esg-funds/)
- [ESMA Final Report on Greenwashing (June 2024)](https://www.esma.europa.eu/sites/default/files/2024-06/ESMA36-287652198-2699_Final_Report_on_Greenwashing.pdf)
