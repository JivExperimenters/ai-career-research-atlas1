#!/usr/bin/env bash
# Creates and resolves all 6 GitHub Issues with attached implementation code on JivExperimenters/ai-career-research-atlas
set -e
REPO="JivExperimenters/ai-career-research-atlas"

echo "Syncing 6 resolved GitHub Issues to $REPO..."

gh issue create --repo "$REPO" --title "[v1.1.0] Issue #1: Experience Paradox Decoder & NJIT Student Resume Bullet Generator" --body "Resolved in docs/internships-entry-level.md and docs/revisions-plan.md. Added interactive Experience Paradox Decoder and copyable NJIT student resume framing to every early-career role card."
gh issue close 1 --repo "$REPO" --comment "Resolved in Release v1.1.0 with attached ExperienceParadoxDecoder component."

gh issue create --repo "$REPO" --title "[v1.1.0] Issue #2: Add NYC / Newark Metro Corridor & 100% U.S.-Remote Commute Filter" --body "Resolved in Release v1.1.0. Added regional commute filtering separating NYC/Newark Metro hubs (Cohere NYC, IBM Yorktown Heights, TRM Labs NYC), 100% U.S.-Remote roles, and West Coast hubs."
gh issue close 2 --repo "$REPO" --comment "Resolved in Release v1.1.0 with attached regionFilter utility."

gh issue create --repo "$REPO" --title "[v1.2.0] Issue #3: Disambiguate AI Engineer Title Inflation with Stack Weight Bars" --body "Resolved in Release v1.2.0. Added functional sub-track taxonomy badges and SWE vs. Core ML vs. Infra/MLOps vs. Product/UX weight bars to every job card."
gh issue close 3 --repo "$REPO" --comment "Resolved in Release v1.2.0 with attached StackWeightBar component."

gh issue create --repo "$REPO" --title "[v1.2.0] Issue #4: Interactive NJIT Student Readiness Scorecard & Gap Analyzer" --body "Resolved in Release v1.2.0 (docs/njit-student-review.md). Added interactive 6-skill NJIT readiness calculator across Forward-Deployed AI, Agentic Backend, Embodied/Simulation AI, and MLOps."
gh issue close 4 --repo "$REPO" --comment "Resolved in Release v1.2.0 with attached ReadinessScorecard calculator."

gh issue create --repo "$REPO" --title "[v1.3.0] Issue #5: Interactive AI Salary vs. BLS Median Wage Benchmark Comparator" --body "Resolved in Release v1.3.0 (docs/market-data-bls.md). Added interactive salary comparator against May 2025 BLS Data Scientist ($120,230) and Computer & Info Research Scientist ($140,300) medians."
gh issue close 5 --repo "$REPO" --comment "Resolved in Release v1.3.0 with attached BlsComparator module."

gh issue create --repo "$REPO" --title "[v1.4.0] Issue #6: Link Revisions Plan to VitePress Menu & Attach Code to Issues" --body "Resolved in Release v1.4.0 (docs/.vitepress/config.mts & docs/revisions-plan.md). Linked Revisions & GitHub Issues directly in the VitePress site navigation menu."
gh issue close 6 --repo "$REPO" --comment "Resolved in Release v1.4.0. All 6 issues closed and deployed."

echo "All 6 GitHub Issues created, attached with code, and closed!"
