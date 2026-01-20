# Claude Code Instructions for DevLore Website

## DevLore Website Editing

When asked to "edit devlore page: <pagename>" (e.g., "edit devlore page: lore"):

1. **Extract**: Read the .astro file from `src/pages/<pagename>.astro`
2. **Present**: Show content as clean markdown with:
   - Components marked as `<!-- component: Name prop=value -->`
   - Diagrams marked as `<!-- diagram: description -->`
   - Layout hints in comments where relevant
3. **Await edits**: User provides edited markdown or describes changes
4. **Apply**: Update the .astro file preserving all markup, components, and styling
5. **Follow git workflow**: Branch, commit (with approval), PR, merge, cleanup

**Pages available:** index, lore, writ, registry

## Git Workflow

This repo deploys from `develop` branch to Azure Static Web Apps.

- Never push directly to `develop`
- Always use feature branches and PRs
- Follow approval workflow for all commits and PRs
