---
title: "writ repo add"
description: "Register an existing local repository"
tool: "writ"
command: "add"
parent: "writ repo"
generated: "2026-01-24T21:57:33Z"
version: "d8f6a1e"
---

# writ repo add

Register an existing local repository

## Usage

```
writ repo add <path> [flags]
```

## Description

Register an existing local repository for use with writ.

The repository must already exist at the specified path. This command
validates the path and registers it in ~/.config/devlore/config.yaml.

Use this to adopt an existing dotfiles repository into writ management.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--layer` | `personal` | Layer for the repository: personal or team |
| `--name` | `""` | Display name for the repository (default: directory name) |

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
# Add existing personal dotfiles
writ repo add --layer=personal ~/Workspace/Personal/Home/Configs

# Add team repository at custom location
writ repo add --layer=team /opt/company/team-configs
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ repo](/cli/writ/repo/) | Manage environment repositories |
