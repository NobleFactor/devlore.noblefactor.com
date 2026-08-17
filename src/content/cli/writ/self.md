---
title: "writ self"
description: "Self-management commands"
tool: "writ"
command: "self"
parent: "writ"
generated: "2026-08-17T22:31:03Z"
version: "09c65a9"
---

# writ self

Self-management commands

## Usage

```
writ self
```

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
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ self install](/cli/writ/self/install/) | Install writ and supporting files |
| [writ self uninstall](/cli/writ/self/uninstall/) | Remove writ and supporting files |
| [writ self upgrade](/cli/writ/self/upgrade/) | Upgrade writ in place |
