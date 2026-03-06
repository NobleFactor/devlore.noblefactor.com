---
title: "writ upgrade"
description: "Regenerate copied files (templates, secrets) from current sources"
tool: "writ"
command: "upgrade"
parent: "writ"
generated: "2026-03-06T00:31:53Z"
version: "1c02277"
---

# writ upgrade

Regenerate copied files (templates, secrets) from current sources

## Usage

```
writ upgrade [<project>...] [flags]
```

## Description

Regenerate copied files (templates, secrets) from current sources.

Symlinks are not affected. Only files that were copied during deployment
(templates expanded, secrets decrypted) are regenerated.

Reads from the state file to identify copied files. Source templates/secrets
are re-processed and written to their target locations.

Drift handling:
  Source changed only   → Regenerate
  Target modified only  → Skip, warn (use --force to overwrite)
  Both changed          → Skip, warn (use --force to overwrite)

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Overwrite locally modified files without prompting |

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
writ upgrade                     # Regenerate all copied files
writ upgrade noblefactor         # Regenerate for specific project
writ upgrade --force             # Overwrite locally modified files
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
