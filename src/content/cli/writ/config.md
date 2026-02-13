---
title: "writ config"
description: "Get and set configuration options"
tool: "writ"
command: "config"
parent: "writ"
generated: "2026-02-13T00:27:55Z"
version: "bf6b043"
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
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--silent` | `false` | Suppress all status messages (stderr) |
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
