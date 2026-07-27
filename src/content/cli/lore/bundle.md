---
title: "lore bundle"
description: "Create self-extracting deployment bundles for air-gapped environments"
tool: "lore"
command: "bundle"
parent: "lore"
generated: "2026-07-27T20:21:32Z"
version: "2b3780c"
---

# lore bundle

Create self-extracting deployment bundles for air-gapped environments

## Usage

```
lore bundle @<manifest> -o <output> [flags]
```

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--include-repo` | `[]` | Include repository in bundle |
| `--output, -o` | `""` | Promise bundle path |
| `--platform` | `""` | Target platform (e.g., linux/fedora) |

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
