---
title: "lore audit"
description: "View security audit log entries"
tool: "lore"
command: "audit"
parent: "lore"
generated: "2026-03-06T17:34:26Z"
version: "a5c0309"
---

# lore audit

View security audit log entries

## Usage

```
lore audit [flags]
```

## Description

View security audit log entries.

The audit log records security-sensitive actions:
  - pmm.fetch: Package fetch with signature status
  - pmm.verify: Signature verification results
  - privilege.request: Sudo/elevation requests
  - binary.download: Upstream binary downloads with hash verification
  - phase.execute: Pipeline phase execution

Log location: ~/.local/share/lore/audit.log

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--event` | `""` | Filter by event type (pmm.fetch, pmm.verify, privilege, binary, phase) |
| `--package` | `""` | Filter by package name |
| `--since` | `""` | Show entries since duration (e.g., 7d, 24h) |

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
lore audit
lore audit --since 7d
lore audit --package kubectl
lore audit --event privilege
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
