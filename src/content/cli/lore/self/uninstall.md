---
title: "lore self uninstall"
slug: "lore/self/uninstall"
description: "Remove lore and supporting files"
tool: "lore"
command: "uninstall"
parent: "lore self"
generated: "2026-10-20T05:35:24Z"
version: "5201113"
---

# lore self uninstall

Remove lore and supporting files

## Usage

```
lore self uninstall [prefix] [flags]
```

## Description

Remove lore and all files installed by "self install".

Reads the installation manifest and removes the files it records. A file
changed since it was installed is kept, in case it is your own edit; a file
that cannot be removed is kept and named for its reason. Empty directories
left behind are cleaned up. The manifest is kept until nothing it records is
left, so a later run can finish what one could not.

On Windows the running program cannot delete itself, so it is removed once
this command exits.

It asks before removing anything, and reads the answer from standard input,
whether or not that is a terminal. Only y or yes removes; any other answer,
or none, removes nothing. --force removes without asking. --unattended asks
nothing and takes the default, No, so it removes nothing.

Example:
  lore self uninstall           # resolves prefix from binary location
  lore self uninstall ~/.local
  lore self uninstall --force    # skip confirmation prompt

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Skip confirmation prompt |

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
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore self](/cli/lore/self/) | Self-management commands |
