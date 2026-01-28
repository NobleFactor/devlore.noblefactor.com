---
title: "writ self-install"
description: "Complete installation to specified directory"
tool: "writ"
command: "self-install"
parent: "writ"
generated: "2026-01-28T05:58:44Z"
version: "3295520"
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
  2. Installs man pages to <root>/share/man/man1/ (if man command exists)
  3. Installs shell completions (auto-detects bash, zsh, fish or use --shell)
  4. Creates shared config at $XDG_CONFIG_HOME/devlore/config.yaml
  5. Creates tool config at $XDG_CONFIG_HOME/devlore/config.d/writ.yaml
  6. Initializes cache directory at $XDG_CACHE_HOME/devlore/writ/
  7. Scans and registers repositories (if --personal-repo or --team-repo provided)

Shell completions are auto-detected by default. Use --shell to override:
  ./writ self-install ~/.local --shell bash --shell zsh

Repository flags accept a local path. The repo is scanned for writ compatibility
and migration guidance is provided if the structure doesn't match.

Example:
  ./writ self-install ~/.local
  ./writ self-install ~/.local --shell bash --shell zsh
  ./writ self-install ~/.local --personal-repo=~/dotfiles

After installation, ensure <root>/bin is in your PATH.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--personal-repo` | `""` | Path to personal environment repository |
| `--shell` | `[]` | Shell to install completions for (repeatable, e.g., --shell bash --shell zsh) |
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
