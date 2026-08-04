---
title: "lore search"
description: "Search available packages in the registry and native package managers"
tool: "lore"
command: "search"
parent: "lore"
generated: "2026-08-04T20:21:52Z"
version: "3e0974f"
---

# lore search

Search available packages in the registry and native package managers

## Usage

```
lore search <query> [flags]
```

## Description

Search for packages across the lore registry and native package managers.

Results show the package source and confidence level:
  HIGH   - PkgPath is in the lore registry with full lifecycle support
  MEDIUM - PkgPath found in native PM and verified to exist
  LOW    - PkgPath synthesized but not verified

Use --lore-only to search only the lore lorepackage.
Use --native-only to search only the native package manager.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--limit` | `25` | Maximum results per source |
| `--lore-only` | `false` | Search only the lore registry |
| `--native-only` | `false` | Search only the native package manager |
| `--platform` | `""` | Filter by platform |

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
lore search docker
lore search kubectl --lore-only
lore search ripgrep --limit 10
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
