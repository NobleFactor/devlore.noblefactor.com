---
title: "writ adopt"
description: "Move files from target location into a project and create symlinks"
tool: "writ"
command: "adopt"
parent: "writ"
generated: "2026-01-27T02:02:03Z"
version: "2c49ed5"
---

# writ adopt

Move files from target location into a project and create symlinks

## Usage

```
writ adopt [flags] <project> <file|dir>...
```

## Description

Move files from target location into a project and create symlinks.

Use this to bring existing configuration files under version control.
Files are moved to <repo>/<source>/<project>/ preserving their relative path,
then symlinked back to the original location.

Directories are adopted recursively—all files within are moved and symlinked.
Existing symlinks within directories are skipped.

With --from-receipt, reads a lore receipt and adopts packages.manifest and
config files into the environment repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--from-receipt` | `false` | Adopt packages.manifest and config from lore receipt |
| `--layer` | `personal` | Layer to adopt into: personal, team, or base |
| `--source` | `Home` | Source directory within the repo (e.g., Home, System) |

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
# Adopt a single file into personal layer
writ adopt noblefactor .zshrc

# Adopt multiple files
writ adopt noblefactor .zshrc .bashrc .config/nvim/init.lua

# Adopt an entire directory recursively
writ adopt noblefactor .config/nvim

# Adopt into team layer
writ adopt --layer=team shared .editorconfig

# Adopt from lore receipt
writ adopt --from-receipt
writ adopt --from-receipt ~/.local/state/lore/receipts/2026-01-19T14:32:07.yaml
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
