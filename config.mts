import { defineConfig } from 'vitepress'

export default defineConfig({
  title: "AI Career Research Atlas",
  description: "U.S. & Remote AI Career Pathways: Internships, Entry-Level, Mid-Level, Senior Roles, NJIT Student Audit & Revisions Log",
  base: "/ai-career-research-atlas/",
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: '1. Internships & Entry-Level', link: '/internships-entry-level' },
      { text: '2. Mid & Senior Roles', link: '/mid-senior-level' },
      { text: '3. NJIT Student Review', link: '/njit-student-review' },
      { text: '4. BLS Data & Charts', link: '/market-data-bls' },
      { text: '5. Revisions & GitHub Issues', link: '/revisions-plan' }
    ],
    sidebar: [
      {
        text: 'Career Tiers (US & Remote)',
        items: [
          { text: '1. Internships & Entry-Level Jobs', link: '/internships-entry-level' },
          { text: '2. Mid-Level & Senior AI Jobs', link: '/mid-senior-level' }
        ]
      },
      {
        text: 'Student Review & Primary Data',
        items: [
          { text: '3. NJIT Student Persona Audit', link: '/njit-student-review' },
          { text: '4. BLS Primary Sources & Charts', link: '/market-data-bls' }
        ]
      },
      {
        text: 'Release Tracking & Issues',
        items: [
          { text: '5. Revisions Plan & GitHub Issues (v1.4)', link: '/revisions-plan' }
        ]
      }
    ],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/JivExperimenters/ai-career-research-atlas' }
    ],
    search: {
      provider: 'local'
    },
    footer: {
      message: 'Built with VitePress • Release v1.4.0 (All 6 Review Issues Resolved) • Grounded in U.S. BLS Data',
      copyright: 'Copyright © 2026 JivExperimenters'
    }
  }
})
