---
title: "writ config get"
description: "Get configuration values"
tool: "writ"
command: "get"
parent: "writ config"
generated: "2026-08-15T05:05:19Z"
version: "ed6f468"
---

# writ config get

Get configuration values

## Usage

```
writ config get <key>...
```

## Description

Get one or more configuration values by dot-path key.

Examples:
  writ config get writ.repos.0.path
  writ config get secrets.identity_file
  writ config get writ.vars.USER_NAME writ.vars.USER_EMAIL

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
