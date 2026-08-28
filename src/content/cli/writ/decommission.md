---
title: "writ decommission"
description: "Remove deployed files and clean up resources for specified projects"
tool: "writ"
command: "decommission"
parent: "writ"
generated: "2026-08-28T14:41:23Z"
version: "d23bce2"
---

# writ decommission

Remove deployed files and clean up resources for specified projects

## Usage

```
writ decommission [flags] <project>...
```

## Description

Remove deployed files and clean up resources for specified projects.

The deployed inventory comes from the store readback (never a directory scan), so
decommission removes exactly what writ's runs put into effect. Symlinked entries are
unlinked — a target the user replaced with a real file is refused, not deleted.
Copied files are removed with recovery-site archival (restorable on unwind).

Signature-gated safety (refusing unsigned state) arrives with graph signing (step 46).

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--prune` | `false` | Remove empty parent directories after file removal |

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
