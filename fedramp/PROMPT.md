# Ralph Loop: Perpensa FedRAMP Deliberation

You are running ONE iteration of a staged, adversarial deliberation. Do NOT
try to complete the whole deliberation in one pass. Do one round's worth of
work, update state, and stop. The next iteration continues from where you left off.

## Critical scope boundary
The deliberation FEEDS a strategy document. It does NOT write one. Your output
is resolved tensions, validated hypotheses, surviving claims, and open questions.
If you find yourself drafting roadmaps, pricing tables, positioning copy, or a
go-to-market plan, STOP — that is strategy leakage and out of scope. Resolve the
inputs a strategy will later stand on; do not write the strategy.

## Step 1: Orient
Read `state/STATUS.md` to find the CURRENT ROUND and its exit-condition checklist.
If `state/STATUS.md` does not exist, you are starting Round 1 from scratch.
If the first line of STATUS.md is "DELIBERATION COMPLETE", stop immediately and
do nothing further.

## Step 2: Load only what this round needs
- ALWAYS read `deliberation-construct.md` (the full spec for round objectives,
  sequences, and exit conditions).
- Read the `context/` files relevant to the current round. At minimum read
  `context/03-committee.md` (personas + ground rules) and
  `context/05-research-findings.md` (the five anchored conclusions + the TAM tension).
- Read any prior `state/round-*.md` artifacts from completed rounds so the
  committee's positions and the personas persist across iterations.

## Step 3: Do exactly ONE unit of work for the current round
Advance the current round per the construct's defined sequence. Write output to
that round's artifact file:

- Round 1 -> `state/round-1-positions.md`  (six independent persona positions, no cross-talk)
- Round 2 -> `state/round-2-thesis.md`     (advocates present, skeptics respond, advocates rebut once)
- Round 3 -> `state/round-3-killlist.md`   (named failure scenarios with trigger/mechanism/probability/verdict)
- Round 4 -> `state/round-4-evolve.md`     (restructure/hedge/accept each kill condition)

Stay strictly in the assigned roles. Roles are jobs, not beliefs. An Advocate
must build the strongest case even with private doubts; a Red Team member must
construct real failure scenarios even if the idea is compelling. Apply the five
ground rules from the construct: role discipline, steel-man obligation,
falsifiability, no unresolved tensions, evolve-is-mandatory.

## Step 4: Check the exit condition HONESTLY
Apply the construct's exit condition for the current round. These checks exist
specifically to stop premature convergence — do not wave them through:

- ROUND 1: >=3 distinct disagreements explicitly named. If fewer surface, the
  conclusions are being accepted too easily — the round is NOT done; keep working.
- ROUND 2: every skeptic objection labeled answered / partial / open, none
  silently dropped. The TAM tension is surfaced sharply and CARRIED FORWARD
  (do not resolve it in Round 2).
- ROUND 3: every scenario has trigger, mechanism, calibrated probability, and a
  verdict (survives / survives-if / fatal). At least ONE scenario must be rated
  "fatal as currently framed". If everything survives cleanly, the Red Team is
  being too soft — push harder, the round is NOT done.
- ROUND 4: every fatal and survives-if condition resolved (restructure / hedge /
  accept); five anchored conclusions re-tested (survived / modified / discarded);
  TAM tension resolved-with-detail OR escalated-with-data-needed; all five
  handoff sections drafted.

If the exit condition is NOT met: update `state/STATUS.md` noting exactly what
remains for this round, then STOP. The next iteration continues this same round.

If the exit condition IS met: tick the round's boxes in `state/STATUS.md`, set
CURRENT ROUND to the next round, then STOP. (Do not roll straight into the next
round in the same iteration — one round of progress per iteration.)

## Step 5: Termination
When Round 4's exit condition is met, write `deliberation-handoff.md` in the
folder root with exactly these five sections and nothing else:

```
# Deliberation Handoff: FedRAMP Wedge
## 1. Hardened Wedge Thesis        (surviving core claim, <250 words)
## 2. Resolved Tensions            (table: Objection | Raised by | Resolution type | Detail)
## 3. Validated Hypotheses         (table: Hypothesis | Owner | Falsification condition | Status)
## 4. Open Questions for Strategy  (table: Question | Why it matters | Data needed)
## 5. Risk Register                (table: Risk | Trigger | Probability | Accepted mitigation / carried unmitigated)
```

Then set the FIRST LINE of `state/STATUS.md` to `DELIBERATION COMPLETE` and stop.

## Hard rules (stop the work if you catch yourself doing these)
- Never produce strategy prose (roadmaps, pricing, GTM plans). Downstream only.
- Never skip a round or merge two rounds into one iteration.
- Never let personas dissolve into one generic voice — read prior artifacts to
  keep them in character.
- Never silently drop an objection raised in an earlier round; it must be
  accounted for by Round 4.
- Never let the Red Team soften its attacks for the sake of balance.
- One round of progress per iteration, then stop.
