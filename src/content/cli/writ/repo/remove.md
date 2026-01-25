---
title: "writ repo remove"
description: "Unregister a repository"
tool: "writ"
command: "remove"
parent: "writ repo"
generated: "2026-01-25T18:36:01Z"
version: "6edf4ea"
---

# writ repo remove

Unregister a repository

## Usage

```
writ repo remove --layer=<layer> [flags]
```

## Description

Unregister a repository from writ configuration.

This removes the repository entry from ~/.config/devlore/config.yaml.
It does NOT delete the repository files from disk.

To also remove deployed files from this repository, run 'writ remove'
for the relevant projects first.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--layer` | `""` | Layer of the repository to remove (required) |

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
# Unregister the personal repository
writ repo remove --layer=personal

# Unregister team repository
writ repo remove --layer=team
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ repo](/cli/writ/repo/) | Manage environment repositories |
