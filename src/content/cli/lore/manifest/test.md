---
title: "lore manifest test"
description: "Dry-run a package manifest on current system"
tool: "lore"
command: "test"
parent: "lore manifest"
generated: "2026-09-04T02:02:03Z"
version: "966bdf9"
---

# lore manifest test

Dry-run a package manifest on current system

## Usage

```
lore manifest test <name> [flags]
```

## Description

Test a package manifest without modifying the system.

Shows what each phase would do. Use --with to test specific features.
Use --set to test with specific settings. Use --debug for verbose output.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--break` | `""` | Break at specific phase (prepare, install, provision, verify) |
| `--debug` | `false` | Show debug-level messages |
| `--set` | `[]` | Set setting value (key=value) |
| `--with` | `[]` | Enable feature for testing |

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
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
lore manifest test mypackage
lore manifest test mypackage --with completions --with debug-symbols
lore manifest test mypackage --set shell=zsh
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore manifest](/cli/lore/manifest/) | Create and manage package lifecycle manifests |
