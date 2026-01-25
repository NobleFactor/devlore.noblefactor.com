---
title: "lore search"
description: "Search available packages in the registry"
tool: "lore"
command: "search"
parent: "lore"
generated: "2026-01-24T04:27:42Z"
version: "621aacf"
---

# lore search

Search available packages in the registry

## Usage

```
lore search <query> [flags]
```

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--platform` | `""` | Filter by platform |

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
