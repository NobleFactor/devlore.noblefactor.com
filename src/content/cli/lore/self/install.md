---
title: "lore self install"
description: "Install lore and supporting files"
tool: "lore"
command: "install"
parent: "lore self"
generated: "2026-08-24T20:40:35Z"
version: "20a6ebb"
---

# lore self install

Install lore and supporting files

## Usage

```
lore self install [prefix] [flags]
```

## Description

Install lore and all supporting files to the specified prefix directory.

This command:
  1. Copies the binary to <prefix>/bin/lore
  2. Installs man pages to <prefix>/share/man/man1/ (if man command exists)
  3. Installs shell completions (auto-detects bash, fish, pwsh, zsh or use --shell)
  4. Initializes config and cache directories (if applicable)
  5. Writes a manifest for uninstall tracking

Example:
  lore self install           # defaults to ~/.local
  lore self install ~/.local
  lore self install /usr/local --shell bash --shell zsh

After installation, ensure <prefix>/bin is in your PATH.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--shell` | `[]` | Shell to install completions for (repeatable, e.g., --shell bash --shell zsh) |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore self](/cli/lore/self/) | Self-management commands |
