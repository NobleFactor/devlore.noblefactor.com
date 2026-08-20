---
title: "lore reconcile"
description: "Compare deployment receipts against actual system state"
tool: "lore"
command: "reconcile"
parent: "lore"
generated: "2026-08-20T00:07:53Z"
version: "0a96a5e"
---

# lore reconcile

Compare deployment receipts against actual system state

## Usage

```
lore reconcile @<receipt>
```

## Description

Compare expected state (from receipt) against actual system state and report drift.

Use this to verify that your system matches what was deployed, detect
configuration changes, or audit compliance.

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

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
