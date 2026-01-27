---
title: "lore list"
description: "List deployed packages from pipeline receipts"
tool: "lore"
command: "list"
parent: "lore"
generated: "2026-01-27T19:22:02Z"
version: "836f05e"
---

# lore list

List deployed packages from pipeline receipts

## Usage

```
lore list [flags]
```

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--format` | `table` | Output format (table, manifest, json) |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
