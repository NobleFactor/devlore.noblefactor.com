---
title: "lore upgrade"
description: "Upgrade previously deployed packages to newer versions"
tool: "lore"
command: "upgrade"
parent: "lore"
generated: "2026-01-28T05:58:44Z"
version: "3295520"
---

# lore upgrade

Upgrade previously deployed packages to newer versions

## Usage

```
lore upgrade [@<receipt>]
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
