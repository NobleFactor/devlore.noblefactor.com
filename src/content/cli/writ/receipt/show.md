---
title: "writ receipt show"
description: "Display deployment receipt"
tool: "writ"
command: "show"
parent: "writ receipt"
generated: "2026-03-05T04:47:28Z"
version: "f49f1ba"
---

# writ receipt show

Display deployment receipt

## Usage

```
writ receipt show [name] [flags]
```

## Description

Display deployment receipt for a writ deployment.

Shows what was deployed: packages, symlinks, templates processed.

Use --unified to include lore receipts (software installations) alongside
writ receipts (configuration deployments). This provides a complete view
of your environment deploystate.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--unified` | `false` | Include lore receipts (software + configuration) |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
writ receipt show                     # Show default receipt
writ receipt show workstation          # Show named receipt
writ receipt show workstation --unified # Include lore software receipts
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ receipt](/cli/writ/receipt/) | View and manage deployment receipts |
