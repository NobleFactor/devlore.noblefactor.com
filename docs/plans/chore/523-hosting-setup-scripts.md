---
title: "The hosting setup scripts live with the site they build, moved from noblefactor-engprod"
issue: https://github.com/NobleFactor/devlore.noblefactor.com/issues/523
status: complete
created: 2026-10-25
updated: 2026-10-25
---

# Plan: the site's tools in bin/ and share/, named Verb-Noun, to the bash standard

## Summary

NobleFactor/noblefactor-engprod's `scripts/` directory is removed entirely in its next pull request
(NobleFactor/noblefactor-engprod#377), ruled by the owner on 2026-10-25. Three of its scripts stand up a DevLore
site's hosting, and every example in them names this site, so they move here first: "use our process to do that work
IMMEDIATELY. then remove the goddam scripts directory." This repository's own `scripts/` goes the same way. The owner,
the same day: "use our script naming conventions and--because they aren't deployed--put them in /bin in the repo and
get rid of scripts. I DO NOT USE THAT CONVENTION."

## Goals

1. **Every tool of this repository is in `bin/`,** named Verb-Noun with no extension, as Start-Claude and
   Rename-BaseRepository are; `scripts/` is gone.
2. **Every tool meets the owner's standard for a bash script,** as the base layer's commands do: it sources
   Declare-BashScript, and carries a man page and a bash completion, in `share/` beside `bin/`. The owner, 2026-10-25:
   "All scripts must be compliant with my standards for bash scripts. ... they need completions, and man pages. the
   follow the xdg pattern under the repo root." And: "In short, we need a share beside bin."
3. **One Azure setup tool remains,** the one that does the whole job.
4. **The two Claude files go;** `DEPLOYMENT.md` and `public/` stay.

## Current State

| Script | Where | What it does |
| --- | --- | --- |
| `setup-azure-swa.sh` | noblefactor-engprod `scripts/` | the resource group, the Static Web App, and the Entra ID app registration for its sign-in |
| `setup-github-repo.sh` | noblefactor-engprod `scripts/` | the site repository's ruleset and settings, and its deployment secrets |
| `setup-ground-zero.sh` | noblefactor-engprod `scripts/` | the two in order, then a check and the next steps, the domain's registration among them; finds Declare-BashScript at `../Home/common/.local/bin`, a path only noblefactor-engprod has |
| `deploy.sh` | here, `scripts/` | deploys the built site to the Static Web App |
| `republish.sh` | here, `scripts/` | builds the site and publishes it, prompting for login; the README's way to publish |
| `setup-azure.sh` | here, `scripts/`, since 2026-01-22 | the resource group only; its `az staticwebapp create` is commented out, the app left to the portal |

## Requirements

| # | Now | Becomes | Change beyond the name |
| --- | --- | --- | --- |
| 1 | `setup-azure-swa.sh` | `bin/New-AzureStaticWebApp` | the standard below; its closing hint names `Set-GitHubRepository` |
| 2 | `setup-github-repo.sh` | `bin/Set-GitHubRepository` | the standard below |
| 3 | `setup-ground-zero.sh` | `bin/New-SiteHosting` | the standard below; calls rows 1 and 2 by their new names, beside it in `bin/` |
| 4 | `scripts/deploy.sh` | `bin/Deploy-Site` | the standard below |
| 5 | `scripts/republish.sh` | `bin/Publish-Site` | the standard below |
| 6 | `scripts/setup-azure.sh` | removed | row 1 does all it does, and the app, the sign-in and the domain besides |
| 7 | `CLAUDE.md` | removed | the owner's process covers its git workflow; its page-editing routine goes with it |
| 8 | `CLAUDE-CONTEXT.md` | removed | a past session's notes, stale: the custom domain it calls pending is live |

**The standard, for rows 1 to 5,** read from the base layer's `git-reset-branch` and its siblings:

- **The layout is XDG's, under the repository's root:** the tool at `bin/<name>`, its man page at
  `share/man/man1/<name>.1`, its completion at `share/bash-completion/completions/<name>`. Declare-BashScript's
  `usage` already finds a man page at `share/man` beside the script's `bin/` when man's own search does not, so
  `--help` shows it with nothing deployed.
- **Each tool sources Declare-BashScript** and fails closed, with exit 72, when it cannot. These tools are not deployed,
  so the helper is the base layer's deployed copy, found on `PATH`, in `~/.local/bin`, and the `# shellcheck
  source=Declare-BashScript` directive sits above the `source` line.
- **Options parse through the helper,** long and short, from its getopt strings; a synopsis feeds `usage`; failures go
  through `error` with sysexits codes, and progress through `note` and `success`; `Set-Traps` names any cleanup.
- **The man page** is troff in the base layer's shape: NAME, SYNOPSIS, DESCRIPTION, OPTIONS, EXIT STATUS, EXAMPLES,
  SEE ALSO. **The completion** offers every option and, where an option takes a value from a known set, that set.
- **Behavior does not change.** Each tool does what it does today, its options keeping their long names.

Rows 4 to 8 move and go by `git mv` and `git rm`, so their history follows; rows 1 to 3 arrive new here, their history
staying in noblefactor-engprod's. The README names the new paths, and its
tree shows `bin/` in place of `scripts/`. `DEPLOYMENT.md` stays as it is. Ruled 2026-10-25: "Keep DEPLOYMENT.md and
get rid of the other two." `public/`, the site's static files, stays: "public is a keeper."

## Implementation Phases

### Phase 1: the plan

- [x] This plan committed on `chore/523-hosting-setup-scripts-live-with`, reviewed with the owner, status `approved`

### Phase 2: the move

- [x] The eight rows done, the README following, `scripts/` gone
- [x] Rows 1 to 5 meet the standard: Declare-BashScript, a man page and a completion each; `bash -n`, shellcheck with
  `-P ~/.local/bin`, and shfmt pass on each tool and completion, and `mandoc -T lint` renders each page, macOS's man having no `-l`
- [x] `bin/<name> --help` shows the man page for each, run from this repository

### Phase 3: the pull request

- [x] The pull request; status `complete` in its last commit

## Files to Create/Modify

| File | Action | Purpose |
| --- | --- | --- |
| `bin/New-AzureStaticWebApp` | Create | row 1 |
| `bin/Set-GitHubRepository` | Create | row 2 |
| `bin/New-SiteHosting` | Create | row 3 |
| `bin/Deploy-Site` | Move | row 4 |
| `bin/Publish-Site` | Move | row 5 |
| `share/man/man1/<name>.1` | Create | the man page of each of rows 1 to 5 |
| `share/bash-completion/completions/<name>` | Create | the completion of each of rows 1 to 5 |
| `scripts/setup-azure.sh` | Delete | row 6 |
| `CLAUDE.md` | Delete | row 7 |
| `CLAUDE-CONTEXT.md` | Delete | row 8 |
| `README.md` | Modify | the new paths |
| `docs/plans/chore/523-hosting-setup-scripts.md` | Create | this plan |

## Related Documents

- NobleFactor/noblefactor-engprod#377, whose pull request removes noblefactor-engprod's `scripts/` after this merges

## Open Questions

None.
