---
title: "lore self"
description: "Self-management commands"
tool: "lore"
command: "self"
parent: "lore"
generated: "2026-08-27T00:14:11Z"
version: "ca7744e"
---

# lore self

Self-management commands

## Usage

```
lore self
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
| [lore self install](/cli/lore/self/install/) | Install lore and supporting files |
| [lore self uninstall](/cli/lore/self/uninstall/) | Remove lore and supporting files |
| [lore self upgrade](/cli/lore/self/upgrade/) | Upgrade lore in place |
