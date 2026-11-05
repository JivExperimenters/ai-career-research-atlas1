# AI Career Research Atlas

🌐 **Live GitHub Pages Website:** [https://jivexperimenters.github.io/ai-career-research-atlas/](https://jivexperimenters.github.io/ai-career-research-atlas/)  
📦 **GitHub Organization / Profile:** [https://github.com/JivExperimenters](https://github.com/JivExperimenters)

A VitePress-powered career research atlas analyzing emerging U.S. and U.S.-remote Artificial Intelligence roles across **Internships**, **Entry-Level (New Grad)**, **Mid-Level**, and **Senior / Staff** tiers. Built with real deconstructed job descriptions, primary labor market projections from the [U.S. Bureau of Labor Statistics (BLS) Occupational Outlook Handbook](https://www.bls.gov/ooh/), custom data visualizations, and an **NJIT Student Persona Walkthrough & Career Matcher**.

## Site Sections (Published Sequence)

1. **[Internships & Entry-Level AI Roles](./docs/internships-entry-level.md)** — Real U.S. & remote opportunities (Scout AI, Cohere, IBM Research,Allen Control Systems, LiteLLM, Applied Intuition, Roadrunner) with deconstructed job descriptions, hourly/annual pay ranges, and student portfolio proof checklists.
2. **[Mid-Level & Senior AI Roles](./docs/mid-senior-level.md)** — Production AI engineering and leadership roles (TRM Labs, Databricks, 6sense, Blooming Health, Sequen AI, Quora) covering AI Agent Engineering, Forward-Deployed GenAI, MLOps/LLMOps, and Staff ML Systems.
3. **[NJIT Student Review & Role Matcher](./docs/njit-student-review.md)** — First-person UX/content audit from the perspective of an NJIT student balancing CS, AI/ML, UX/UI, App/Game Development, and FinTech, identifying key job-hunt challenges and mapping campus projects to high-fit AI roles.
4. **[BLS Primary Sources & Visual Charts](./docs/market-data-bls.md)** — Verified federal projections from the [BLS Fastest Growing Occupations](https://www.bls.gov/ooh/fastest-growing.htm) and occupational profiles, paired with custom compensation and skill-shift charts.

## Quick Push & GitHub Pages Deployment

Run these commands inside the extracted repository folder to publish directly to `https://github.com/JivExperimenters/ai-career-research-atlas`:

```bash
git init
git add .
git commit -m "Initial commit: AI Career Research Atlas VitePress site"
git branch -M main
git remote add origin https://github.com/JivExperimenters/ai-career-research-atlas.git
git push -u origin main
```

Once pushed, go to **Settings → Pages** in your GitHub repository and set **Build and deployment → Source** to **GitHub Actions**. The included `.github/workflows/deploy.yml` workflow will automatically build and publish the site to `https://jivexperimenters.github.io/ai-career-research-atlas/`.
