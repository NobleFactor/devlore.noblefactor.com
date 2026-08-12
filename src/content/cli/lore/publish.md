---
title: "lore publish"
description: "Submit a package manifest to the registry"
tool: "lore"
command: "publish"
parent: "lore"
generated: "2026-08-12T05:07:20Z"
version: "26a1104"
---

# lore publish

Submit a package manifest to the registry

## Usage

```
lore publish <name>
```

## Description

Submit a validated package manifest to the lorepackage.

Runs final validation, creates a pull request for community review,
and triggers automated testing on macOS, Linux, and Windows.

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
lore publish mypackage
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
