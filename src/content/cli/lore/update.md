---
title: "lore update"
description: "Synchronize the local registry cache from the central registry"
tool: "lore"
command: "update"
parent: "lore"
generated: "2026-01-27T20:52:16Z"
version: "bb464ee"
---

# lore update

Synchronize the local registry cache from the central registry

## Usage

```
lore update
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
| [lore](/cli/lore/) | The tribal knowledge package deployer |
