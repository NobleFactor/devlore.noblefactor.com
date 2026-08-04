---
title: "lore manifest create"
description: "Scaffold a new package manifest"
tool: "lore"
command: "create"
parent: "lore manifest"
generated: "2026-08-04T01:43:23Z"
version: "3f3c66d"
---

# lore manifest create

Scaffold a new package manifest

## Usage

```
lore manifest create <name> [flags]
```

## Description

Scaffold a new package manifest in the staging directory.

Use --ai for AI-assisted creation from documentation.
Use --from to import from existing scripts or directories.
Use --from-url to import from upstream documentation.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--ai` | `false` | Enable AI-assisted creation |
| `--from` | `""` | Import from existing scripts or directory |
| `--from-url` | `""` | Import from upstream documentation URL |
| `--resume` | `false` | Resume interrupted AI session |

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

## Examples

```bash
lore manifest create mypackage
lore manifest create postgresql --ai --from-url https://postgresql.org/download/
lore manifest create pandoc --from ~/scripts/install-pandoc/
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore manifest](/cli/lore/manifest/) | Create and manage package lifecycle manifests |
