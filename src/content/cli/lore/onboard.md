---
title: "lore onboard"
description: "Parse wiki or script and generate packages-manifest.yaml and config"
tool: "lore"
command: "onboard"
parent: "lore"
generated: "2026-09-21T11:35:40Z"
version: "a83653f"
---

# lore onboard

Parse wiki or script and generate packages-manifest.yaml and config

## Usage

```
lore onboard --from <source> [<dir>] [flags]
```

## Description

Parse an onboarding wiki page or setup script and generate both a
packages-manifest.yaml file and a config/ directory with configuration files.

Lore uses AI to extract installation steps, map them to known registry packages,
and flag org-specific items for human review.

After onboarding, use 'lore deploy @packages-manifest.yaml' to install software,
then 'writ adopt --from-receipt' to bring the generated config into your
environment repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--explain` | `false` | Show detailed reasoning for each confidence decision |
| `--from` | `""` | Source URL or file path |
| `--max-fetches` | `5` | Maximum additional URLs to fetch |

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
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
lore onboard --from https://wiki.acme.com/backend-setup
lore onboard --from ~/scripts/setup.sh
lore onboard --from ~/scripts/setup.sh ./packages   # write the manifest there

# Full workflow:
lore onboard --from https://wiki.acme.com/setup
lore deploy @packages-manifest.yaml
writ adopt --from-receipt
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
