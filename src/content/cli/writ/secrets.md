---
title: "writ secrets"
description: "Manage age-encrypted secrets"
tool: "writ"
command: "secrets"
parent: "writ"
generated: "2026-01-29T01:15:44Z"
version: "bbabd29"
---

# writ secrets

Manage age-encrypted secrets

## Usage

```
writ secrets <subcommand>
```

## Description

Manage age-encrypted secrets in your environment repository.

Secrets are encrypted with age using recipients listed in .age-recipients.
Your identity (private key) is resolved from SSH keys or config.

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

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ secrets decrypt](/cli/writ/secrets/decrypt/) | Decrypt an age-encrypted file |
| [writ secrets edit](/cli/writ/secrets/edit/) | Edit an encrypted file in place |
| [writ secrets encrypt](/cli/writ/secrets/encrypt/) | Encrypt a file with age |
| [writ secrets rekey](/cli/writ/secrets/rekey/) | Re-encrypt all .age files to current .age-recipients |
