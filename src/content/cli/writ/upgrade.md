---
title: "writ upgrade"
description: "Regenerate copied files (templates, secrets) from current sources"
tool: "writ"
command: "upgrade"
parent: "writ"
generated: "2026-08-17T05:41:36Z"
version: "d6abacb"
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

The copied inventory comes from the store readback; source templates/secrets are
re-processed through the same planned chains deploy uses.

Each copied file is classified first: a missing target regenerates freely; an
up-to-date target is left alone; a differing target skips with a warning and
regenerates only under --force — until recorded content identity lands (step 48),
source-changed cannot be distinguished from target-modified. Encrypted (sops)
entries cannot be compared without decrypting and follow the same --force rule.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Overwrite locally modified files without prompting |

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
writ upgrade                     # Regenerate all copied files
writ upgrade noblefactor         # Regenerate for specific project
writ upgrade --force             # Overwrite locally modified files
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
