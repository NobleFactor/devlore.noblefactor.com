---
title: "lore config"
description: "Get and set configuration options"
tool: "lore"
command: "config"
parent: "lore"
generated: "2026-09-10T22:59:02Z"
version: "6db5574"
---

# lore config

Get and set configuration options

## Usage

```
lore config <command>
```

## Description

Get and set lore configuration options.

Configuration is stored at $XDG_CONFIG_HOME/devlore/config.yaml
(default: ~/.config/devlore/config.yaml). This file is shared across
writ and lore, with tool-specific settings under their respective keys.

Dot-paths match the file structure exactly:
  "lore.repos.0.path"    → tool-specific setting
  "secrets.mode"             → shared setting

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
| [lore config edit](/cli/lore/config/edit/) | Open configuration file in $EDITOR |
| [lore config get](/cli/lore/config/get/) | Get configuration values |
| [lore config list](/cli/lore/config/list/) | List all configuration settings |
| [lore config path](/cli/lore/config/path/) | Show configuration file location |
| [lore config schema](/cli/lore/config/schema/) | Output the embedded JSON schema |
| [lore config set](/cli/lore/config/set/) | Set configuration values |
| [lore config unset](/cli/lore/config/unset/) | Remove configuration keys |
| [lore config validate](/cli/lore/config/validate/) | Validate configuration against schema |
