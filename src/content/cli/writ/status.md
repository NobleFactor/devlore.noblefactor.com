---
title: "writ status"
description: "Report deployed state: what should be present, from where, and what's missing or different"
tool: "writ"
command: "status"
parent: "writ"
generated: "2026-09-01T16:55:59Z"
version: "f98c60f"
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
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for yaml to read a large result, table or list to scan one, csv or value to feed another program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, alphabetically, each closing with what it is for:<br>csv            quoted and parseable; when a spreadsheet or a data tool reads it<br>json           the native format, nothing elided; when a script consumes it<br>list           one field per line; when a record is wide, or records differ<br>none           nothing at all; when you want the exit code, not the output<br>table          aligned columns, one row per record; when scanning many rows<br>template=BODY  a Go template; when you need a shape none of the others give<br>value          raw, tab-separated, no header; when cut or awk consumes it<br>yaml           the same content as json; when reading a large result by eye |
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
