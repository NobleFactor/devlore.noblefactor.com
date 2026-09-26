---
title: "install.ps1 answers 302: the site allows anonymous access to /install.sh and not to /install.ps1"
issue: https://github.com/NobleFactor/devlore.noblefactor.com/issues/455
status: active
created: 2026-09-26
updated: 2026-09-26
---

# Plan: install.ps1 is reachable

The last box of devlore-cli#948 (lane 1 of devlore-cli#949): the deliverable there was `irm
https://devlore.noblefactor.com/install.ps1 | iex` working, and it did not, for a reason outside that
repository. Ruled 2026-09-26: fix the site first, then continue the schedule.

## Issue 455

`public/install.ps1` arrived with #454. `public/staticwebapp.config.json` lists `/install.sh` and
`/.auth/*` as anonymous and everything else as `authenticated`, with the 401 rewritten to the Azure AD
login. So the file is deployed and the anonymous `irm` is redirected. Verified 2026-09-26: `install.sh`
200, `install.ps1` 302 to `/.auth/login/aad`.

## Requirement

One route entry in `public/staticwebapp.config.json`, beside `/install.sh`'s and identical in form:

```json
{
  "route": "/install.ps1",
  "allowedRoles": ["anonymous", "authenticated"]
}
```

Nothing else changes. The site deploys from `develop` on push, so the merge is the deploy.

## Implementation Phases

### Phase 1: Commit the plan

- [x] This plan, before the change

### Phase 2: The route

- [ ] The entry added, in the same shape as `/install.sh`'s
- [ ] The file still parses as JSON, and the route list is the old list plus one

### Phase 3: Verify, then merge

- [ ] The site's gate is its workflow: `npm ci` and `npm run build` pass on this host, as the deploy job
      runs them
- [ ] PR script written, shown, and handed over
- [ ] After the merge and the deploy: `curl --silent --head https://devlore.noblefactor.com/install.ps1`
      answers 200, and its body is byte-identical to devlore-cli's `install.ps1` at `develop`. That
      closes devlore-cli#948's last open box, ticked in the next devlore-cli commit

## Out of Scope

- **The auth wall itself**, and which other paths might want to be anonymous. One file was asked for.
- **`public/releases`**, the binaries that make this repository an 800 MB clone.
