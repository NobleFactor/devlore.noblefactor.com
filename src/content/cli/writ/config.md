---
title: "writ config"
description: "Get and set configuration options"
tool: "writ"
command: "config"
parent: "writ"
generated: "2026-09-08T17:35:45Z"
version: "b6a3d60"
---

# writ config

Get and set configuration options

## Usage

```
writ config <command>
```

## Description

Get and set writ configuration options.

Configuration is stored at $XDG_CONFIG_HOME/devlore/config.yaml
(default: ~/.config/devlore/config.yaml). This file is shared across
writ and lore, with tool-specific settings under their respective keys.

Dot-paths match the file structure exactly:
  "writ.repos.0.path"    → tool-specific setting
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
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ config edit](/cli/writ/config/edit/) | Open configuration file in $EDITOR |
| [writ config get](/cli/writ/config/get/) | Get configuration values |
| [writ config list](/cli/writ/config/list/) | List all configuration settings |
| [writ config path](/cli/writ/config/path/) | Show configuration file location |
| [writ config schema](/cli/writ/config/schema/) | Output the embedded JSON schema |
| [writ config set](/cli/writ/config/set/) | Set configuration values |
| [writ config unset](/cli/writ/config/unset/) | Remove configuration keys |
| [writ config validate](/cli/writ/config/validate/) | Validate configuration against schema |
