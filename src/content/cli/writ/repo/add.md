---
title: "writ repo add"
description: "Register a repository as a layer"
tool: "writ"
command: "add"
parent: "writ repo"
generated: "2026-09-18T18:39:41Z"
version: "9aa570b"
---

# writ repo add

Register a repository as a layer

## Usage

```
writ repo add <layer> <working-tree-root>|<repository-url> [<working-tree-root>] [flags]
```

## Description

Register a repository as a layer.

The location is a local working-tree-root, or a repository URL — which triggers a
git clone (git-clone's own grammar: the optional trailing working-tree-root is the
clone destination, defaulting to the writ-owned home under
XDG_DATA_HOME/devlore/writ/repos). After placement the repository is entirely
yours: writ performs no hidden git operations, ever.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--branch` | `""` | Branch to clone (repository-url form only) |

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
writ repo add personal ~/Workspace/Personal
writ repo add team git@github.com:acme/team-env.git
writ repo add personal git@github.com:me/personal.git ~/Workspace/Personal
writ repo add personal git@github.com:me/personal.git --branch devlore-cli/writ-layer
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ repo](/cli/writ/repo/) | Manage layer repository registrations |
