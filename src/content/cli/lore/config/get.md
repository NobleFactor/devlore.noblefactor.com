---
title: "lore config get"
description: "Get configuration values"
tool: "lore"
command: "get"
parent: "lore config"
generated: "2026-02-13T21:44:58Z"
version: "2c0b5f6"
---

# lore config get

Get configuration values

## Usage

```
lore config get <key>...
```

## Description

Get one or more configuration values by dot-path key.

Examples:
  lore config get lore.repos.0.path
  lore config get secrets.identity_file
  lore config get lore.vars.USER_NAME lore.vars.USER_EMAIL

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
