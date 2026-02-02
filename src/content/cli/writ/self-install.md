---
title: "writ self-install"
description: "Complete installation to specified directory"
tool: "writ"
command: "self-install"
parent: "writ"
generated: "2026-02-02T17:34:58Z"
version: "bd2ad61"
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
  3. Installs shell completions (auto-detects bash, fish, powershell, zsh or use --shell)
  4. Creates shared config at $XDG_CONFIG_HOME/devlore/config.yaml
  5. Creates tool config at $XDG_CONFIG_HOME/devlore/config.d/writ.yaml
  6. Initializes cache directory at $XDG_CACHE_HOME/devlore/
  7. Creates layer directories at $XDG_DATA_HOME/devlore/writ/layers/

Shell completions are auto-detected by default. Use --shell to override:
  writ self-install --shell bash --shell zsh ~/.local

Example:
  writ self-install ~/.local
  writ self-install --shell bash --shell zsh ~/.local

After installation, ensure <root>/bin is in your PATH.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--shell` | `[]` | Shell to install completions for (repeatable, e.g., --shell bash --shell zsh) |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
