---
title: "lore self-install"
description: "Complete installation to specified directory"
tool: "lore"
command: "self-install"
parent: "lore"
generated: "2026-01-28T05:58:44Z"
version: "3295520"
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
  2. Installs man pages to <root>/share/man/man1/ (if man command exists)
  3. Installs shell completions (auto-detects bash, zsh, fish or use --shell)
  4. Creates shared config at $XDG_CONFIG_HOME/devlore/config.yaml
  5. Creates tool config at $XDG_CONFIG_HOME/devlore/config.d/lore.yaml
  6. Initializes cache directory at $XDG_CACHE_HOME/devlore/lore/
  7. Scans and registers repositories (if --personal-repo or --team-repo provided)

Shell completions are auto-detected by default. Use --shell to override:
  ./lore self-install ~/.local --shell bash --shell zsh

Repository flags accept a local path. The repo is scanned for writ compatibility
and migration guidance is provided if the structure doesn't match.

Example:
  ./lore self-install ~/.local
  ./lore self-install ~/.local --shell bash --shell zsh
  ./lore self-install ~/.local --personal-repo=~/dotfiles

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
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
