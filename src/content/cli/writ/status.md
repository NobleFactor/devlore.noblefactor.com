---
title: "writ status"
description: "Report deployed state: what should be present, from where, and what's missing or different"
tool: "writ"
command: "status"
parent: "writ"
generated: "2026-08-31T01:33:00Z"
version: "18dedc6"
---

# writ status

Report deployed state: what should be present, from where, and what's missing or different

## Usage

```
writ status [<project>...]
```

## Description

Report deployed state: what should be present, where it should have come from, and
what's missing or different.

The report is derived from the store (the run index plus the persisted graphs and
traces) — never from a directory scan — and has four sections: the registered layer
tree, the deployed inventory classified against the live filesystem, the package
operations writ's runs performed, and store health. Status is report-only; each
finding names the lifecycle command that repairs it.

Status indicators:
  ✓ Linked            — Symlink present and resolving to its source
  ✓ Copied            — Copied file present (encrypted content is not compared)
  ✗ Missing           — Deployed target is gone            → writ deploy
  ⚠ Conflict          — Something else occupies the target
  ? Orphan            — Target's source no longer exists   → writ decommission
  ↑ Stale             — Source changed since the run       → writ upgrade
  M Modified          — Target edited out-of-band          → writ upgrade --force
  M Modified-or-stale — Differs, but the run predates recorded content
                        identity: attribution indeterminate → writ upgrade

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--jq` | `""` | jq expression applied after --filter; see github.com/itchyny/gojq |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--output, -o` | `json` | Output rendering: json, yaml, table, csv, value (raw, pairs with --jq), template=BODY, or none |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
writ status                    # Report everything writ has deployed
writ status noblefactor        # Report one project
writ status -o json            # Machine-readable report
writ status -o table           # Aligned columns
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
