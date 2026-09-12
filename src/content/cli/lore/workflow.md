---
title: "lore workflow"
description: "The store's workflows: each a definition and the execution traces of its runs"
tool: "lore"
command: "workflow"
parent: "lore"
generated: "2026-09-12T17:32:21Z"
version: "f860ea7"
---

# lore workflow

The store's workflows: each a definition and the execution traces of its runs

## Usage

```
lore workflow
```

## Description

The store's workflows: each a definition and the execution traces of its runs.

A document has one name on disk, its checksum. The run index carries the name a person
uses -- which program planned it, for which scope, and when it ran -- so these commands
address the store through the index. Selectors default to the invoking program;
--tool asks for another program's workflows.

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

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |

## Child Commands

| Command | Description |
|---------|-------------|
| [lore workflow list](/cli/lore/workflow/list/) | List the store's workflows: tool, scope, definition, run count, latest run |
| [lore workflow verify](/cli/lore/workflow/verify/) | Verify the publisher signatures of workflow definitions and execution traces |
