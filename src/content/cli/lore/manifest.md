---
title: "lore manifest"
description: "Create and manage package lifecycle manifests"
tool: "lore"
command: "manifest"
parent: "lore"
generated: "2026-02-15T01:34:55Z"
version: "96e8503"
---

# lore manifest

Create and manage package lifecycle manifests

## Usage

```
lore manifest <subcommand>
```

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
| [lore](/cli/lore/) | The tribal knowledge package deployer |

## Child Commands

| Command | Description |
|---------|-------------|
| [lore manifest create](/cli/lore/manifest/create/) | Scaffold a new package manifest |
| [lore manifest show](/cli/lore/manifest/show/) | Display package manifest details |
| [lore manifest test](/cli/lore/manifest/test/) | Dry-run a package manifest on current system |
| [lore manifest update](/cli/lore/manifest/update/) | Modify an existing package manifest |
| [lore manifest validate](/cli/lore/manifest/validate/) | Validate a package manifest |
