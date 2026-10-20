---
title: "writ secret encrypt"
slug: "writ/secret/encrypt"
description: "Encrypt files to .sops siblings per the governing .sops.yaml"
tool: "writ"
command: "encrypt"
parent: "writ secret"
generated: "2026-10-20T19:39:00Z"
version: "720b3db"
---

# writ secret encrypt

Encrypt files to .sops siblings per the governing .sops.yaml

## Usage

```
writ secret encrypt <file>...
```

## Description

Encrypt files to .sops siblings per the governing .sops.yaml.

The <file>.sops sibling is written beside each input — deployed names are
unchanged (foo.env.sops deploys as foo.env). Recipients and document format
come from the .sops.yaml resolved within the containing layer; a file no
creation rule governs fails with the resolver's error. An existing sibling
refuses — encrypt never overwrites — and the plaintext source is never
deleted; removal belongs to the caller.

Every argument must lie inside a registered layer's working tree; register a
repository with 'writ repo set'. The run rides the standard pipeline: the
graph and trace persist to the execution store with receipts recorded.

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
writ secret encrypt Home/noblefactor/.config/service/credentials.yaml
writ secret encrypt Home/common/.ssh/id_ed25519 Home/common/.ssh/id_rsa
writ secret encrypt --dry-run Home/thenobles/.Personal-secrets/keys.json
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ secret](/cli/writ/secret/) | SOPS secrets for layer repositories |
