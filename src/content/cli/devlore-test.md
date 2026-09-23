---
title: "devlore-test"
description: "Graph test harness for Starlark plan + execute + verify"
tool: "devlore-test"
command: "devlore-test"
parent: ""
generated: "2026-09-23T07:11:20Z"
version: "a835739"
---

# devlore-test

Graph test harness for Starlark plan + execute + verify

## Usage

```
devlore-test [flags]
```

## Description

devlore-test is the graph test harness for the devlore execution engine.

It executes a Starlark test script that builds an execution graph, runs the
graph through the engine, and verifies expectations against the results.

The result goes to stdout as JSON; narration goes to stderr; the definition
and its traces go to the execution store.

  devlore-test run test.star
  devlore-test run -o yaml test.star
  devlore-test run --store ./run test.star
  devlore-test run -o none test.star      # exit code only

## Options

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
| `--no-pager, -P` | `false` | Never page the result, whatever its rendering and wherever it is going |
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for terminal to read a report and markdown to paste one, table or list to scan a result, yaml to read a large one, csv or json to feed a program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, by the reader each serves:<br><br>Composed -- you chose the shape, in the filter stage<br>  template=BODY<br>    a Go template; when you need a shape none of the others give<br>  value<br>    raw, tab-separated, no header; when cut or awk consumes it<br><br>Document -- a report, rather than data<br>  markdown<br>    the document as markdown; when GitHub reads it, or you paste it<br>  terminal<br>    the document rendered, with bold and italic; when you read it<br><br>Nothing<br>  none<br>    nothing at all; when you want the exit code, not the output<br><br>Records -- laid out for a person<br>  list<br>    one field per line; when a record is wide, or records differ<br>  table<br>    aligned columns, one row per record; when scanning many rows<br><br>Serialized -- lossless; a library reads it back<br>  csv<br>    quoted and parseable; when a spreadsheet or a data tool reads it<br>  json<br>    the native format, nothing elided; when a script consumes it<br>  yaml<br>    the same content as json, in a shape that reads by eye |
| `--paginate, -p` | `false` | Page the result whenever stdout is a terminal, whatever its rendering |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Child Commands

| Command | Description |
|---------|-------------|
| [devlore-test config](/cli/devlore-test/config/) | Get and set configuration options |
| [devlore-test run](/cli/devlore-test/run/) | Run a Starlark test script that plans and executes a graph |
| [devlore-test self](/cli/devlore-test/self/) | Self-management commands |
| [devlore-test workflow](/cli/devlore-test/workflow/) | The store's workflows: each a definition and the execution traces of its runs |
