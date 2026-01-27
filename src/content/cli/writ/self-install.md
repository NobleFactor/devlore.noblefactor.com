---
title: "writ self-install"
description: "Complete installation to specified directory"
tool: "writ"
command: "self-install"
parent: "writ"
generated: "2026-01-27T21:01:20Z"
version: "048c184"
---

# writ self-install

Complete installation to specified directory

## Usage

```
writ self-install <root-directory> [flags]
```

## Description

Install writ and all supporting files to the specified root directory.

This command:
  1. Copies the binary to <root>/bin/writ
  2. Installs man pages to <root>/share/man/man1/
  3. Installs shell completions for bash, zsh, and fish
  4. Creates default config at $XDG_CONFIG_HOME/writ/config.yaml
  5. Initializes cache directory at $XDG_CACHE_HOME/writ/
  6. Scans and registers repositories (if --personal-repo or --team-repo provided)

Repository flags accept a local path. The repo is scanned for writ compatibility
and migration guidance is provided if the structure doesn't match.

Example:
  ./writ self-install ~/.local
  ./writ self-install ~/.local --personal-repo=~/dotfiles
  ./writ self-install ~/.local --personal-repo=~/dotfiles --team-repo=~/work/configs

After installation, ensure <root>/bin is in your PATH.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--personal-repo` | `""` | Path to personal environment repository |
| `--team-repo` | `""` | Path to team environment repository |

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

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
