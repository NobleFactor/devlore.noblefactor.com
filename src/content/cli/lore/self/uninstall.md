---
title: "lore self uninstall"
description: "Remove lore and supporting files"
tool: "lore"
command: "uninstall"
parent: "lore self"
generated: "2026-08-30T23:20:16Z"
version: "5c4d546"
---

# lore self uninstall

Remove lore and supporting files

## Usage

```
lore self uninstall [prefix] [flags]
```

## Description

Remove lore and all files installed by "self install".

Reads the installation manifest and removes only files that have not been
modified since installation. Modified files are skipped and reported.
Empty directories left behind are cleaned up.

Example:
  lore self uninstall           # resolves prefix from binary location
  lore self uninstall ~/.local
  lore self uninstall --force    # skip confirmation prompt

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Skip confirmation prompt |

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
