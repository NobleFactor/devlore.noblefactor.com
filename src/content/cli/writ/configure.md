---
title: "writ configure"
description: "Discover system info and configure template variables"
tool: "writ"
command: "configure"
parent: "writ"
generated: "2026-01-27T19:36:50Z"
version: "6b019e8"
---

# writ configure

Discover system info and configure template variables

## Usage

```
writ configure
```

## Description

Discover system info and configure template variables.

Auto-detects user name, email, editor, and platform. Prompts for values
that cannot be determined automatically.

Use --unattended (global flag) to auto-detect only and fail on missing values.

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
