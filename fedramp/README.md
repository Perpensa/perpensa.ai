# Perpensa FedRAMP Deliberation — Ralph Loop

A staged adversarial deliberation that runs one round per loop iteration.
It produces a hardened input package (`deliberation-handoff.md`) that FEEDS
a downstream strategy document. It does not write the strategy itself.

## Folder layout
```
fedramp-deliberation/
├── PROMPT.md                   # the only file the loop feeds each iteration
├── deliberation-construct.md   # full spec (round objectives, sequences, exits)
├── ralph.ps1                   # PowerShell loop driver
├── README.md                   # this file
├── context/                    # lean working-context (read-only reference)
│   ├── 01-market-research.md
│   ├── 02-technical-brief.md
│   ├── 03-committee.md
│   ├── 04-committee-review.md
│   └── 05-research-findings.md
├── state/                      # accumulating artifacts + the state machine
│   └── STATUS.md               # current round + exit-condition checklist
└── deliberation-handoff.md     # FINAL output (created when complete)
```

## How to run
From inside this folder:
```powershell
.\ralph.ps1                 # default 20 iterations
.\ralph.ps1 -MaxIterations 30
```

The loop stops automatically when the first line of `state/STATUS.md` becomes
`DELIBERATION COMPLETE`. Each iteration advances ONE round (or continues a round
that hasn't met its exit condition yet).

## If you use the Ralph/Wiggum plugin instead of ralph.ps1
Point the loop's prompt at `PROMPT.md` and set the stop condition to the string
`DELIBERATION COMPLETE` appearing in `state/STATUS.md`. The plugin handles the
looping; everything else here is identical.

## The four rounds
1. **Research** — six independent persona positions, no cross-talk. Exit: >=3 named disagreements.
2. **Discuss** — advocates build, skeptics respond, advocates rebut. Exit: every objection labeled, none dropped.
3. **Challenge** — red team failure scenarios. Exit: >=1 scenario rated "fatal".
4. **Evolve** — restructure/hedge/accept each kill condition. Exit: all five handoff sections drafted. ENDS HERE.

## Watch the first two iterations
Deliberation quality degrades in loops in a recognizable way: personas start
agreeing, the red team softens, verdicts get vague. If Round 1 produces fewer
than three real disagreements, or Round 3 lands no fatal scenario, the loop is
smoothing toward consensus. Tighten PROMPT.md or intervene for that round rather
than trusting the output. The construct's anti-patterns section is the watch list.

## After completion
`deliberation-handoff.md` is the entire deliverable. A separate synthesis pass
(fresh Claude Code run or a human) turns it into the actual strategy document.
Keeping the two steps separate is the whole point: the strategy then inherits
only what survived the committee, not every unexamined assumption in the briefing.
