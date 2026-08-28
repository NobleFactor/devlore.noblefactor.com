---
title: "lore config unset"
description: "Remove configuration keys"
tool: "lore"
command: "unset"
parent: "lore config"
generated: "2026-08-28T21:41:04Z"
version: "f3c8769"
---

# lore config unset

Remove configuration keys

## Usage

```
lore config unset <key>...
```

## Description

Remove one or more configuration keys.

Examples:
  lore config unset lore.vars.USER_NAME
  lore config unset secrets.identity_command

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
