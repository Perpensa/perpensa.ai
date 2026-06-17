# Context 01: Market Research (condensed)

Source: 01-fedramp-market-research.html. This is the working-context version for the deliberation loop; the HTML is the presentation artifact.

## Market situation
- FedRAMP is in structural transition via FedRAMP 20x: point-in-time audits replaced by continuous, machine-readable (OSCAL) validation.
- Phase 3 (wide-scale Low + Moderate) targeted Q3-Q4 2026. Rev5 end-of-life expected H2 2027.
- Old regime: 12-22 months, $2M-$5M for Moderate. 20x pilot data: ~5 weeks, $500K-$1.5M.
- US federal tech spend ~$357B (2026). Federal cloud spend ~$11B (FY24), ~40% high-impact.
- FedRAMP Marketplace: 659 products total, 523 certified, 466 Class C (Moderate), 118 Class D (High), 75 Class B (Low). 28 carry 20x cert type.
- RFC-0024 (Jan 13, 2026): machine-readable/OSCAL packages mandated for ALL providers. Initial deadline Sept 30 2026, final Sept 30 2027.

## Competitive landscape (14 named players, four layers)

**Multi-framework GRC platforms (FedRAMP as one module):**
- Vanta — market leader, 300+ integrations, FedRAMP 20x certified itself, OSCAL export-only (not native), ~$20-50K/yr.
- Drata — deep automation, engineering-team oriented, OSCAL-capable, ~$7.5-50K+/yr.
- Secureframe — Defense tier for FedRAMP/CMMC, strong CSM model, ~$20-60K/yr.
- Hyperproof — Hyperproof Gov is FedRAMP Moderate authorized.
- Sprinto — cloud-native, autonomous compliance, competitive pricing.
- Diligent — enterprise governance heritage.

**OSCAL-native specialists:**
- Paramify — purpose-built FedRAMP/CMMC/FISMA, OSCAL-first, FedRAMP 20x Moderate Authorized. $8K/yr Low, $28K/yr Moderate. Documentation engine; lacks infrastructure + continuous control monitoring.
- RegScale — OSCAL Foundation founding member, FedRAMP High authorized, built OSCAL Hub (open source), 1300+ APIs, compliance-as-code.
- Telos (Xacta) — deep federal pedigree, full suite FedRAMP High authorized, Xacta.ai GenAI, legacy architecture.

**Managed service hybrid:**
- Anitian — FedFlex platform, pre-hardened landing zone, "sponsorless ATO" for 20x Low, only true managed-service+platform model, opaque premium pricing.

**3PAO / assessment + advisory:**
- Coalfire — market-leader 3PAO, 100+ assessments, Paramify Premier Partner.
- Schellman — #1 3PAO by volume, Type A (assessment only, no consulting), 98% retention.
- A-LIGN — broad compliance, multi-framework 3PAO.
- Workstreet, Elevate — consulting/advisory.

## The four persistent gaps (the opportunity)
1. The OSCAL translation problem — most bolt OSCAL export onto document-centric models; poor developer experience across the board.
2. The services gap in platform companies — platforms tell you to hire a consultant; consultants tell you to buy a platform. Only Anitian bundles both, with services cost structure.
3. The environment build problem — getting a compliant environment (config, segmentation, logging, encryption) is the hardest part for a startup; only Anitian addresses it.
4. The continuous monitoring black hole — everyone focuses on the authorization sprint; ConMon (the entire point of 20x) is underserved.

## Proposed product architecture (three pillars, one subscription)
- **Comply Engine** — OSCAL-native, pipeline-integrated automation. KSI monitoring. Auto-generated SSP/SAP/SAR/POA&M. CMMC reciprocity built in.
- **LaunchPad** — pre-hardened AWS GovCloud / Azure Government templates. Terraform/Pulumi with controls pre-implemented. One-click compliant environment.
- **Guide Rail** — embedded expert advisory through the platform, AI-augmented, 3PAO matchmaking. "Compliance concierge" not "compliance consultant."

## Initial GTM thesis
- Target: cloud-native SaaS Series A-C with federal contract interest, no FedRAMP experience.
- Secondary: Rev5-to-20x transition market (523 certified products needing OSCAL by 2027).
- Proposed pricing: $3-5K/mo (Low), $8-12K/mo (Moderate), custom (High). Services must scale sub-linearly.
- Proposed moats: OSCAL-native from ground up; own the infrastructure layer (switching cost); proprietary control-implementation dataset for AI advisory.
