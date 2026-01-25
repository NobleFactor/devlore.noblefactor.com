---
title: "lore onboard"
description: "Parse wiki or script and generate packages.manifest and config"
tool: "lore"
command: "onboard"
parent: "lore"
generated: "2026-01-25T19:10:05Z"
version: "1464a54"
---

# lore onboard

Parse wiki or script and generate packages.manifest and config

## Usage

```
lore onboard --from <source> [flags]
```

## Description

Parse an onboarding wiki page or setup script and generate both a
packages.manifest file and a config/ directory with configuration files.

Lore uses AI to extract installation steps, map them to known registry packages,
and flag org-specific items for human review.

After onboarding, use 'lore deploy @packages.manifest' to install software,
then 'writ adopt --from-receipt' to bring the generated config into your
environment repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--explain` | `false` | Show detailed reasoning for each confidence decision |
| `--format` | `plain` | Manifest format (plain, yaml) |
| `--from` | `""` | Source URL or file path |
| `--output` | `""` | Output directory path (default: current directory) |
| `--registry` | `""` | Registry to match against |
| `--verbose` | `false` | Show AI reasoning |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |

## Examples

```bash
lore onboard --from https://wiki.acme.com/backend-setup
lore onboard --from ~/scripts/setup.sh

# Full workflow:
lore onboard --from https://wiki.acme.com/setup
lore deploy @packages.manifest
writ adopt --from-receipt
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
