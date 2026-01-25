---
title: "writ config edit"
description: "Open configuration file in $EDITOR"
tool: "writ"
command: "edit"
parent: "writ config"
generated: "2026-01-25T19:17:28Z"
version: "ca292a4"
---

# writ config edit

Open configuration file in $EDITOR

## Usage

```
writ config edit
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
| [writ config](/cli/writ/config/) | Get and set configuration options |
