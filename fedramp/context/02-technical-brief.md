# Context 02: Technical & Functional Brief (condensed)

Source: 02-fedramp-technical-brief.html. Working-context version.

## What FedRAMP is
- Established Dec 2011 under FISMA. Standardized assess/monitor/authorize for cloud.
- NOT a point-in-time certification. It is an authorization program with continuous monitoring.
- Based on NIST 800-53 Rev 5 (1,196 controls, 20 control families), augmented by FedRAMP-specific controls.
- Mandatory for federal agency cloud use (OMB requirement).

## Shared responsibility / inheritance
- Controls are customer, provider, or shared. The Customer Responsibility Matrix (CRM) defines the split.
- A CSP on Azure Government / AWS GovCloud inherits many controls from the IaaS. A pre-authorized environment (e.g., Project Hosts GSS One) can inherit ~75% of controls, shrinking assessment scope.
- Microsoft Service Trust Portal is the reference repository pattern (SSP, ConMon reports, POA&M under NDA; Azure Policy as the control-evaluation engine).

## Impact levels (now Certification Classes A-D under CR26)
- Low (~150 FedRAMP controls), Moderate (~325), High (~421).
- NIST 800-53B baselines: Low ~149, Moderate 287, High 370 controls. FedRAMP adds 1 / 17 / 22 above NIST.
- Largest families: SC (System & Comms Protection, 51 base), AC (Access Control, 25 base).
- New in Rev 5: PT (Privacy/Transparency), SR (Supply Chain Risk Management).

## Three authorization paths
1. JAB P-ATO. 2. Agency ATO. 3. CSP-supplied package. All require a 3PAO assessment + PMO review.

## Authorization lifecycle (Rev5 Agency path)
- **Preparation**: optional Readiness Assessment (RAR -> FedRAMP Ready); required Pre-Authorization (IPR letter + WBS, FIPS 199 categorization, kickoff -> In Process).
- **Authorization**: SSP + appendices, 3PAO assessment (SAP -> SAR), POA&M for findings, agency AO issues ATO.
- **Continuous Monitoring**: ongoing for the life of the authorization.

## Core documents (the "spine")
- **SSP** (System Security Plan) — the security blueprint; defines authorization boundary, control implementation. FedRAMP Excel template (12 sheets as of Jan 2026). Required appendices: C (policies), I (incident response plan), K (FIPS 199), A (contingency plan).
- **SAP** (Security Assessment Plan) — 3PAO-authored; scope, methodology, test plan, rules of engagement.
- **SAR** (Security Assessment Report) — 3PAO findings; contains Risk Exposure Table (RET).
- **POA&M** (Plan of Action & Milestones) — remediation tracking (CA-5); must correspond 1:1 to RET findings.

## Continuous monitoring obligations (NIST 800-137 + FedRAMP ConMon Playbook)
- **Monthly**: updated POA&M (CA-5), updated inventory (CM-8), raw vuln scan files (100% coverage), monthly executive summary. Every 30 days to secure repository.
- **Annual**: 3PAO assessment of core controls + 1/3 rotation, penetration testing, SSP updates, CP + IR plan testing (Mod/High), red-team + static code analysis (Mod/High).
- **Remediation timelines**: Critical/High 30 days, Moderate 90 days, Low 180 days. Miss = escalation to ATO revocation.
- **Collaborative ConMon** (CA-7 binding) required for multi-agency CSPs. Retain 12 months of packages.

## FedRAMP 20x specifics
- Continuous machine-readable validation. OSCAL artifacts generated from the running environment in the pipeline.
- **Key Security Indicators (KSIs)**: 56 for Low, 61 for Moderate. Each ties to a measurable, automatable security outcome.
- Phase 2 completeness: automated validation must cover >=70% of KSIs. Evidence in both human- and machine-readable form, fully reconciling. 3PAO validates that the automation works.
- CR26 (Consolidated Rules 2026): effective ~July 1 2026 through Dec 31 2028; replaces narrative guidance with machine-checkable MUST/MUST NOT; Certification Classes A-D replace Low/Mod/High; Rev5 and 20x paths NON-interchangeable.

## Product requirements synthesis (five lifecycle blocks)
1. Pre-Authorization Automation — FIPS 199 wizard, boundary tools, gap assessment, control catalog with FedRAMP params, CRM templates.
2. Documentation Engine — SSP/SAP/SAR/POA&M in FedRAMP templates AND OSCAL; 12 appendices; KSI mapping + evidence linking.
3. Assessment Support — 3PAO collaboration workspace, evidence linking, automated technical tests, RET + POA&M generation.
4. Continuous Monitoring Platform — monthly deliverable automation, 30/90/180 remediation timers, SCR workflow, annual scheduling, collaborative ConMon.
5. Infrastructure Layer — pre-hardened GovCloud/Gov templates, IaC for SC/AU/IA controls, CI/CD OSCAL generation, drift detection, KSI validation in pipeline.
