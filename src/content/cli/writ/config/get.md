---
title: "writ config get"
description: "Get configuration values"
tool: "writ"
command: "get"
parent: "writ config"
generated: "2026-01-27T20:32:19Z"
version: "d8575e7"
---

# writ config get

Get configuration values

## Usage

```
writ config get <key>...
```

## Description

Get one or more configuration values by dot-path key.

Examples:
  writ config get writ.repos.0.path
  writ config get secrets.identity_file
  writ config get writ.vars.USER_NAME writ.vars.USER_EMAIL

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
