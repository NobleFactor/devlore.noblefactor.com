---
title: "star workflow"
slug: "star/workflow"
description: "The store's workflows: each a definition and the execution traces of its runs"
tool: "star"
command: "workflow"
parent: "star"
generated: "2026-11-02T22:36:08Z"
version: "a9b53f7"
---

# star workflow

The store's workflows: each a definition and the execution traces of its runs

## Usage

```
star workflow
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
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [star](/cli/star/) | Starlark-powered operations tool |

## Child Commands

| Command | Description |
|---------|-------------|
| [star workflow list](/cli/star/workflow/list/) | List the store's workflows: tool, scope, definition, run count, latest run |
| [star workflow verify](/cli/star/workflow/verify/) | Verify the publisher signatures of workflow definitions and execution traces |
