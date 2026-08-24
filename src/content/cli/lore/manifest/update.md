---
title: "lore manifest update"
description: "Modify an existing package manifest"
tool: "lore"
command: "update"
parent: "lore manifest"
generated: "2026-08-24T05:19:51Z"
version: "cfe461f"
---

# lore manifest update

Modify an existing package manifest

## Usage

```
lore manifest update <name> [flags]
```

## Description

Update an existing package manifest.

Add new features, platform support, or import updates from documentation.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--add-feature` | `""` | Add a new feature to the package |
| `--add-platform` | `""` | Add platform support |
| `--from-url` | `""` | Import updates from documentation URL |

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
lore manifest update docker --add-feature gpu-support
lore manifest update docker --add-platform windows
lore manifest update docker --from-url https://docs.docker.com/engine/install/
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore manifest](/cli/lore/manifest/) | Create and manage package lifecycle manifests |
