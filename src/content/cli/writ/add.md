---
title: "writ add"
description: "Deploy projects by creating symlinks in the target location"
tool: "writ"
command: "add"
parent: "writ"
generated: "2026-01-28T05:58:44Z"
version: "3295520"
---

# writ add

Deploy projects by creating symlinks in the target location

## Usage

```
writ add [flags] <project>...
```

## Description

Deploy projects by creating symlinks in the target location.

Files inside each project directory are symlinked to the target (default: ~).
Platform-specific variants (e.g., project.Darwin) are selected automatically.
If a project contains packages.manifest, writ delegates to lore for software installation.

Conflict handling (--conflict):
  stop      Stop on first conflict (default)
  backup    Move conflicting files to timestamped backups
  overwrite Remove conflicting files without backup
  skip      Skip conflicting files and continue

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--conflict, -c` | `stop` | Conflict resolution: stop, backup, overwrite, skip |
| `--segment, -s` | `[]` | Set custom segment value (KEY=value, repeatable) |

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
writ add noblefactor
writ add all noblefactor thenobles
writ add --conflict=backup noblefactor
writ add --conflict=overwrite noblefactor
writ add -s ROLE=desktop noblefactor
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
