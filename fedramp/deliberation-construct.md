# Perpensa Deliberation Construct: FedRAMP Wedge

**Subject:** "FedRAMP in a Box" — the company that wins the Series A through Series C SaaS wedge
**Framework:** Perpensa (Research → Discuss → Challenge → Evolve)
**Date:** June 16, 2026
**Status:** Ready to run

---

## How to use this file

This is the operational spec for running the deliberation as an agentic loop in Claude Code. Each round is a discrete stage with a defined objective, defined inputs, defined participant actions, and a hard exit condition. **Do not advance to the next round until the current round's exit condition is met.** The deliberation produces structured artifacts; it does not produce the strategy. The strategy document is a separate downstream step that consumes these artifacts.

### Critical scoping note

> The deliberation **feeds** the strategy document. It does not **write** it.
>
> The output of this construct is a set of resolved tensions, validated hypotheses, surviving claims, and explicit open questions. A human (or a separate Claude Code run) then synthesizes those into the strategy. If at any point a round starts producing strategy prose ("here is our go-to-market plan…"), stop — that is scope creep. The round's job is to resolve the inputs that a strategy will later be built on.

---

## Inputs (read before Round 1)

The deliberation consumes four prior artifacts. Load all of them into context before starting.

| Artifact | Role in deliberation |
|---|---|
| `fedramp-research.md` (Market Research Brief) | Competitive landscape, gap analysis, three-pillar product concept |
| `fedramp-technical-brief.md` (Technical & Functional Brief) | FedRAMP requirements, control families, authorization lifecycle, ConMon |
| `fedramp-committee.md` (Committee Personas) | The six personas, their roles, cognitive traits, ground rules |
| `fedramp-research-findings.md` (Research Findings) | Answers to the 24 research requests, with per-member verdicts |

---

## The committee

Six members, role-assigned. Role is a job, not a belief. A persona must fully discharge their assigned role before agreeing with anyone.

| Member | Role | Lens | Color |
|---|---|---|---|
| Mariana Reyes | Advocate 1 | Federal GRC / operational reality | brass |
| James Kowalski | Advocate 2 | Platform architecture / developer experience | brass |
| Diana Park | Skeptic 1 | Unit economics / capital efficiency | steel |
| Rafael Navarro | Skeptic 2 | Federal channel / GTM reality | steel |
| Dr. Sarah Lin | Red Team 1 | Incumbent response / competitive defense | signal |
| Connor Trask | Red Team 2 | Regulatory & execution risk | signal |

### Ground rules (enforced every round)

1. **Role discipline** — discharge your assigned role before converging.
2. **Steel-man obligation** — restate an argument in its strongest form before rejecting it.
3. **Falsifiability** — every claim must carry a condition under which it would be wrong.
4. **No unresolved tensions** — disagreements resolve via concession, escalation to open question, or thesis restructure. Never "noted."
5. **Evolve is mandatory** — a thesis that survives unchanged was not challenged hard enough.

---

## The objective

Design the company that enters the FedRAMP market at Series A and builds a defensible position through Series C, targeting cloud-native SaaS companies pursuing their first federal authorization. The deliberation must resolve the inputs that determine: **what to build first, who to sell to first, what to say to them, and what compounding advantage to build.** It does not write the plan; it hardens the foundation the plan stands on.

### The five anchored conclusions from research (the starting position)

These came out of Phase 1 and are the deliberation's starting material. They are not yet locked; the rounds test them.

1. **Customer and path are the same thing.** CR26 routes cloud-native Series A-C SaaS into the 20x Class C path; Rev5 and 20x are non-interchangeable. Build 20x-native, export Rev5 for migration.
2. **The moat is the combination, not any single pillar.** OSCAL-native docs + infrastructure (LaunchPad) + 3PAO-channel/procurement-signal GTM.
3. **The product's reason to exist is consistency.** Single OSCAL data model eliminates the inter-document inconsistency that kills first-time authorizations.
4. **ConMon is the retention engine.** Permanent monthly obligation with revocation teeth → 5+ year LTV, $150K-$350K/yr recurring spend, 75% automatable.
5. **GTM is channel-led, not product-led.** Buyer triggered by a contract, arrives in crisis, trusts the 3PAO network.

### The one unresolved tension carried into the deliberation

> Diana's $30M-$45M FedRAMP-only TAM at realistic share, versus venture-scale ambition. Resolution path runs through the expansion thesis (CMMC equivalency today; GovRAMP/FISMA share the NIST substrate) and the ACV question (can the integrated wedge command more than the $90K blended ACV used in sizing?).

---

## ROUND 1 — RESEARCH (Independent Positioning)

**Objective:** Each member commits an independent, written position on the five anchored conclusions and the central tension, through their own lens, with no cross-talk. This surfaces disagreement honestly before social dynamics smooth it over.

**Inputs:** All four prior artifacts.

**Participant actions:**
- Each of the six members produces a position statement (≤400 words) covering:
  - Which of the five anchored conclusions they accept, doubt, or reject — and why.
  - Their single sharpest concern about the wedge as currently framed.
  - One falsifiable claim they are willing to stake, in their role.
- No member reads another's statement until all six are committed.

**Do NOT:** discuss, rebut, or converge. This round is parallel and silent.

**Exit condition:** Six committed position statements exist. At least three distinct points of disagreement are explicitly named (if fewer than three surface, the round failed — push harder, the conclusions are being accepted too easily).

**Hands to Round 2:** The disagreement map (the named points of tension) and the six staked claims.

---

## ROUND 2 — DISCUSS (Advocates Build, Skeptics Respond)

**Objective:** Produce the strongest possible articulation of the wedge, then subject it to financial and channel reality. The output is a refined wedge thesis with the soft spots identified, not defended away.

**Inputs:** Round 1 disagreement map and staked claims.

**Sequence (strict order):**
1. **Advocates present (Mariana + James).** Build the strongest integrated case for the wedge: what to build first, why the combination is defensible, why cloud-native Series A-C is the right beachhead. Mariana anchors operational reality and ConMon; James anchors architecture and the OSCAL/LaunchPad moat. Single combined case, ≤700 words.
2. **Skeptics respond (Diana + Rafael).** Diana attacks the economics: TAM ceiling, three-pillar margins, the cost-to-serve of Guide Rail, the ACV question. Rafael attacks the GTM: channel dependence on 3PAOs, sales-cycle cash gap, who the economic buyer actually is. Each ≤500 words.
3. **Advocates rebut once (≤400 words combined),** applying the steel-man rule: restate the strongest skeptic objection before answering it.

**Do NOT:** let the Red Team in yet. Round 2 is the advocate/skeptic axis only. Do not resolve the TAM tension here — surface it sharply and carry it forward.

**Exit condition:** A written "refined wedge thesis" exists that (a) states the strongest case, (b) lists every skeptic objection that landed, and (c) marks each objection as either answered, partially answered, or open. No objection may be silently dropped.

**Hands to Round 3:** The refined wedge thesis with its labeled soft spots, for the Red Team to attack.

---

## ROUND 3 — CHALLENGE (Red Team Attacks)

**Objective:** Try to break the wedge. Construct concrete failure scenarios and competitive-response models. The objective is not to be fair — it is to find the conditions under which this company dies, so the strategy can be built to avoid them.

**Inputs:** The refined wedge thesis from Round 2.

**Participant actions:**
- **Sarah (incumbent/competitive)** constructs at least three named failure scenarios. Minimum required set:
  - *The Acquisition:* Vanta acquires Paramify before the company reaches scale. What survives?
  - *The Fast Follower:* an incumbent ships OSCAL-native + a basic environment layer within 12 months. What is the response?
  - *The Bundle:* Vanta offers FedRAMP at a steep discount bundled with SOC 2 to a shared prospect. How is the deal won or lost?
- **Connor (regulatory/execution)** constructs at least two named failure scenarios. Minimum required set:
  - *The Slip:* Phase 3 slips to mid-2027 and the cash-flow gap opens. Does the company survive the interim on the migration market alone?
  - *The Reference Implementation:* the PMO ships its own 20x tooling or blesses a free reference implementation (e.g., RegScale's OSCAL Hub). Does the product become redundant?
- For each scenario: state the trigger, the mechanism of damage, the probability (calibrated, not hand-waved), and whether the wedge survives it as currently framed.

**Steel-man obligation applies in reverse:** before declaring a scenario fatal, the Red Team must state the strongest reason the company would survive it.

**Do NOT:** propose fixes. Round 3 names the kill conditions; it does not solve them. Solving happens in Round 4.

**Exit condition:** Every failure scenario is documented with trigger, mechanism, probability, and a survival verdict (survives / survives-if / fatal). At least one scenario must be rated "fatal as currently framed" or the Red Team has not done its job — if everything survives cleanly, the thesis is being protected, not tested.

**Hands to Round 4:** The ranked kill-condition list, each tagged survives / survives-if / fatal.

---

## ROUND 4 — EVOLVE (Reconstruct the Hardened Thesis)

**Objective:** Rebuild the wedge thesis so it survives the Round 3 attacks, or explicitly accept the risks it cannot design away. The output is the hardened input package for the strategy document. **This is where the deliberation ends.**

**Inputs:** The ranked kill-condition list from Round 3.

**Participant actions (full committee, roles relaxed for synthesis):**
- For each "fatal" and "survives-if" kill condition, the committee must do exactly one of:
  1. **Restructure** the thesis so the condition no longer kills it (state the specific change).
  2. **Hedge** the condition (state the explicit mitigation and its cost).
  3. **Accept** the risk (state it plainly as a known risk the strategy must carry).
- Re-test the five anchored conclusions: which survived intact, which were modified, which were discarded.
- Resolve or formally escalate the carried TAM tension. It must end as either: resolved (with the resolution stated) or escalated (as a named open question for the strategy phase with the specific data needed to close it).

**Do NOT:** write the strategy. Produce the *inputs* to the strategy. The difference: "the moat is the OSCAL component-definition library plus LaunchPad, because acquisition cannot replicate infrastructure switching cost" is a deliberation output. "Here is our 18-month roadmap and pricing table" is strategy — out of scope.

**Exit condition (the deliberation is complete when all of these exist):**
- [ ] Hardened wedge thesis (the surviving, restructured core claim)
- [ ] Resolved-tensions log (every Round 2/3 objection with its resolution: restructured / hedged / accepted)
- [ ] Validated-hypotheses list (the falsifiable claims that survived, with their test conditions)
- [ ] Open-questions list (what the strategy phase must still resolve, with the data needed)
- [ ] Risk register (the accepted risks the strategy must carry forward)

**Hands to:** the strategy document phase (separate, downstream).

---

## Output artifact: the deliberation handoff package

When Round 4 exits, emit a single structured handoff (`deliberation-handoff.md`) with these five sections. This is the entire deliverable. Nothing else.

```
# Deliberation Handoff: FedRAMP Wedge

## 1. Hardened Wedge Thesis
[The surviving core claim — what to build, who for, why defensible — in <250 words]

## 2. Resolved Tensions
[Table: Objection | Raised by | Resolution type (restructure/hedge/accept) | Detail]

## 3. Validated Hypotheses
[Table: Hypothesis | Owner | Falsification condition | Status (survived/modified)]

## 4. Open Questions for Strategy
[Table: Question | Why it matters | Data needed to resolve]

## 5. Risk Register
[Table: Risk | Trigger | Probability | Accepted mitigation or "carried unmitigated"]
```

---

## Run discipline checklist

- [ ] Round 1 ends with ≥3 named disagreements (not premature consensus)
- [ ] Round 2 ends with every skeptic objection labeled answered/partial/open
- [ ] Round 3 ends with ≥1 "fatal" kill condition (not everything surviving)
- [ ] Round 4 ends with all five handoff sections populated
- [ ] No round produced strategy prose (roadmaps, pricing tables, plans)
- [ ] The TAM tension ended as resolved-with-detail or escalated-with-data-needed
- [ ] Every claim that left the deliberation carries a falsification condition

---

## Anti-patterns to watch for (stop the run if you see these)

- **Premature convergence:** members agreeing in Round 1 or 2 to avoid conflict. Force the disagreement.
- **Strategy leakage:** any round drafting the plan instead of resolving the inputs. Redirect to the round's actual objective.
- **Unfalsifiable claims:** "the market is huge," "this is defensible." Demand the condition under which it is false.
- **Silent drops:** an objection raised in Round 2 that never gets a resolution in Round 4. Every objection must be accounted for.
- **Fairness theater in Round 3:** the Red Team softening attacks. Their job is to find the kill conditions, not to be balanced.
- **Role collapse:** an Advocate conceding before fully building the case, or a Skeptic agreeing before fully testing. Hold roles until exit conditions.
