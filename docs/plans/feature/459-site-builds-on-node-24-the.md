---
title: "The site builds on Node 24, the current LTS: CI pins 20, which reached end of life on 2026-04-30"
issue: https://github.com/NobleFactor/devlore.noblefactor.com/issues/459
status: active
created: 2026-09-26
updated: 2026-09-26
---

# Plan: the site builds on Node 24

Lane 5 of devlore-cli#949. Ruled 2026-09-26: the same version everywhere, and that version is the
current LTS, Node 24 "Krypton" (v24.21.0, 2026-09-07; active LTS to 2026-10-20, maintenance to
2028-04-30). CI pins 20, end of life since 2026-04-30.

## Issue 459

`.github/workflows/azure-static-web-apps.yml` sets `node-version: "20"`. Every dependency in the lock
file that declares a Node range admits 24: astro 4.16.19 `^18.17.1 || ^20.3.0 || >=21.0.0`, sharp 0.33.5
the same, vite 5.4.21 `^18.0.0 || >=20.0.0`. The lock file is v3, which npm 11 (Node 24's) reads without
regeneration. Nothing but the pin stands in the way.

## Goals

1. CI builds and deploys the site on Node 24.
2. The repository states the floor, so a developer machine on an older Node is told rather than left
   to find out.
3. #457's owed boxes close in this commit: the deploy after #463 ran and production carries three
   products.

## Requirements

### Requirement 1: The pin

`node-version: "24"` in the workflow's `Setup Node.js` step. Nothing else in the workflow changes.

### Requirement 2: The floor

`package.json` gains `"engines": { "node": ">=24" }`. npm warns on an older Node; with
`engine-strict=true` in a developer's `.npmrc` it refuses. The statement is the point: the version the
site builds with is written where the dependencies are, not only in CI.

### Requirement 3: #457's owed boxes

`docs/plans/fix/457-cli-collection-admits-writ-and.md`: the two post-merge boxes tick — the sync
carrying #953 and #956 merged (site #462), and #463's `develop` deploy succeeded with three products
(run 36248830682) — and the plan's status becomes `complete`.

## Implementation Phases

### Phase 1: Commit the plan

- [x] This plan, before the change

### Phase 2: The change

- [ ] `node-version: "24"` (Requirement 1)
- [ ] `engines.node` (Requirement 2)
- [ ] #457's plan closed (Requirement 3)

### Phase 3: Verify, then merge

- [ ] The workflow parses as YAML; `package.json` parses as JSON and `npm` would read it (checked with
      python's `json` here; node is not on DANOBLE-UD24-1)
- [ ] The build on the pull request runs on Node 24: the `Setup Node.js` step's log names a 24.x, and
      `npm ci` and `npm run build` pass — the site's gate, where it runs
- [ ] PR script written, shown, and handed over
- [ ] After the merge: the `develop` deploy run succeeds on 24; production is unchanged in content

## Out of Scope

- **Installing Node 24 on developer machines.** The commands were given 2026-09-26 (Node's repository,
  `node_24.x`); the manifest chore for the Debian layer owes it a home with shellcheck and shfmt.
- **Astro 5.** Astro 4.16 admits Node 24; the major upgrade is its own work.
