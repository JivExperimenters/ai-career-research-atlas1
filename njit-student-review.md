# Phase 3: NJIT Student Persona Walkthrough & Site Audit

> **Persona Profile**: Undergraduate student at **New Jersey Institute of Technology (NJIT)** in Newark, NJ—balancing Computer Science & AI/ML coursework with hands-on projects in **React/Flutter App Development, Game Development (Unity/Physics simulations), UX/UI Design (Figma), and FinTech/Quantitative modeling**, and attending campus recruiting events like the [NJIT Career Fair](https://careers.fiserv.com/us/en/event/6aa00ef9707cc1a141c49fa3/NJIT-Fall-2026-Career-Fair).

## 1. First-Person Walkthrough: Using the Atlas as an NJIT Student

When I open the **AI Career Research Atlas** looking for internships and entry-level roles I can realistically land from Newark/NYC or remotely in the U.S., three immediate questions drive my browsing:
1. *"Which AI roles value my ability to build complete products (apps, games, UI/UX + Python/AI backends) rather than requiring a Ph.D. in theoretical math?"*
2. *"Which companies have NYC/Newark metro hubs or true U.S.-remote flexibility so I don't have to relocate across the country before graduating?"*
3. *"How do I bridge the gap between what job descriptions ask for and what I've built in my classes and personal projects?"*

## 2. Issues, Challenges & Friction Points Identified During Review

| Challenge Identified on Initial Site Pass | Why It Frustrates an NJIT Student | How We Upgraded the Atlas to Solve It |
| :--- | :--- | :--- |
| **1. The "Entry-Level Experience Paradox"** | Many "Entry-Level" AI postings list 2+ years of production Kubernetes, Spark, or distributed LLM serving experience, making students feel disqualified before applying. | Added a **"What Actually Gets You Hired (Portfolio Proof)"** decoder to every tier showing how hackathons, open-source PRs, and end-to-end deployed apps substitute for corporate tenure (as explicitly noted in [Roadrunner's New Grad FDE posting](https://jobs.ashbyhq.com/Roadrunner/c82b1987-bb02-4420-8fa2-b79075b04480)). |
| **2. Title Inflation & Role Ambiguity** | "AI Engineer" means C++/CUDA kernel optimization at one company and React + OpenAI API integration at another. | Split the Atlas into distinct functional tracks (**Forward-Deployed / Product AI**, **Agentic Backend**, **Embodied/Vision AI**, and **MLOps Infrastructure**) with explicit stack percentages. |
| **3. Disconnected Campus & Personal Skills** | Students with multidisciplinary skills (e.g., Game Dev + UX Design + FinTech + Python) struggle to see how non-traditional projects fit standard AI resumes. | Created the **NJIT Coursework & Project-to-Role Matcher** below, showing how interactive apps, game AI, and financial models map directly to high-paying AI roles. |
| **4. Lack of Geographic & Commute Context** | Generic national lists bury whether a role is accessible from Newark/NYC (PATH/NJ Transit) or fully remote. | Tagged NYC-metro hybrid hubs ([IBM Yorktown Heights](https://careers.ibm.com/en_US/careers/JobDetail/Research-AI-Engineer-Intern-2027/132569), [Cohere NYC](https://jobs.ashbyhq.com/cohere/36d1f52f-8270-4652-adf5-5303a0ff341b), [TRM Labs NYC Hub](https://jobs.ashbyhq.com/trm-labs/828b60b2-ac8f-407d-92a0-8b794c8cf391)) separately from West Coast on-site roles. |

## 3. Top Role Matches for My NJIT Student Profile

Based on reviewing all four tiers on the site, these are the **top three career targets** that best fit an NJIT builder who combines CS, AI/ML, UX/UI, interactive apps/games, and FinTech:

1. **#1 Best Immediate Target (Entry-Level / New Grad): Forward Deployed AI Engineer** — e.g., [LiteLLM ($150K–$210K)](https://jobs.ashbyhq.com/litellm/769df1b5-70bb-40fe-b2e2-ef052eb3afa3), [Roadrunner](https://jobs.ashbyhq.com/Roadrunner/c82b1987-bb02-4420-8fa2-b79075b04480), [Applied Intuition](https://jobs.ashbyhq.com/applied/289cead6-d731-4ca4-95e2-e83cee83c20c)
   * **Why it fits me**: Forward Deployed Engineers aren't siloed into tuning a single hyperparameter—they build full-stack prototypes, debug APIs, design clean interfaces for customers, and ship fast. My background in React/Flutter UI wireframing, C#/C++/Python, and product thinking is a massive unfair advantage here.
2. **#2 Best Internship Target: Applied AI / Multimodal & Simulation Intern** — e.g., [Cohere NYC/Remote Co-op](https://jobs.ashbyhq.com/cohere/36d1f52f-8270-4652-adf5-5303a0ff341b), [IBM Research AI Intern (NY)](https://careers.ibm.com/en_US/careers/JobDetail/Research-AI-Engineer-Intern-2027/132569), [Scout AI](https://jobs.ashbyhq.com/scout-ai/3b639e39-abd7-4a0c-9bea-e1cd0a72db99)
   * **Why it fits me**: Game development and physics-based simulation directly overlap with embodied AI, synthetic data generation, and interactive agent environments.
3. **#3 Best Long-Term Mid/Senior Target: AI Agent & FinTech Automation Engineer** — e.g., [TRM Labs AI Agent Engineer ($200K–$275K Remote/NYC)](https://jobs.ashbyhq.com/trm-labs/828b60b2-ac8f-407d-92a0-8b794c8cf391) & [TRM Labs Senior AI Automation Engineer](https://jobs.ashbyhq.com/trm-labs/d8498fe0-1f86-46e6-805a-626489ddd0cb)
   * **Why it fits me**: Combines financial/blockchain intelligence with modular AI agents, UX empathy for analysts, and rapid product prototyping across Product, Design, and Engineering.

## 4. NJIT Project-to-Role Matcher

| Your NJIT / Personal Project Experience | Target AI Career Track | How to Frame It on Your Resume |
| :--- | :--- | :--- |
| **React / Flutter Apps + AI APIs (e.g., IdeaThinker / BizFirstAI UI)** | Forward Deployed AI Engineer / AI Product Engineer | Highlight end-to-end latency, structured JSON outputs, prompt routing, and UX case studies that measurably reduced user friction. |
| **Physics & Game Engines (Unity / C# / Simulation Mechanics)** | Embodied AI / Robotics & Synthetic Data Intern ([Scout AI](https://jobs.ashbyhq.com/scout-ai/3b639e39-abd7-4a0c-9bea-e1cd0a72db99)) | Frame game loops and physics constraints as **simulation environments for autonomous agent decision-making and evaluation**. |
| **FastText Embeddings / NLP & Python Data Pipelines** | ML Intern ([Cohere](https://jobs.ashbyhq.com/cohere/36d1f52f-8270-4652-adf5-5303a0ff341b)) / AI Agent Engineer ([TRM Labs](https://jobs.ashbyhq.com/trm-labs/828b60b2-ac8f-407d-92a0-8b794c8cf391)) | Emphasize dataset scaling, vector similarity search, RAG retrieval precision, and hallucination benchmarking. |
| **Quantitative Finance, Bonds & Algorithmic Trading Notes** | FinTech AI Agent Engineer / Actuarial & Risk Modeling | Connect financial domain modeling with automated agent workflows, anomaly detection, and explainable risk scoring. |
