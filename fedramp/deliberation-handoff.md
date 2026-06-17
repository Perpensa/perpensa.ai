# Deliberation Handoff: FedRAMP Wedge

---

## 1. Hardened Wedge Thesis

The company builds the compliance infrastructure layer — not the compliance documentation software — for cloud-native SaaS companies pursuing their first federal authorization under FedRAMP 20x. The core claim: winning is not about building the best SSP editor. It is about owning the compliant environment (LaunchPad), the proprietary validated control-implementation repository (OSCAL component-definition library), and the ConMon automation layer — and making the documentation a byproduct of that infrastructure.

The structural moat is twofold. First: the OSCAL component-definition library is a proprietary data asset requiring 2-3 years of production exposure to build at cloud-provider depth. It cannot be replicated by free PMO tooling (which generates structure, not validated content) and cannot be acquired by buying Paramify. Second: live ConMon workflows create switching costs that grow monotonically with time — migrating compliance tooling during active ConMon is a compliance event. Vanta can win the net-new authorization market; it cannot unlock an installed ConMon base.

Target customer: cloud-native Series A-C SaaS on the 20x Class C (Moderate) path under CR26, triggered by a federal contract requirement. Product reason-to-exist: structural consistency from a single OSCAL data model eliminates the cross-document inconsistency that kills first-time authorizations.

What changed after deliberation: (1) ConMon is the primary moat anchor — authorization sprint is priced as customer acquisition, near cost; (2) the OSCAL component-definition library is the primary R&D investment, not documentation UX; (3) Paramify must be treated as already-acquired from day one — 3PAO channel built independently; (4) GTM targets greenfield cohort only in first 18-24 months (Vanta installed base excluded); (5) procurement signal must fire within 30 days of contract award; (6) migration market (523 Rev5-certified orgs) is a first-class revenue line, not a contingency; (7) Series A must be sized for a 12-month Phase 3 slip ($15-20M).

---

## 2. Resolved Tensions

| Objection | Raised by | Resolution type | Detail |
|---|---|---|---|
| FedRAMP-only TAM ($30-45M) is a Series B ceiling, not Series C foundation | Diana (R2-S1) | Escalated | TAM worsened post-K3 to $18-29M adjusted. Three exit paths identified (acquisition / expansion IPO / infrastructure platform). Choice deferred to strategy; data required before resolution. |
| Guide Rail margin risk — AI augmentation unproven at control-family depth | Diana (R2-S2) | Hedged | 1:30 advisor:customer ratio guardrail retained. AI augmentation scoped to pattern-matching and templating; senior judgment required for 3PAO-challenged controls. Falsification: ratio exceeds 1:20 at Series B. |
| LaunchPad unit economics not disaggregated | Diana (R2-S3) | Restructured | LaunchPad priced at cost-recovery baseline; premium pricing for ConMon infrastructure management tier. Migration product added as separate revenue line (K4 restructure). |
| 3PAO channel conversion hypothesis unproven at scale | Rafael (R2-S4) | Hedged | Channel built independently (no Paramify dependency per K1 hedge). Validation metric: ≥5 qualified opportunities in 12 months of first partnership. Hedge cost: 6-12 months additional channel build time. |
| Sales-cycle cash gap — first ConMon ARR not before Q1-Q2 2028 | Rafael (R2-S5) | Restructured | Series A sized for 12-month slip ($15-20M). Migration market (523 orgs) activated as bridge revenue. Gap acknowledged and capitalized. |
| Procurement signal timing — may land after 3PAO recommendation already made | Rafael (R2-S6) | Restructured | Detection latency <30 days from contract award elevated to hard product spec requirement. Falsification: >50% of first-cohort accounts received 3PAO recommendation before outreach landed. |
| K1: Vanta acquires Paramify before LaunchPad deployed | Sarah (R3) | Hedged | No Paramify dependency in architecture or GTM. 3PAO channel built independently. LaunchPad Phase 1 (two cloud providers, component-definition telemetry active) must reach production within 12 months of Series A close. |
| K2: Incumbent ships OSCAL-native + infrastructure in 12-18 months | Sarah (R3) | Restructured | Thesis rebuilt around component-definition library (non-replicable data moat) and ConMon switching costs. Authorization sprint repriced as acquisition mechanism. Fast follower wins net-new market; cannot unlock installed ConMon base. |
| K3: Vanta bundles FedRAMP + SOC 2 to existing 16K customers | Sarah (R3) | Hedged | GTM explicitly excludes Vanta installed base for first 18-24 months. Effective TAM adjusted to ~1,050-1,275 accounts ($18-29M ceiling). TAM tension escalated to strategy. |
| K4: Phase 3 slips 9-12 months | Connor (R3) | Restructured | Migration market (523 Rev5 orgs) becomes first-class revenue line shipping within 6 months. Series A sized for slip. |
| K5: PMO endorses free 20x OSCAL toolchain | Connor (R3) | Restructured | Comply Engine value repositioned from documentation generation to proprietary component-definition library content. Free PMO tool generates structure; library generates validated content. Library must remain proprietary. |
| Regulatory stability — OSCAL mandate softens, 20x deprioritized | Connor (R1-D5) | Accepted | OSCAL is load-bearing infrastructure for PMO's operating model; full rollback requires abandoning 20x entirely. Accepted as low-probability residual risk. |

---

## 3. Validated Hypotheses

| Hypothesis | Owner | Falsification condition | Status |
|---|---|---|---|
| CR26 routes cloud-native Moderate applicants exclusively to 20x Class C; Rev5 and 20x are non-interchangeable | Connor | PMO issues guidance permitting Rev5 for cloud-native Moderate applicants post-CR26 | Survived — stable confirmed policy |
| The OSCAL component-definition library, built through live 3PAO assessments, is non-replicable on a 12-18 month timeline | James | Vanta or competitor ships production-validated component-definition library (not just SSP generation) within 18 months of CR26 | Survived — contingent on library being the primary R&D investment from day one |
| ConMon migration during active authorization is a compliance event that creates structural switching costs | Mariana | PMO clarifies that platform migration during ConMon does not require a significant change notification | Survived — grounded in 20x ConMon specification |
| Guide Rail is deliverable at 1:30+ advisor:customer ratio using AI-augmented review | Mariana | Headcount ratio exceeds 1:20 at Series B | Survived as target model; unproven operationally. Modified: AI scope narrowed to templating and pattern-matching; judgment calls for 3PAO-challenged controls require senior review |
| 3PAO referral channel converts when cleaner packages improve 3PAO margins | Rafael | Fewer than 5 qualified opportunities from any single 3PAO partnership in 12 months | Survived — structural logic intact; path to channel now independent of Paramify |
| Procurement signal fires within 30 days of contract award, before 3PAO recommendation | Rafael | >50% of first-cohort accounts already had 3PAO recommendation before outreach reached them | Modified — upgraded from GTM assumption to hard product spec requirement; engineering feasibility unconfirmed |
| FedRAMP Moderate authorization satisfies CMMC L2 requirements under Jan 2 2024 DoD memo | Research / Connor | DoD reverses FedRAMP Moderate Equivalency for CMMC L2, or adds CMMC-specific requirements not covered by FedRAMP Moderate | Survived — policy mechanism established. Unvalidated: whether it drives premium ACV from CMMC-adjacent customers |
| Integrated wedge commands ACV above $150K | Diana | First 20 customer ACVs average below $150K | Unvalidated — no data exists until first 20x authorization cohort completes. Critical dependency for the expansion TAM thesis |

---

## 4. Open Questions for Strategy

| Question | Why it matters | Data needed to resolve |
|---|---|---|
| What exit path is the company building toward: acquisition ($18-45M ARR), expansion IPO ($100M+ ARR), or infrastructure platform ($100K+ ACV on LaunchPad/ConMon standalone)? | Determines Series A framing, milestone structure, investor profile, and product investment priorities. The three paths diverge; choosing the wrong one wastes 2 years | Founder and investor alignment decision. This is a choice, not a discovery. Must be made before the Series A pitch. |
| Does the integrated wedge command ACV above $150K in the first 20 customer relationships? | K3 hedge reduced effective TAM to $18-29M FedRAMP-only ceiling. Without ACV >$150K, there is no Series C path | First 20 authorization sprint contracts signed and priced. Earliest data: H1 2027 if Phase 3 opens Q4 2026 |
| Does FedRAMP Moderate Equivalency translate to CMMC-adjacent customers paying a premium? | Nearest-term TAM expansion lever with a live policy mechanism. CMMC 2.0 L2 mandatory assessments take effect November 2026 | First CMMC-adjacent customers engaged post-November 2026; whether they pay a premium for dual-compliance value |
| Can procurement signal detection latency be reduced to <30 days from contract award? | S6 restructure elevated this to a hard product spec requirement. If infeasible, the pre-3PAO timing advantage disappears | Engineering feasibility assessment of SAM.gov/FPDS/GovWin pipeline; live measurement in first 90 days of production signal detection |
| At what LaunchPad depth does the K1 hedge condition become satisfied — specifically, what constitutes "Phase 1 production-deployed"? | The K1 hedge requires LaunchPad Phase 1 production-deployed within 12 months of Series A close; "production-deployed" must be defined precisely enough to evaluate whether the hedge is met | Product team specification: cloud providers covered, control-family depth, OSCAL component-definition telemetry requirements |
| Does the component-definition library architecture permit the K5 restructure — is the library a platform-resident data asset or an exportable OSCAL artifact? | K5 restructure survives only if the library cannot be ingested by a PMO reference tool. If the library outputs portable OSCAL files, a free tool could replicate its value | Architecture decision: whether library outputs OSCAL artifacts (portable) or lives inside the platform's data model and generates artifacts on demand without exporting the library itself |
| What is the migration market's ACV and sales cycle, and can it serve as meaningful bridge revenue during a Phase 3 slip? | K4 restructure depends on the migration market (523 Rev5 orgs) generating real bridge revenue. If the market is slower or lower-ACV than assumed, the Phase 3 slip scenario becomes more dangerous | First 3-5 migration customer engagements; measure ACV, sales cycle length, and buyer profile relative to authorization sprint customers |

---

## 5. Risk Register

| Risk | Trigger | Probability | Accepted mitigation / carried unmitigated |
|---|---|---|---|
| K2: Fast Follower — Vanta ships OSCAL-native + infrastructure in 12-18 months | Vanta ships credible OSCAL-native + infra product by Q4 2027 | 40-50% | Mitigated by restructure: thesis repositioned to component-definition library data moat + ConMon switching costs. Mitigation requires library built to production-validated depth within 24 months and ConMon installed base accumulating before fast follower arrives. Monitor Vanta product changelogs quarterly. |
| K5: Reference Implementation — PMO endorses free 20x OSCAL toolchain | GSA/PMO endorses free OSCAL-native 20x documentation suite within 36 months | 20-30% | Mitigated by restructure: Comply Engine value repositioned to proprietary validated library content, not generation software. Library must remain proprietary. Residual 5-10% that PMO ships a library with validated content (not just structure) carried unmitigated. |
| K1: Acquisition — Vanta buys Paramify before LaunchPad Phase 1 is production-deployed | Vanta acquisition closes before LaunchPad Phase 1 milestones met | 45-55% acquisition probability; 30-40% that it precedes LaunchPad Phase 1 | Mitigated by hedge: no Paramify dependency. LaunchPad Phase 1 production within 12 months of Series A close. If milestone is missed, risk escalates to fatal. |
| K3: Bundle — Vanta discounts FedRAMP + SOC 2 to installed base | Vanta activates FedRAMP expansion sales to existing 16K customers at 75-80% combined pricing | 60-70% of eligible Vanta accounts | Mitigated by hedge: GTM excludes Vanta installed base for 18-24 months; effective TAM reduced. Residual: if Vanta installed-base overlap exceeds 40% of total addressable FedRAMP market, hedge is insufficient — carried partially unmitigated at that level. |
| K4: Phase 3 Slip — enrollment slips 9-12 months | Phase 3 opens mid-2027; first ConMon revenue shifts to H1-H2 2029 | 30-40% | Mitigated by restructure: migration market as first-class bridge revenue; Series A sized for slip ($15-20M). Residual: migration ACV (~$30-50K) does not match authorization sprint; bridge is cash-flow mitigation, not valuation story. Series B may require bridge at unfavorable terms if slip extends beyond 12 months. |
| TAM ceiling — FedRAMP-only TAM insufficient for venture scale without expansion validation | First 20 ACVs average below $150K; CMMC equivalency generates no premium revenue | Measured by first ACV cohort (H1 2027 earliest) | Carried unmitigated within the deliberation. Mitigation path exists (first ACV data, CMMC customer signals) but requires post-Series A validation. If first ACV data does not exceed $150K, expansion path closes and strategy must pivot to acquisition-path framing. |
| Guide Rail model failure — advisory ratio breaks under authorization complexity | First-time authorizations require senior judgment at higher frequency than 1:30 ratio supports | Contingent on first Guide Rail deployments | Hedged: 1:30 ratio is the guardrail; AI coverage built iteratively against live package judgment categories. Falsification: ratio exceeds 1:20 at Series B. If falsified, Guide Rail must be repriced as premium advisory tier with explicit margin modeling. |
| Procurement signal timing — signal fires after 3PAO recommendation | Detection latency exceeds 30 days; 3PAO recommends competitor before outreach lands | Unmeasured until first cohort | Mitigated by restructure: <30 days elevated to hard product spec. Residual: engineering feasibility unconfirmed. If infeasible, procurement signal advantage is reduced from pre-3PAO edge to general demand-generation tool. |
| Regulatory stability — 20x timeline or OSCAL mandate changes materially | Administration priority shift or Phase 3 implementation failure triggers CR26 revision | 10-15% for material change; <5% for full rollback | Accepted: OSCAL is load-bearing for PMO operating model; full rollback requires abandoning 20x. Partial softening (>12-month Phase 3 extension) captured in K4 and already mitigated. Residual tail risk accepted. |
