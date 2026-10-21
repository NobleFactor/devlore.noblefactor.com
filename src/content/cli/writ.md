---
title: "writ"
slug: "writ"
description: "Environment manager with platform-aware symlinks"
tool: "writ"
command: "writ"
parent: ""
generated: "2026-10-21T22:07:35Z"
version: "4992f58"
---

# writ

Environment manager with platform-aware symlinks

## Usage

```
writ
```

## Description

Writ orchestrates your portable environment—configuration, scripts, utilities,
templates, and software manifests. Lore is a component that writ delegates to
for software installation.

One command deploys your environment. Platform-aware projects adapt
automatically. Templates handle machine-specific values.

Writ exists because environment management shouldn't require manual symlink
creation, platform-specific scripts, or secret leakage into git.
Declare your environment once — writ deploys it everywhere you work.

## Options

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

## Child Commands

| Command | Description |
|---------|-------------|
| [writ adopt](/cli/writ/adopt/) | Move files from target location into a project and create symlinks |
| [writ config](/cli/writ/config/) | Get and set configuration options |
| [writ decommission](/cli/writ/decommission/) | Remove deployed files and clean up resources for specified projects |
| [writ deploy](/cli/writ/deploy/) | Deploy projects by creating symlinks in the target location |
| [writ migrate](/cli/writ/migrate/) | Migrate an existing environment to a writ layer |
| [writ reconcile](/cli/writ/reconcile/) | Report deployed state: what should be present, from where, and what's missing or different |
| [writ repo](/cli/writ/repo/) | Manage layer repository registrations |
| [writ secret](/cli/writ/secret/) | SOPS secrets for layer repositories |
| [writ self](/cli/writ/self/) | Self-management commands |
| [writ upgrade](/cli/writ/upgrade/) | Regenerate copied files (templates, secrets) from current sources |
| [writ workflow](/cli/writ/workflow/) | The store's workflows: each a definition and the execution traces of its runs |
