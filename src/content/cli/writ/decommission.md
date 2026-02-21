---
title: "writ decommission"
description: "Remove deployed files and clean up resources for specified projects"
tool: "writ"
command: "decommission"
parent: "writ"
generated: "2026-02-21T09:20:28Z"
version: "350fe29"
---

# writ decommission

Remove deployed files and clean up resources for specified projects

## Usage

```
writ decommission [flags] <project>...
```

## Description

Remove deployed files and clean up resources for specified projects.

Symlinks are removed directly. Copied files (templates, secrets) are removed
only after drift detection confirms they haven't been locally modified.

Safety behavior depends on state file:
  Signed state    → Safe: full drift detection before removal
  Unsigned state  → Warning, requires --force to proceed
  No state        → Error: cannot safely remove without state

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Skip confirmation and proceed with unsigned state |
| `--prune` | `false` | Remove empty parent directories after file removal |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
writ decommission noblefactor              # Remove project files
writ decommission all noblefactor          # Remove multiple projects
writ decommission --prune noblefactor      # Also remove empty parent directories
writ decommission --force noblefactor      # Skip confirmation prompts
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
