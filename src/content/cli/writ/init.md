---
title: "writ init"
description: "Initialize a new dotfiles repository in the current directory"
tool: "writ"
command: "init"
parent: "writ"
generated: "2026-01-27T04:37:37Z"
version: "3a8d894"
---

# writ init

Initialize a new dotfiles repository in the current directory

## Usage

```
writ init [flags]
```

## Description

Initialize a new dotfiles repository in the current directory.

DEPRECATED: Use 'writ repo init' instead. This command is provided for
backward compatibility and will be removed in a future release.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Overwrite existing structure |
| `--layer` | `personal` | Layer for the repository: personal or team |

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
