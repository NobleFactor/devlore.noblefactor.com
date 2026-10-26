---
title: "writ reconcile"
slug: "writ/reconcile"
description: "Report deployed state: what should be present, from where, and what's missing or different"
tool: "writ"
command: "reconcile"
parent: "writ"
generated: "2026-10-26T03:09:02Z"
version: "67b2123"
---

# writ reconcile

Report deployed state: what should be present, from where, and what's missing or different

## Usage

```
writ reconcile [<project>...] [flags]
```

## Description

Report deployed state: what should be present, where it should have come from, and
what's missing or different.

The report is derived from the store (the current deployment's receipts and their
graphs) — never from a directory scan — and has four sections: the registered layer
tree, the deployed inventory classified against the live filesystem, the package
operations writ's runs performed, and store health. Reconcile produces a report; each
finding names the lifecycle command that repairs it. The report is one JSON document,
rendered by --output like every other result; --jq '.entries' selects the delta alone.

Entry states -- the record is the reference:
  linked     The symlink is as recorded, its referent's content as recorded
  copied     The copied file is as recorded, its source's content as recorded
  absent     The record says a target is there and it is not      → writ deploy
  changed    The target is there but is not what the record says  → writ deploy (link), writ upgrade --force (copy)
  dangling   The source the record names does not resolve         → writ deploy
  stale      As recorded; the source resolves and its content moved → writ upgrade

Exit status -- the answer, gateable like git diff --exit-code (#756):
  0    deployed and clean: every entry is linked or copied
  1    deployed and drifted: any entry is absent, changed, dangling or stale
  66   never deployed: no current deployment to compare against

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--segment, -s` | `[]` | Set a segment's value, NAME=value (repeatable); an extra must be declared in writ.segments |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--jq` | `""` | jq expression applied after --filter; see github.com/itchyny/gojq |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--no-pager, -P` | `false` | Never page the result, whatever its rendering and wherever it is going |
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for terminal to read a report and markdown to paste one, table or list to scan a result, yaml to read a large one, csv or json to feed a program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, by the reader each serves:<br><br>Composed -- you chose the shape, in the filter stage<br>  template=BODY<br>    a Go template; when you need a shape none of the others give<br>  value<br>    raw, tab-separated, no header; when cut or awk consumes it<br><br>Document -- a report, rather than data<br>  markdown<br>    the document as markdown; when GitHub reads it, or you paste it<br>  terminal<br>    the document rendered, with bold and italic; when you read it<br><br>Nothing<br>  none<br>    nothing at all; when you want the exit code, not the output<br><br>Records -- laid out for a person<br>  list<br>    one field per line; when a record is wide, or records differ<br>  table<br>    aligned columns, one row per record; when scanning many rows<br><br>Serialized -- lossless; a library reads it back<br>  csv<br>    quoted and parseable; when a spreadsheet or a data tool reads it<br>  json<br>    the native format, nothing elided; when a script consumes it<br>  yaml<br>    the same content as json, in a shape that reads by eye |
| `--paginate, -p` | `false` | Page the result whenever stdout is a terminal, whatever its rendering |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
writ reconcile                 # Report everything writ has deployed
writ reconcile noblefactor     # Report one project
writ reconcile -o json         # Machine-readable report
writ reconcile -o table        # Aligned columns
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
