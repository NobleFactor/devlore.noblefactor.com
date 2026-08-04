---
title: "writ config unset"
description: "Remove configuration keys"
tool: "writ"
command: "unset"
parent: "writ config"
generated: "2026-08-04T20:32:47Z"
version: "6079b07"
---

# writ config unset

Remove configuration keys

## Usage

```
writ config unset <key>...
```

## Description

Remove one or more configuration keys.

Examples:
  writ config unset writ.vars.USER_NAME
  writ config unset secrets.identity_command

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
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ config](/cli/writ/config/) | Get and set configuration options |
