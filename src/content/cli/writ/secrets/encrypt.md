---
title: "writ secrets encrypt"
description: "Encrypt a file with age"
tool: "writ"
command: "encrypt"
parent: "writ secrets"
generated: "2026-01-29T01:15:44Z"
version: "bbabd29"
---

# writ secrets encrypt

Encrypt a file with age

## Usage

```
writ secrets encrypt <file> [flags]
```

## Description

Encrypt a file using recipients from .age-recipients.

The encrypted file is written to <file>.age and the original is removed.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--keep` | `false` | Keep the original file after encryption |

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
| [writ secrets](/cli/writ/secrets/) | Manage age-encrypted secrets |
