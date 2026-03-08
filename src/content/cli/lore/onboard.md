---
title: "lore onboard"
description: "Parse wiki or script and generate packages-manifest.yaml and config"
tool: "lore"
command: "onboard"
parent: "lore"
generated: "2026-03-08T00:51:17Z"
version: "1662e51"
---

# lore onboard

Parse wiki or script and generate packages-manifest.yaml and config

## Usage

```
lore onboard --from <source> [flags]
```

## Description

Parse an onboarding wiki page or setup script and generate both a
packages-manifest.yaml file and a config/ directory with configuration files.

Lore uses AI to extract installation steps, map them to known registry packages,
and flag org-specific items for human review.

After onboarding, use 'lore deploy @packages-manifest.yaml' to install software,
then 'writ adopt --from-receipt' to bring the generated config into your
environment repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--explain` | `false` | Show detailed reasoning for each confidence decision |
| `--format` | `plain` | Manifest format (plain, yaml) |
| `--from` | `""` | Source URL or file path |
| `--max-fetches` | `5` | Maximum additional URLs to fetch |
| `--output` | `""` | Output directory path (default: current directory) |
| `--verbose` | `false` | Show AI reasoning |

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

## Examples

```bash
lore onboard --from https://wiki.acme.com/backend-setup
lore onboard --from ~/scripts/setup.sh

# Full workflow:
lore onboard --from https://wiki.acme.com/setup
lore deploy @packages-manifest.yaml
writ adopt --from-receipt
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
