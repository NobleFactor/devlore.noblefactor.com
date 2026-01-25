---
title: "lore self-install"
description: "Complete installation to specified directory"
tool: "lore"
command: "self-install"
parent: "lore"
generated: "2026-01-25T19:10:05Z"
version: "1464a54"
---

# lore self-install

Complete installation to specified directory

## Usage

```
lore self-install <root-directory> [flags]
```

## Description

Install lore and all supporting files to the specified root directory.

This command:
  1. Copies the binary to <root>/bin/lore
  2. Installs man pages to <root>/share/man/man1/
  3. Installs shell completions for bash, zsh, and fish
  4. Creates default config at $XDG_CONFIG_HOME/lore/config.yaml
  5. Initializes cache directory at $XDG_CACHE_HOME/lore/
  6. Scans and registers repositories (if --personal-repo or --team-repo provided)

Repository flags accept a local path. The repo is scanned for writ compatibility
and migration guidance is provided if the structure doesn't match.

Example:
  ./lore self-install ~/.local
  ./lore self-install ~/.local --personal-repo=~/dotfiles
  ./lore self-install ~/.local --personal-repo=~/dotfiles --team-repo=~/work/configs

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
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
