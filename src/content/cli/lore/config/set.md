---
title: "lore config set"
description: "Set configuration values"
tool: "lore"
command: "set"
parent: "lore config"
generated: "2026-02-17T07:58:02Z"
version: "390d3d9"
---

# lore config set

Set configuration values

## Usage

```
lore config set <key>=<value>...
```

## Description

Set one or more configuration values using key=value syntax.

Examples:
  lore config set lore.vars.USER_NAME="David Noble"
  lore config set secrets.mode=0600
  lore config set lore.vars.USER_NAME=david lore.vars.USER_EMAIL=d@example.com

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
| [lore config](/cli/lore/config/) | Get and set configuration options |
