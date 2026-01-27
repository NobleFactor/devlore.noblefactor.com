---
title: "writ remove"
description: "Remove deployed files for the specified projects"
tool: "writ"
command: "remove"
parent: "writ"
generated: "2026-01-27T17:10:46Z"
version: "ed6b949"
---

# writ remove

Remove deployed files for the specified projects

## Usage

```
writ remove [flags] <project>...
```

## Description

Remove deployed files for the specified projects.

Symlinks are removed directly. Copied files (templates, secrets) are removed
only after drift detection confirms they haven't been locally modified.

Safety behavior depends on state file:
  Signed state    → Safe: full drift detection before removal
  Unsigned state  → Warning, requires --force to proceed
  No state        → Error: cannot safely remove without state

With --decommission, delegates to lore to remove orphaned software packages
that were installed via packages.manifest files in the removed projects.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--decommission` | `false` | Delegate to lore to decommission orphaned software |
| `--force` | `false` | Skip confirmation and proceed with unsigned state |

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

## Examples

```bash
writ remove noblefactor              # Remove project files
writ remove all noblefactor          # Remove multiple projects
writ remove --force noblefactor      # Skip confirmation prompts
writ remove --decommission noblefactor  # Also remove installed software
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
