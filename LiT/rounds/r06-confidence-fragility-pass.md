# Round 06 — Confidence-Band / Fragility Pass

**Unit:** Round 06, final sequential step (exit-gate line 60): *confirm every conclusion in all three synthesis documents carries a confidence band and a fragility note,* attending to the standing residuals logged in `rounds/r06-dissent-reconciliation.md`.
**Scope:** `synthesis/SWOT.md`, `synthesis/STRATEGY.md`, `synthesis/EXECUTION_PLAN.md`.
**Standard applied:** a *conclusion* (a recommendation, a matrix verdict, a gate, a risk-severity finding, a residual) is compliant only when it carries (1) a **confidence band** (High / Moderate-High / Moderate / Low, or the Cited / Assumption-with-band / Unsupported evidence tag that fixes its strength) **and** (2) a **fragility note** (the named fact, retrieval, or judgment whose change would move the conclusion). A band without a fragility note, or a fragility note without a band, is a defect.
**Method:** audit each document by conclusion-class, not line by line; then trace the six classes of standing residual from the dissent reconciliation (item 3) to where each carries its band and fragility; record PASS or apply the minimal fix.

---

## Part A — Per-document audit

### A.1 SWOT.md

| Conclusion class | Confidence band present? | Fragility note present? | Where |
|---|---|---|---|
| Executive answer (3 inverted headline assets + what survives + advisory posture) | Yes — each inverted asset Cited to a High gating risk ID (R-IP-1, R-TECH-1, R-REV-8) | Yes — document-level note bands the three gating findings High and localizes fragility to C1/C3/C4; the "what survives" limbs are scoped inline | Exec answer + document-level note |
| Strengths S1-S3 + 2 contingent option-value notes | Yes — every row carries Status / Confidence (Supported / Qualified / Demoted, Moderate-High → Low) | Yes — S2 scoped ("relevance is not performance"), S3 redirected, contingent notes carry "contingent on [named evidence]" | Strengths table + contingent notes |
| Weaknesses W1-W14 | Yes — every row carries Status / Confidence + a severity-banded risk ID | Yes — contingencies 1-5 and 7 map exactly which retrieval downgrades which (R-IP-1, R-TECH-1, R-REV-1/2, R-ESG-1, R-ADOPT) | Weaknesses table + Preserved splits 1-8 |
| Opportunities O1-O9 | Yes — every row banded (Moderate-High → Moderate; O9 Qualified) | Yes — policy-dependent O4/O5/O9 bounded by contingency 8 (R-GEO-1); O6 "option, not present fact" | Opportunities table + contingency 8 |
| Threats T1-T14 | Yes — every row carries Status / Confidence + a severity-banded risk ID | Yes — model-contingent severities (R-ESG-2 contingency 5), pending-FTO (R-IP-3), retrieval pointers (C3/C4) | Threats table + register cross-links |
| Consolidated risk register (28 entries) | Yes — every entry severity-banded (8 High / 12 Elevated / 8 Moderate, R06-corrected) | Yes — retrieval column (C1/C3/C4) + cross-links column name what moves each | Register tables + summary |
| Document-level finding | Yes — "Confidence in the structure: High" | **Partial → fixed this unit** (see Part C) | Document-level note |

**SWOT verdict: PASS after one fix.** Every matrix item, register entry, and the executive answer carries a confidence band; fragility is carried per-item through the contingencies/cross-links and consolidated in the document-level note. The single defect: the document-level fragility note named only the **company-queue axis** (C1/C3/C4) and asserted the structural findings "stand regardless," which omitted the **governance/neutrality fragility axis** that STRATEGY §7 and EXECUTION §7/§8 identify as their deepest fragility. That axis is upstream-sourced in SWOT (the DISSENT-T4 neutrality-hazard process note), so SWOT's own fragility note must name it. Fixed in Part C.

### A.2 STRATEGY.md

| Conclusion class | Confidence band | Fragility note | Where |
|---|---|---|---|
| §1 recommended direction (conditional pass → Option 1 convert-to) | Yes — explicit **Confidence:** line (High deck-unfundable / High Option-1-if-proceeding / Moderate on pass-vs-convert) | Yes — explicit **Fragility:** line ("flips the moment the two §5 defeaters resolve") | §1 |
| §3 matrix ranking + 2 sensitivities | Yes — scores Assumption-tagged, anchored to the register; sensitivity robustness stated | Yes — "reduces to one judgment" (Option 1 down-world C6) named as the movable cell | §3 |
| §4.1 deck-unfundable (3 gating inversions) | Yes — each Cited (High) | Yes — §7 robust-bullet: "fragile only to a wholesale IP/validation retrieval... low probability, caught by Gate A/B" | §4.1 + §7 |
| §4.2 capture-vs-liability gradient | Yes — DISSENT-OPT-3 Cited gradient | Yes — Option 4 capture-sufficiency "logged open" | §4.2 |
| §4.3 load-bearing 0-vs-1 ruling | Yes — Moderate (the marginal call) | Yes — two unretrieved defeaters named (company acceptance; A∥B parallel-readability) | §4.3 + §7 marginal-by-design bullet |
| §4.4 Gates G0/A/B/C + §5 triggers T1-T10 | Yes — each Cited to a risk ID / pre-mortem section | Yes — each trigger names the fact that fires or holds it; G0 fragility = "if it cannot be stood up, gates revert to self-discipline" | §4.4, §5 |
| §6 dissent log D1-D6 | Yes — each given a resolved/standing status | Yes — D5 standing-binding (awaits C3); D1 conditional on T1+T2 | §6 |
| §7 document-level | Yes — five banded bullets (Robust / Robust / Marginal-by-design / unretrieved dependency / deepest-fragility) | Yes — each bullet carries its mover; deepest = governance (G0) | §7 |
| §8 validation verdict | Yes — High on claim-support, Moderate on sufficiency | Yes — sufficiency depends on unretrieved C1/C4 + uncontracted counterparties | §8 |

**STRATEGY verdict: PASS, no fix.** Every conclusion carries both. The deepest fragility (governance, not pricing) is explicit at §7 and the G0/T10 structure is the named control.

### A.3 EXECUTION_PLAN.md

| Conclusion class | Confidence band | Fragility note | Where |
|---|---|---|---|
| §1 one-statement plan + spine | Yes — explicit Confidence (High structure / Moderate on T2) | Yes — explicit Fragility ("entire plan past P0 contingent on T1+T2; early termination is a feature") | §1 |
| §2 phase map + gates G0/T1/T2/A/B-pre/B/C + T3 + §2.4 calendar flag | Yes — each gate Cited to a risk ID / pre-mortem section | Yes — each gate carries its abandon action (the fail-reading that moves it); §2.4 names T2 as the binding uncertainty | §2.1-2.4 |
| §3 resourcing (capital draw + team + 2 conflicts) | Yes — explicit Confidence (High re-sequencing rule / Moderate on P1 envelope) | Yes — explicit Fragility (Gate B independence within envelope; halts at P1 with bounded loss) | §3 close |
| §4 KPI/artifact/owner per gate + non-gameable defs + 4 strikes | Yes — explicit Confidence (High structure / Moderate on outside-pool vendor) | Yes — explicit Fragility (Gate B "at scale" is load-bearing; refuses to clear if unmet) | §4 close |
| §5 risk-to-mitigation map (8 High + 12 Elevated) | Yes — explicit Confidence (High coverage complete) + every row severity-banded | Yes — explicit Fragility (master pair shares one mitigation; T2 mis-judge fails both) + per-row residual column | §5.1-5.3 close |
| §6 sequencing + critical path + feed-forward | Yes — explicit Confidence (High topology / Moderate on ≤12mo read) | Yes — explicit Fragility (dominant duration on one least-compressible serial link) | §6 close |
| §7 hand-to-R06 + document-level | Yes — explicit document-level Confidence | Yes — explicit document-level Fragility (early-termination by design) | §7 |
| §8 validation verdict | Yes — High on faithful carry / Moderate on sufficiency | Yes — deepest fragility (G0 un-standable → self-discipline) | §8 |

**EXECUTION verdict: PASS, no fix.** The most thoroughly banded of the three: every numbered section closes with an explicit Confidence + Fragility pair, and every §5 risk row carries a severity band plus a residual.

---

## Part B — Standing-residuals trace (the six classes from `r06-dissent-reconciliation.md` item 3)

Each standing residual must carry, somewhere in the document set, an explicit confidence band **and** a fragility note that marks it as live and not closeable on the locked evidence. Confirmed:

| Standing residual | Confidence band | Fragility note | Carried in |
|---|---|---|---|
| **D5 / gate (a) IP** (the one open *binding* dissent) | SWOT W1 / R-IP-1 **High (gating)**; STRATEGY D5 binding; Cited | Downgrades only on C3 retrieval (executed exclusive VTIP license + clean FTO); until then "do not proceed / restructure-IP-first" stays live | SWOT W1 + contingency 1; STRATEGY §4.4 Gate A, §6 D5; EXECUTION §2.2 Gate A, §5.1 R-IP-1 |
| **DISSENT-T4 governance residual** (deepest, evidence cannot price it away) | Named the **deepest fragility**; controllable only by governance | If G0's no-position authority cannot be stood up, every gate reverts to advisor self-discipline | STRATEGY §7 deepest-fragility bullet, §4.4 G0; EXECUTION §7/§8 deepest fragility; **now also SWOT document-level note (Part C fix)** |
| **"Bench passes, scale never does"** | EXECUTION §4.2 strike-4 standing failure mode; R-TECH-1 / R-TECH-2 **High / Elevated** | If "at scale" reads down to bench-plus, Gate B does not clear; T2 fails honestly | EXECUTION §4.2 strike-4, §5.1 R-TECH-1 residual, §6.4 flag-1, §7 |
| **4 contained-not-removed residuals** (R-ADOPT-1, R-ADOPT-2, R-TECH-3, R-ADOPT-5) | Each severity-banded **High/High/Elevated/Elevated**; §5 "High that the labels are honest, not concessive" | Each structural to licensing-incremental-tech-into-concentrated-buyers; contained, paced, or fenced, never removed | EXECUTION §5.1 rows + §5.3; SWOT register; STRATEGY §4.2 / §8 |
| **R-REV-8 × R-ADOPT-2 master pair** (single shared mitigation) | Both **High (master)**; "single most load-bearing judgment in the plan" | Both ride the one staged-option-to-not-proceed mechanism; a mis-judged T2 fails both at once | EXECUTION §5.3 master-risk flag + §5 fragility note; STRATEGY §4.2, §8; SWOT R-REV-8 / R-ADOPT-2 |
| **Gate C single-serial-link time-to-revenue** | R-ADOPT-2 **High (master)**; §6 "least-compressible link" | The dominant duration sits on one serial link the plan can pace and abandon but never shorten | EXECUTION §6.4 flag-4 + §6 fragility note |

All six standing residuals are represented at full adverse strength, each with an explicit band and a fragility note, none recorded as closed. No false closure.

---

## Part C — The one fix applied this unit

**SWOT.md document-level fragility note — governance axis added.** Before this unit the note read fragility as "concentrated in the unretrieved company queue (C1, C3, C4)" and asserted the structural/market findings "stand regardless." That is true for the *market* fragility axis but silently dropped the *second* fragility axis the two downstream documents call their deepest: the neutrality/governance hazard (DISSENT-T4), which is **not** in the company queue and **cannot** be retired by any data-room retrieval, only controlled by the downstream G0 structure. SWOT is the upstream source of that hazard (its process note), so its own fragility note must name both axes for cross-document consistency. One sentence added pointing the governance-fragility axis to the DISSENT-T4 process note and the downstream G0 control. No matrix item, band, or severity changed.

No other edit was required: STRATEGY and EXECUTION already carry an explicit confidence band and fragility note on every conclusion, including all six standing residuals.

---

## Verdict

**PASS.** Every conclusion in all three synthesis documents carries a confidence band and a fragility note. The six classes of standing residual are each represented with an explicit band and a live fragility note, none falsely closed. One cross-document consistency fix applied (SWOT governance-fragility axis). Exit-gate line 60 satisfied.

**Hand-off:** Round 06 is complete (pre-mortem, three-document validation, dissent reconciliation, confidence/fragility pass all done). Next unit = Round 07 synthesis, beginning with the assembly/traceability check of the three existing documents and the writing of `synthesis/EXECUTIVE_SUMMARY.md`.
