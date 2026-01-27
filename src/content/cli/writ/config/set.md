---
title: "writ config set"
description: "Set configuration values"
tool: "writ"
command: "set"
parent: "writ config"
generated: "2026-01-27T17:10:46Z"
version: "ed6b949"
---

# writ config set

Set configuration values

## Usage

```
writ config set <key>=<value>...
```

## Description

Set one or more configuration values using key=value syntax.

Examples:
  writ config set writ.vars.USER_NAME="David Noble"
  writ config set secrets.mode=0600
  writ config set writ.vars.USER_NAME=david writ.vars.USER_EMAIL=d@example.com

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
