---
title: "writ self upgrade"
description: "Upgrade writ in place"
tool: "writ"
command: "upgrade"
parent: "writ self"
generated: "2026-08-18T00:17:59Z"
version: "b1da01e"
---

# writ self upgrade

Upgrade writ in place

## Usage

```
writ self upgrade [flags]
```

## Description

Upgrade writ by overwriting the currently installed binary and refreshing
man pages, completions, config, and cache.

The installation prefix is resolved from the running binary's location.
No prefix argument is needed.

Example:
  writ self upgrade

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--shell` | `[]` | Shell to install completions for (repeatable, e.g., --shell bash --shell zsh) |

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
| [writ self](/cli/writ/self/) | Self-management commands |
