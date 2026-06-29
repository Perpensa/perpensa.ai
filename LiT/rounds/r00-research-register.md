# Round 00 — Research Request Register (Consolidated, Deduplicated, Prioritized)

**Round:** 00 Grounding & Research Commissioning
**Unit:** Research Request Register (sequential consolidation step)
**Lens:** ADVISOR, prospective capital provider (locked in `rounds/r00-frame-lock.md`)
**Source:** raw requests in `rounds/r00-reading-notes.md` from CRUCIBLE, SPOT, CLAIM, ROYALTY, MILL, CAPITAL, WATERSHED, DISSENT
**Status of this unit:** register closed. Execution of the **[Web]** queue and disposition of the **[Company]** queue are the NEXT units (one or two web items per iteration, per PROMPT.md).

---

## How this register was built

Seventeen raw [Web] requests and four [Company] requests were filed across eight seats. Overlapping requests are merged into a single numbered item with all requesting seats recorded, so no web search is run twice. Each merged item keeps the decision it unblocks. Priority is assigned by the Moderator with the Monitor's duplicate/scope check applied, and DISSENT's gate items are elevated.

**DISSENT gate (binding on Round 01 entry).** Three evidence objects, if absent, could overturn the thesis: (a) whether LiT controls clean IP in Stage One and holds a published/granted filing; (b) whether any primary recovery data exists behind the 16–19% claim; (c) whether the licensing model is even the right model versus a producer model. Item **W1** addresses (a) at the public-record level; **W5** addresses (c); the rest of (a) and all of (b) live in the **[Company]** queue and are the items most likely to be flagged `NEEDS EXTERNAL RETRIEVAL`. DISSENT's standing ruling: if C1 and C3 cannot be retrieved, Round 01 proceeds with those items flagged High-risk / Low-confidence and the affected Strengths demoted to assumptions. Round 01 does not open until W1 is executed and the [Company] queue is either retrieved or flagged with DISSENT's agreement.

---

## [Web] queue — Moderator executes via WebSearch/WebFetch

Priority tiers: **P0** gating (DISSENT gate, thesis-overturning), **P1** high (binds core findings or Round 04 sensitivities), **P2** supporting.

| # | Pr | Merged request | Requesting seats | Decision it unblocks | Write to |
|---|----|----------------|------------------|----------------------|----------|
| W1 | **P0** | LiT (Lithium Technologies, Inc. / Keenum) PCT or national-phase publication status and claim scope; plus the Yoon / Luttrell / Virginia Tech Intellectual Properties (VTIP) fine-particle surface-chemistry and HHS patent family and the scope of the Minerals Refining Company (MRC) worldwide license. | CLAIM 1, CLAIM 2, DISSENT 1 | "Globally patented platform" defensibility; Stage One freedom-to-operate; SWOT Strength-vs-Weakness on IP. | `research/r00-ip-patent-landscape.md` |
| W2 | P1 | Published and patented sub-500C / low-temperature spodumene leaching routes and their reported Li extraction, energy, and acid profiles, mapped against LiT's named Stage Two background IP title. | CRUCIBLE 2, CLAIM 3 | Stage Two technical-differentiation finding; CLAIM's prior-art / novelty assessment. | `research/r00-lowtemp-spodumene-priorart.md` |
| W3 | P2 | Bench-to-pilot timelines, scale-up failure modes, and recovery-degradation patterns for fine/ultrafine froth-flotation and surface-chemistry separation processes. | CRUCIBLE 1 | Realism of the Month 10 / Month 16 pilot milestones (Round 05). | `research/r00-flotation-scaleup.md` |
| W4 | P1 | Process-technology licensing norms in mining/metals: typical upfront fees, royalty bases (product-of-licensed-process vs whole-mine NSR), and LOI-to-license conversion timelines (UOP/Honeywell, Hatch, Metso, Jetti, NovaCell analogs). | SPOT 2, ROYALTY 1 | Deal-structure realism; whether 1% whole-mine NSR is market; time-to-revenue. | `research/r00-licensing-norms.md` |
| W5 | P1 | Technology-as-a-service / build-own-operate versus pure-licensing economics for recovery technologies sold into miners (DLE service model, Phoenix Tailings producer model). | ROYALTY 2, DISSENT 2 | Whether the licensing-first model out-returns a producer/hybrid model; Round 03 option set. | `research/r00-businessmodel-economics.md` |
| W6 | P2 | Realized acquisition multiples and deal structures for process-technology licensing businesses and mining process-tech M&A. | CAPITAL 1 | Realism of the 8–10x revenue / 12–15x EBITDA exit (Round 04). | `research/r00-exit-multiples.md` |
| W7 | P2 | Seed-stage valuation and milestone-tranche norms for pre-pilot, pre-revenue deep-tech / minerals-tech companies. | CAPITAL 2 | $13M pre-money and tranche-logic benchmark; term-structure recommendation. | `research/r00-seed-valuation-norms.md` |
| W8 | P1 | Consensus 2026–2030 lithium and REE price and supply/demand-balance forecasts with ranges. | SPOT 1 | Price-sensitivity band on the royalty base (Round 04); exit realism. | `research/r00-li-ree-price-forecasts.md` |
| W9 | P1 | Operator technology-qualification cycles for new processing technology at major miners (stage gates, pilot-on-own-feedstock requirements, time-to-adoption), including public case timelines (HydroFloat at Carrapateena, Jetti at Pinto Valley). | MILL 1 | Adoption probability and sales-cycle length per segment (Round 04, Round 05). | `research/r00-operator-qualification-cycles.md` |
| W10 | P2 | Public evidence on majors' in-house and venture-funded processing-tech programs inside LiT's named accounts (BHP, Freeport, Rio Tinto, Glencore, Teck). | MILL 2 | Buy-vs-build-vs-fund-competitor risk; customer-concentration / displacement finding. | `research/r00-major-miner-techprograms.md` |
| W11 | P2 | Legal/regulatory treatment of environmental and closure liability for reprocessing abandoned/orphaned tailings impoundments (US and key jurisdictions). | WATERSHED 1 | Whether abandoned-site remediation is an asset or a liability hazard (Round 03 scoping, Round 05 risk). | `research/r00-tailings-liability.md` |
| W12 | P2 | Whether tailings-governance tightening (GISTM / GTMI) and ESG criteria measurably drive operator procurement of recovery technology, versus remaining reputational. | WATERSHED 2 | ESG demand-driver confidence band (SWOT Opportunities, Strategy positioning). | `research/r00-esg-procurement-driver.md` |
| W13 | P2 | Defensibility / substantiation standards for "no acidic byproducts" and energy-reduction environmental marketing claims in industrial contexts. | WATERSHED 3 | Greenwash / claim-substantiation exposure; claims-scoping guidance for deliverables. | `research/r00-green-claims-substantiation.md` |

**Execution order (next units).** P0 first (W1), then P1 (W2, W4, W5, W8, W9), then P2 (W3, W6, W7, W10, W11, W12, W13). Run one or two items per iteration. Each result file cites sources and tags every claim Cited / Assumption(confidence) / Unsupported. If a search cannot retrieve a fact, write `NEEDS EXTERNAL RETRIEVAL: <what, where to look>` in that file and continue.

**Merges applied (Monitor duplicate check).**
- CLAIM 1 + CLAIM 2 + DISSENT 1 → **W1** (LiT filing status and the Yoon/VTIP/MRC landscape are one search problem).
- CRUCIBLE 2 + CLAIM 3 → **W2** (sub-500C prior art is the same body of literature for both the technical and the IP-novelty read).
- SPOT 2 + ROYALTY 1 → **W4** (royalty-base norms and licensing-norm benchmarks are one search).
- ROYALTY 2 + DISSENT 2 → **W5** (producer-vs-licensing economics).
No request was rejected as out-of-scope; all are tied to a named decision.

---

## [Company] queue — flagged `NEEDS EXTERNAL RETRIEVAL` (LiT-internal data, not in the locked base and not web-retrievable)

These cannot be answered with WebSearch/WebFetch. They are recorded here, will be confirmed unretrievable in the disposition unit, and carried into Round 01 under the DISSENT gate ruling above.

| # | Pr | Request | Requesting seats | Decision it unblocks | Gate disposition if unretrievable |
|---|----|---------|------------------|----------------------|-----------------------------------|
| C1 | **P0** | LiT's primary bench dataset defining the 16–19% recovery claim (baseline process, feedstock, particle-size basis, grade-recovery curves) and any independent third-party validation beyond the VT conceptual study. | CRUCIBLE 3, DISSENT 3 | Confidence band on the core technology Strength. | Core Strength demoted to Assumption (Moderate-High); flagged High-risk / Low-confidence. |
| C2 | P1 | The derivation behind the $229M (small) and $2.29B (major) per-operator NSR production-value bases: which operators, commodities, and output. | SPOT 3 | Confidence band on the revenue model. | Revenue base flagged Unsupported-as-derived; sensitivity band widened in Round 04. |
| C3 | **P0** | Any executed VTIP commercial / exclusive license, LiT patent filing receipts, and the IIT (ISM) Dhanbad agreement and its IP terms. | CLAIM 4, DISSENT 3 | IP ownership and freedom-to-operate certainty; whether there is anything clean to license. | "Globally patented" claim flagged High-risk; IP remediation treated as a precondition to proceed. |
| C4 | P1 | The downside / scenario sheets behind the financial projections (price, conversion, and timing sensitivities), if any exist. | CAPITAL 3, DISSENT 3 | Confidence band on returns; existence of any downside case. | Base treated as single optimistic path; Round 04 must construct downside cases de novo. |

---

## Exit-gate status after this unit

- [x] Research Request Register consolidated, deduplicated, and prioritized (this file).
- [x] Commissioned [Web] research executed and written to `research/` (W1–W13 all done; see `STATE.md` ledger).
- [x] [Company] queue dispositioned as `NEEDS EXTERNAL RETRIEVAL` with DISSENT's agreement to proceed (`research/r00-company-queue-disposition.md`).
- [x] Evidence base locked for Round 01 (W1 executed and [Company] queue flagged; lock recorded in `research/r00-company-queue-disposition.md`).
