---
title: "lore config unset"
description: "Remove configuration keys"
tool: "lore"
command: "unset"
parent: "lore config"
generated: "2026-01-25T19:17:28Z"
version: "ca292a4"
---

# lore config unset

Remove configuration keys

## Usage

```
lore config unset <key>...
```

## Description

Remove one or more configuration keys.

Examples:
  lore config unset lore.vars.USER_NAME
  lore config unset secrets.identity_command

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
