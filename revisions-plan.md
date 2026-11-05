# Site Revisions Plan, Release Roadmap & Resolved GitHub Issues

This document tracks all site revisions driven by our **NJIT Student Persona Review**, breaks every identified challenge into a concrete **GitHub Issue**, and attaches the exact resolving implementation code for each release from **v1.0.0** through **v1.4.0**.

## Release Roadmap & Revision History Table

| Release Version | GitHub Issue | Target Site Section | Problem Identified in Student Review | Resolution Status & Summary |
| :--- | :--- | :--- | :--- | :--- |
| **v1.1.0** | **Issue #1** | Internships & Entry-Level (`/internships-entry-level`) | "Entry-Level Experience Paradox": New Grad postings request 2+ years of production experience, intimidating students. | **CLOSED / RESOLVED** — Added an interactive Experience Paradox Decoder and copyable NJIT Resume Bullet templates to every job card. |
| **v1.1.0** | **Issue #2** | Internships, Entry-Level & Mid/Senior Explorer | Lack of Newark/NYC commute vs. U.S.-Remote filtering for NJIT students commuting via PATH/NJ Transit. | **CLOSED / RESOLVED** — Built a live Geography & Commute Filter (`All U.S.`, `100% U.S. Remote`, `NYC / Newark Metro`, `West Coast / Other U.S.`). |
| **v1.2.0** | **Issue #3** | All Job Cards (`/internships-entry-level` & `/mid-senior-level`) | "AI Engineer" title inflation makes it unclear whether a role is C++/CUDA, Python/LLM Agents, or Full-Stack UX. | **CLOSED / RESOLVED** — Added Functional Sub-Track Taxonomy Badges and visual Stack Weight distributions (Code, ML/Math, Infra/MLOps, Product/UX). |
| **v1.2.0** | **Issue #4** | NJIT Student Review (`/njit-student-review`) | Students with multidisciplinary skills (App Dev, Game Dev, UX/UI, FinTech, NLP) need a quantitative readiness check. | **CLOSED / RESOLVED** — Built an interactive 6-skill NJIT Coursework & Project Readiness Scorecard that calculates live match % across AI tracks. |
| **v1.3.0** | **Issue #5** | BLS Data & Charts (`/market-data-bls`) | Static salary figures are harder to contextualize against federal U.S. Bureau of Labor Statistics (BLS) baselines. | **CLOSED / RESOLVED** — Added an interactive AI Role Compensation vs. BLS Median Wage ($120,230 Data Scientist / $140,300 Research Scientist) Premium Calculator. |
| **v1.4.0** | **Issue #6** | Site Navigation & Revisions Menu (`/revisions-plan`) | Need a dedicated Revisions & Release Tracker linked in the site menu with code attached to every GitHub Issue. | **CLOSED / RESOLVED** — Linked `/revisions-plan` in VitePress `config.mts` navbar/sidebar, added interactive Issue Code Viewer, and created `scripts/sync_github_issues.sh`. |

## Detailed GitHub Issues Breakdown & Attached Resolution Code

### Issue #1: [v1.1.0] Experience Paradox Decoder & NJIT Student Resume Bullet Generator
* **Labels**: `enhancement`, `student-experience`, `v1.1.0`
* **Status**: `CLOSED (Resolved in v1.1.0)`
* **Problem Description**: While reviewing the Entry-Level section as an NJIT student, postings like [Applied Intuition Forward Deployed Engineer](https://jobs.ashbyhq.com/applied/289cead6-d731-4ca4-95e2-e83cee83c20c) and [LiteLLM Forward Deployed Engineer](https://jobs.ashbyhq.com/litellm/769df1b5-70bb-40fe-b2e2-ef052eb3afa3) demand strong production debugging and ~2 years of practical experience, whereas [Roadrunner New Grad FDE](https://jobs.ashbyhq.com/Roadrunner/c82b1987-bb02-4420-8fa2-b79075b04480) explicitly notes that coursework, hackathons, and projects qualify. Students need a concrete decoder showing how to translate campus projects into production resume bullets.
* **Attached Resolution Code (`components/ExperienceParadoxDecoder.js`)**:

```javascript
export function renderParadoxDecoder(job) {
  return `
    <div class="mt-2 p-3 rounded-xl bg-indigo-950/40 border border-indigo-500/30 text-xs space-y-1.5">
      <div class="flex items-center justify-between">
        <span class="font-bold text-indigo-300">🔓 Experience Paradox Decoder (${job.tier})</span>
        <button onclick="copyResumeBullet('${job.id}')" class="px-2 py-0.5 rounded bg-indigo-500/20 hover:bg-indigo-500/40 text-indigo-200 font-semibold">
          Copy Resume Framing
        </button>
      </div>
      <p class="text-slate-300"><strong>What Job Says vs. Reality:</strong> ${job.paradoxDecode}</p>
      <p class="text-emerald-300 font-mono text-[11px]">"Built & deployed ${job.resumeTemplate}"</p>
    </div>
  `;
}
```

### Issue #2: [v1.1.0] Add NYC / Newark Metro Corridor & 100% U.S.-Remote Commute Filter
* **Labels**: `feature`, `filtering`, `njit-commute`, `v1.1.0`
* **Status**: `CLOSED (Resolved in v1.1.0)`
* **Problem Description**: NJIT students based in Newark, NJ need to filter between roles accessible via NJ Transit / PATH into New York City (such as [Cohere NYC](https://jobs.ashbyhq.com/cohere/36d1f52f-8270-4652-adf5-5303a0ff341b), [IBM Research Yorktown Heights](https://careers.ibm.com/en_US/careers/JobDetail/Research-AI-Engineer-Intern-2027/132569), and [TRM Labs NYC Hub](https://jobs.ashbyhq.com/trm-labs/828b60b2-ac8f-407d-92a0-8b794c8cf391)), roles that are 100% U.S.-Remote ([Blooming Health](https://jobs.ashbyhq.com/blooming-health/a6d265bd-7e70-4225-9a8c-d49d552bf710), [Sequen AI](https://jobs.ashbyhq.com/sequen-ai/cd7b81f3-9166-42e3-b3c6-9518677f3cb4), [Quora](https://jobs.ashbyhq.com/quora/1027c20b-ae70-4455-91be-73aac13610b6)), and West Coast on-site roles ([Scout AI Sunnyvale](https://jobs.ashbyhq.com/scout-ai/3b639e39-abd7-4a0c-9bea-e1cd0a72db99)).
* **Attached Resolution Code (`utils/regionFilter.js`)**:

```javascript
export function matchesRegionFilter(job, selectedRegion) {
  if (selectedRegion === "all-regions") return true;
  if (selectedRegion === "us-remote") return job.regionTag === "US-Remote";
  if (selectedRegion === "nyc-metro") return job.regionTag === "NYC-Metro" || job.location.includes("NYC") || job.location.includes("New York");
  if (selectedRegion === "onsite-hubs") return job.regionTag === "US-Hub";
  return true;
}
```

### Issue #3: [v1.2.0] Disambiguate "AI Engineer" Title Inflation with Stack Weight Bars
* **Labels**: `ux-improvement`, `taxonomy`, `v1.2.0`
* **Status**: `CLOSED (Resolved in v1.2.0)`
* **Problem Description**: Students struggle to tell how much of a role is Software/API Engineering vs. Deep Learning Math vs. Cloud MLOps vs. Product/UX.
* **Attached Resolution Code (`components/StackWeightBar.js`)**:

```javascript
export function renderStackWeights(weights) {
  // weights = { swe: 40, ml: 25, infra: 15, ux: 20 }
  return `
    <div class="space-y-1 pt-1">
      <div class="flex justify-between text-[10px] text-slate-400 font-semibold">
        <span>💻 SWE/APIs: ${weights.swe}%</span>
        <span>🧠 Core ML: ${weights.ml}%</span>
        <span>☁️ Infra/MLOps: ${weights.infra}%</span>
        <span>🎨 Product/UX: ${weights.ux}%</span>
      </div>
      <div class="w-full h-2 rounded-full overflow-hidden flex bg-slate-950">
        <div style="width:${weights.swe}%" class="bg-sky-400"></div>
        <div style="width:${weights.ml}%" class="bg-indigo-400"></div>
        <div style="width:${weights.infra}%" class="bg-amber-400"></div>
        <div style="width:${weights.ux}%" class="bg-emerald-400"></div>
      </div>
    </div>
  `;
}
```

### Issue #4: [v1.2.0] Interactive NJIT Student Readiness Scorecard & Gap Analyzer
* **Labels**: `interactive-tool`, `njit-student`, `v1.2.0`
* **Status**: `CLOSED (Resolved in v1.2.0)`
* **Problem Description**: Turn the static NJIT skill review into an interactive checklist where students toggle their completed coursework/projects (Python/PyTorch, React/Flutter UX, Unity/Physics Simulation, FastText/RAG Embeddings, FinTech/SQL, Docker/Kubernetes) and see their readiness score for each AI career track.
* **Attached Resolution Code (`components/ReadinessScorecard.js`)**:

```javascript
export function calculateTrackReadiness(checkedSkills) {
  const weights = {
    fde: { python: 25, ux: 30, rag: 25, fintech: 10, gamedev: 5, k8s: 5 },
    agent: { python: 25, rag: 35, fintech: 20, ux: 10, k8s: 10, gamedev: 0 },
    embodied: { python: 30, gamedev: 40, rag: 10, ux: 5, fintech: 5, k8s: 10 },
    mlops: { python: 25, k8s: 45, rag: 15, fintech: 10, ux: 5, gamedev: 0 }
  };
  return Object.fromEntries(
    Object.entries(weights).map(([track, map]) => [
      track,
      checkedSkills.reduce((acc, sk) => acc + (map[sk] || 0), 0)
    ])
  );
}
```

### Issue #5: [v1.3.0] Interactive AI Salary vs. BLS Median Wage Benchmark Comparator
* **Labels**: `data-viz`, `bls-primary-source`, `v1.3.0`
* **Status**: `CLOSED (Resolved in v1.3.0)`
* **Problem Description**: Allow users to select any researched AI role on the site and immediately compute its dollar and percentage premium over the official May 2025 [BLS Data Scientist median ($120,230)](https://www.bls.gov/ooh/math/data-scientists.htm) and [BLS Computer & Information Research Scientist median ($140,300)](https://www.bls.gov/ooh/computer-and-information-technology/computer-and-information-research-scientists.htm).
* **Attached Resolution Code (`components/BlsComparator.js`)**:

```javascript
export function computeBlsComparison(roleMidpointUsd) {
  const blsDataScientist = 120230;
  const blsResearchScientist = 140300;
  const blsAllComp = 109470;
  return {
    vsDataSciPct: Math.round(((roleMidpointUsd - blsDataScientist) / blsDataScientist) * 100),
    vsResSciPct: Math.round(((roleMidpointUsd - blsResearchScientist) / blsResearchScientist) * 100),
    vsAllCompPct: Math.round(((roleMidpointUsd - blsAllComp) / blsAllComp) * 100)
  };
}
```

### Issue #6: [v1.4.0] Link Revisions Plan to VitePress Menu & Bundle GitHub Issues Sync Script
* **Labels**: `documentation`, `vitepress-config`, `github-workflow`, `v1.4.0`
* **Status**: `CLOSED (Resolved in v1.4.0)`
* **Problem Description**: Link the Markdown revision plans directly to the VitePress top menu and sidebar so every release (`v1.0` → `v1.4`) and resolved GitHub Issue is browsable on the live site, and provide an automated `gh` CLI script to create and close all 6 issues on `JivExperimenters/ai-career-research-atlas`.
* **Attached Resolution Code (`docs/.vitepress/config.mts` update)**:

```typescript
nav: [
  { text: 'Home', link: '/' },
  { text: '1. Internships & Entry-Level', link: '/internships-entry-level' },
  { text: '2. Mid & Senior Roles', link: '/mid-senior-level' },
  { text: '3. NJIT Student Review', link: '/njit-student-review' },
  { text: '4. BLS Data & Charts', link: '/market-data-bls' },
  { text: '5. Revisions & Issues (v1.4)', link: '/revisions-plan' }
]
```
