---
title: "lore self upgrade"
description: "Upgrade lore in place"
tool: "lore"
command: "upgrade"
parent: "lore self"
generated: "2026-08-11T21:16:11Z"
version: "bcd571c"
---

# lore self upgrade

Upgrade lore in place

## Usage

```
lore self upgrade [flags]
```

## Description

Upgrade lore by overwriting the currently installed binary and refreshing
man pages, completions, config, and cache.

The installation prefix is resolved from the running binary's location.
No prefix argument is needed.

Example:
  lore self upgrade

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
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore self](/cli/lore/self/) | Self-management commands |
