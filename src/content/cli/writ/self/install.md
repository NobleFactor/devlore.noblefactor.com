---
title: "writ self install"
description: "Install writ and supporting files"
tool: "writ"
command: "install"
parent: "writ self"
generated: "2026-08-24T20:40:35Z"
version: "20a6ebb"
---

# writ self install

Install writ and supporting files

## Usage

```
writ self install [prefix] [flags]
```

## Description

Install writ and all supporting files to the specified prefix directory.

This command:
  1. Copies the binary to <prefix>/bin/writ
  2. Installs man pages to <prefix>/share/man/man1/ (if man command exists)
  3. Installs shell completions (auto-detects bash, fish, pwsh, zsh or use --shell)
  4. Initializes config and cache directories (if applicable)
  5. Writes a manifest for uninstall tracking

Example:
  writ self install           # defaults to ~/.local
  writ self install ~/.local
  writ self install /usr/local --shell bash --shell zsh

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
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ self](/cli/writ/self/) | Self-management commands |
