---
title: "writ secret"
description: "SOPS secrets for layer repositories"
tool: "writ"
command: "secret"
parent: "writ"
generated: "2026-08-20T23:53:37Z"
version: "5cd501b"
---

# writ secret

SOPS secrets for layer repositories

## Usage

```
writ secret
```

## Description

SOPS secrets for layer repositories.

The family (docs/plans/writ-secret-*.md): encrypt (authoring) is implemented;
init (the BYOK ceremony), decrypt, rekey, list, and recover are chartered.
Lifecycle commands operate only within registered layers; deploy-time
decryption is writ deploy's native behavior (<name>.sops deploys as <name>).

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

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ secret encrypt](/cli/writ/secret/encrypt/) | Encrypt files to .sops siblings per the governing .sops.yaml |
