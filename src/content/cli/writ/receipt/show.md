---
title: "writ receipt show"
description: "Display deployment receipt"
tool: "writ"
command: "show"
parent: "writ receipt"
generated: "2026-01-27T21:01:20Z"
version: "048c184"
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
of your environment state.

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
