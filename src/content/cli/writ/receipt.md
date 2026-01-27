---
title: "writ receipt"
description: "View and manage deployment receipts"
tool: "writ"
command: "receipt"
parent: "writ"
generated: "2026-01-27T01:55:56Z"
version: "283c27e"
---

# writ receipt

View and manage deployment receipts

## Usage

```
writ receipt <subcommand>
```

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

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ receipt list](/cli/writ/receipt/list/) | List available receipts |
| [writ receipt show](/cli/writ/receipt/show/) | Display deployment receipt |
