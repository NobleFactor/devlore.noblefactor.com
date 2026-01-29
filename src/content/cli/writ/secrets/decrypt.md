---
title: "writ secrets decrypt"
description: "Decrypt an age-encrypted file"
tool: "writ"
command: "decrypt"
parent: "writ secrets"
generated: "2026-01-29T01:15:44Z"
version: "bbabd29"
---

# writ secrets decrypt

Decrypt an age-encrypted file

## Usage

```
writ secrets decrypt <file.age> [flags]
```

## Description

Decrypt an age-encrypted file using your identity.

By default outputs to stdout. Use -o to write to a file.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--output, -o` | `""` | Output file path (default: stdout) |

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
