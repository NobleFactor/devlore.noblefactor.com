---
title: "The cli collection admits writ and lore only: star's pages fail the schema, and the CLI index lists two products of three"
issue: https://github.com/NobleFactor/devlore.noblefactor.com/issues/457
status: complete
created: 2026-09-26
updated: 2026-09-26
---

# Plan: the site knows three products

Lane 4 of devlore-cli#949. Companions: devlore-cli#952 (merged as #953) stopped two pages colliding;
devlore-cli#956 (lane 3) keeps devlore-test's tree out of the sync. This one lets the build accept what
the sync then carries: writ, lore and star.

Ruled 2026-09-26: "we are committed to shipping star. we are not committed to shipping devlore-test …
let's go with what we committed, not what we might commit." The site knows three products.

## Issue 457

Since devlore-cli#787 the docs sync copies star's reference pages into `src/content/cli/`, with
`tool: "star"`. The site was written for two products, in four places:

| File | What it does today |
| --- | --- |
| `src/content/config.ts` | the `cli` collection's `tool` is `z.enum(["writ", "lore"])`; the build refuses any other value |
| `src/pages/cli/index.astro` | two hand-written cards, writ and lore, each filtering the collection by name |
| `src/layouts/CLIRefLayout.astro` | two hand-written sidebar sections, writ and lore, the same way |
| `src/content/config.ts` (`guides`) | `tool` is `z.enum(["devlore", "writ", "lore"])`; every guide today says `devlore`, so nothing fails yet |

## Goals

1. The build accepts every page the sync carries once lane 3 has trimmed it; the site builds for the
   first time since 2026-09-24.
2. The CLI index and the reference sidebar show the three products from one list, so a fourth, when
   one is committed, is one line and not four edits.
3. Nothing else on the site changes.

## Requirements

### Requirement 1: One list of products

`src/lib/tools.ts`, new, exports the products in display order, each with its name and the description
shown when the collection has no root page for it:

```ts
export const tools = [
  { name: "writ", fallback: "Environment manager with platform-aware symlinks" },
  { name: "lore", fallback: "The tribal knowledge package deployer" },
  { name: "star", fallback: "The scripting runtime and its extensions" },
] as const;
export type ToolName = (typeof tools)[number]["name"];
```

The two fallback strings for writ and lore are the ones `index.astro` carries today.

### Requirement 2: The schemas

`src/content/config.ts`: the `cli` collection's `tool` becomes `z.enum(["writ", "lore", "star"])`; the
`guides` collection's gains `star`. A devlore-test page arriving would fail the build, and should: the
sync (lane 3) is what keeps it out, and the schema is the check that it did. The list is written out, not derived
from Requirement 1's module: a schema is read at build time by Astro's own loader and a plain literal
is what it wants.

### Requirement 3: The index page and the sidebar

`src/pages/cli/index.astro` maps over `tools`: one card per product, the root page's description or the
fallback, the product's direct subcommands underneath. The grid takes three cards. `src/layouts/CLIRefLayout.astro` maps over `tools` for the sidebar: one section per product that
has pages. The two hand-written copies in each file go. The markup of a card and of a section is what it
is today, once, inside the loop.

### Requirement 4: The order of merges

This branch is from `develop` before lane 3's sync lands there. Its build passes only once the synced
pages carry `slug` (devlore-cli#953) and devlore-test's tree is gone (devlore-cli#956); so the PR script
waits until that sync's PR has merged into the site, then its pull-before-the-merge brings those pages
into the branch, and the PR's build is the first that can go green.

## Implementation Phases

### Phase 1: Commit the plan

- [x] This plan, before the change

### Phase 2: The change

- [x] `src/lib/tools.ts` (Requirement 1)
- [x] `src/content/config.ts` (Requirement 2)
- [x] `src/pages/cli/index.astro` and `src/layouts/CLIRefLayout.astro` (Requirement 3): each maps over
      `tools`; the two hand-written copies in each file are gone

### Phase 3: Verify, then merge

- [x] Node is not on DANOBLE-UD24-1, so no parse or build runs here; the PR script checks that the
      product list and the schema name the same three, and the site's own gate, `npm ci` and `npm run
      build`, runs on the pull request, where the script's CI gate holds the merge until it reports
- [x] The docs sync carrying devlore-cli#953 and #956 merged into the site's `develop` as #462
      (2026-09-26 11:50) before the script ran; the script's guard checked it (Requirement 4)
- [x] PR script written, shown, and handed over; it refuses to run until the site's `develop` carries
      lane 3's sync (no `devlore-test` page, `slug:` on every page)
- [x] After the merge (#463, 2026-09-26 14:31): the `develop` deploy, run 36248830682, built and
      deployed three products — the site's first green build since 2026-09-24. The pages exist behind
      the login wall, which answers 302 to an anonymous check whether a page exists or not, so the deploy
      run is the evidence. Closes devlore-cli#952's and #956's last boxes; unblocks lanes 5 and 6

## Out of Scope

- **The guides' sidebar and index** (`GuidesLayout.astro`, `pages/guides/index.astro`): they list
  devlore, writ and lore by name, and every guide today is devlore's. When a star guide exists, they
  take the same list; not now.
- **`BaseLayout.astro`'s navigation**, which links Writ and Lore product pages; there is no star
  product page to link.
- **devlore-test.** Not a shipping commitment; its pages stop arriving with lane 3, and the schema
  refuses them if they ever do.
- **The route for `install.ps1`** — lane 6, #455.
