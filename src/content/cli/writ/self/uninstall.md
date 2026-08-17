---
title: "writ self uninstall"
description: "Remove writ and supporting files"
tool: "writ"
command: "uninstall"
parent: "writ self"
generated: "2026-08-17T19:31:26Z"
version: "2b18c94"
---

# writ self uninstall

Remove writ and supporting files

## Usage

```
writ self uninstall [prefix] [flags]
```

## Description

Remove writ and all files installed by "self install".

Reads the installation manifest and removes only files that have not been
modified since installation. Modified files are skipped and reported.
Empty directories left behind are cleaned up.

Example:
  writ self uninstall           # resolves prefix from binary location
  writ self uninstall ~/.local
  writ self uninstall --force    # skip confirmation prompt

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
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ self](/cli/writ/self/) | Self-management commands |
