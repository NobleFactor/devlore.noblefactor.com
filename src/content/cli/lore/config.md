---
title: "lore config"
description: "Get and set configuration options"
tool: "lore"
command: "config"
parent: "lore"
generated: "2026-01-29T08:07:56Z"
version: "5221a3f"
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
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
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
