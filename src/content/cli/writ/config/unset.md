---
title: "writ config unset"
description: "Remove configuration keys"
tool: "writ"
command: "unset"
parent: "writ config"
generated: "2026-01-25T19:03:43Z"
version: "2be36de"
---

# writ config unset

Remove configuration keys

## Usage

```
writ config unset <key>...
```

## Description

Remove one or more configuration keys.

Examples:
  writ config unset writ.vars.USER_NAME
  writ config unset secrets.identity_command

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
