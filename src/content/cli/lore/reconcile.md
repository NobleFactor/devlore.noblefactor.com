---
title: "lore reconcile"
description: "Compare deployment receipts against actual system state"
tool: "lore"
command: "reconcile"
parent: "lore"
generated: "2026-01-25T18:36:01Z"
version: "6edf4ea"
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
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
