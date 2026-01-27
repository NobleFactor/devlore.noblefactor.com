---
title: "lore config edit"
description: "Open configuration file in $EDITOR"
tool: "lore"
command: "edit"
parent: "lore config"
generated: "2026-01-27T06:28:08Z"
version: "dbe26bf"
---

# lore config edit

Open configuration file in $EDITOR

## Usage

```
lore config edit
```

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
| [lore config](/cli/lore/config/) | Get and set configuration options |
