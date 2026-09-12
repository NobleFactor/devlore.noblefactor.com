---
title: "writ decommission"
description: "Remove deployed files and clean up resources for specified projects"
tool: "writ"
command: "decommission"
parent: "writ"
generated: "2026-09-12T17:32:21Z"
version: "f860ea7"
---

# writ decommission

Remove deployed files and clean up resources for specified projects

## Usage

```
writ decommission [flags] <project>...
```

## Description

Remove deployed files and clean up resources for specified projects.

The deployed inventory comes from the store readback (never a directory scan), so
decommission removes exactly what writ's runs put into effect. Symlinked entries are
unlinked — a target the user replaced with a real file is refused, not deleted.
Copied files are removed with recovery-site archival (restorable on unwind).

Signature-gated safety (refusing unsigned state) arrives with graph signing (step 46).

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--prune` | `false` | Remove empty parent directories after file removal |

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
writ decommission noblefactor              # Remove project files
writ decommission all noblefactor          # Remove multiple projects
writ decommission --prune noblefactor      # Also remove empty parent directories
writ decommission --force noblefactor      # Skip confirmation prompts
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
