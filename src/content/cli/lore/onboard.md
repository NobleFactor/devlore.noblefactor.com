---
title: "lore onboard"
description: "Parse wiki or script and generate packages-manifest.yaml and config"
tool: "lore"
command: "onboard"
parent: "lore"
generated: "2026-09-08T16:29:14Z"
version: "f1a1f4b"
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
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for yaml to read a large result, table or list to scan one, csv or value to feed another program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, alphabetically, each closing with what it is for:<br>csv            quoted and parseable; when a spreadsheet or a data tool reads it<br>json           the native format, nothing elided; when a script consumes it<br>list           one field per line; when a record is wide, or records differ<br>none           nothing at all; when you want the exit code, not the output<br>table          aligned columns, one row per record; when scanning many rows<br>template=BODY  a Go template; when you need a shape none of the others give<br>value          raw, tab-separated, no header; when cut or awk consumes it<br>yaml           the same content as json; when reading a large result by eye |
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
