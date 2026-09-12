---
title: "writ secret encrypt"
description: "Encrypt files to .sops siblings per the governing .sops.yaml"
tool: "writ"
command: "encrypt"
parent: "writ secret"
generated: "2026-09-12T17:32:21Z"
version: "f860ea7"
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
repository with 'writ repo add'. The run rides the standard pipeline: the
graph and trace persist to the execution store with receipts recorded.

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
writ secret encrypt Home/noblefactor/.config/service/credentials.yaml
writ secret encrypt Home/common/.ssh/id_ed25519 Home/common/.ssh/id_rsa
writ secret encrypt --dry-run Home/thenobles/.Personal-secrets/keys.json
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ secret](/cli/writ/secret/) | SOPS secrets for layer repositories |
