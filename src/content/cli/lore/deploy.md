---
title: "lore deploy"
description: "Deploy packages to the local system"
tool: "lore"
command: "deploy"
parent: "lore"
generated: "2026-01-24T22:24:22Z"
version: "5bdf749"
---

# lore deploy

Deploy packages to the local system

## Usage

```
lore deploy [flags] <package>... | @<manifest>
```

## Description

Deploy packages to the local system.

This is the primary command for installing software. Lore resolves how to
install each package on your platform, then executes the four-phase pipeline:
prepare → install → provision → verify.

Packages can be specified directly or via manifest files (prefixed with @).

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Proceed with LOW CONFIDENCE items without prompting |
| `--known-only` | `false` | Skip LOW CONFIDENCE items |
| `--parallel` | `1` | Install n packages concurrently |
| `--receipt` | `""` | Save receipt to specific path |
| `--with` | `[]` | Enable feature (can be repeated) |

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
lore deploy kubectl gh docker
lore deploy docker --with rootless
lore deploy @team.manifest
lore deploy @base.manifest @team.manifest neovim --with lsp
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
