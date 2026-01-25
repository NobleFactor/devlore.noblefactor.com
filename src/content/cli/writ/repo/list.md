---
title: "writ repo list"
description: "List configured repositories"
tool: "writ"
command: "list"
parent: "writ repo"
generated: "2026-01-25T18:47:40Z"
version: "5e52ca2"
---

# writ repo list

List configured repositories

## Usage

```
writ repo list [flags]
```

## Description

List all configured environment repositories.

Shows the layer, path, and status of each repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--json` | `false` | Output as JSON |

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
| [writ repo](/cli/writ/repo/) | Manage environment repositories |
