---
title: "lore decommission"
description: "Remove packages and clean up their resources"
tool: "lore"
command: "decommission"
parent: "lore"
generated: "2026-01-27T04:25:54Z"
version: "333dcbd"
---

# lore decommission

Remove packages and clean up their resources

## Usage

```
lore decommission [@<receipt>] [<package>...] [flags]
```

## Description

Remove packages and clean up their resources.

With --orphans-only, only removes packages that are no longer referenced
by any packages.manifest in the environment repository. This is used by
writ when removing a project to clean up software that's no longer needed.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--orphans-only` | `false` | Only remove packages not referenced by any manifest |

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

## Examples

```bash
lore decommission @workstation
lore decommission docker kubectl
lore decommission --orphans-only  # Remove unreferenced packages
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
