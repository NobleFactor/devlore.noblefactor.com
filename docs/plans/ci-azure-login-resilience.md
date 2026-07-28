---
title: "Azure login resilience in the deploy workflow"
issue: TBD
status: complete
created: 2026-07-28
updated: 2026-07-28
---

# Plan: Azure login resilience in the deploy workflow

Chartered 2026-07-28 after the develop deploy for site PR #212 died at the `azure/login`
step with "No subscriptions found" — while the deploy itself never needs the management
plane (it runs on the deployment token). Diagnosis with a live az session found every
durable component healthy: the `github-devlore-site-deploy` service principal enabled,
its secret valid to 2027-01-27, its Contributor assignment on `rg-devlore-site` intact,
and the surrounding deploys (20:21 before, 01:15 after) succeeding with the same
credentials. Classification: transient management-plane failure.

## Changes (`.github/workflows/azure-static-web-apps.yml`)

1. `azure/login` runs `continue-on-error` with one retry after a 30s wait.
2. A "Report Azure session" step publishes `steps.azure.outputs.available`.
3. Az-dependent steps degrade instead of failing the run when no session is available:
   quota detection carries the condition (eviction already follows via quota's outputs;
   a skipped quota step leaves `at_limit` empty, so eviction cannot fire), and the
   custom-domain step is skipped. The deploy itself always proceeds on the deployment
   token. Failure shape at the staging limit with no session: Azure's own quota message
   at the deploy step — exactly the pre-eviction behavior, and strictly no worse.

## Verification

This PR's own Build and Deploy check runs the changed workflow (login healthy: attempt
one succeeds, quota detection runs). The degraded path is proven by construction, not
simulation: every az-dependent step is behind `available == 'true'`, and the deploy
step has no az dependency.
