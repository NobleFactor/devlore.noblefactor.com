---
title: "writ secrets rekey"
description: "Re-encrypt all .age files to current .age-recipients"
tool: "writ"
command: "rekey"
parent: "writ secrets"
generated: "2026-01-25T02:21:49Z"
version: "47323ab"
---

# writ secrets rekey

Re-encrypt all .age files to current .age-recipients

## Usage

```
writ secrets rekey
```

## Description

Re-encrypt all .age files to the current .age-recipients list.

Use this when:
  - Adding a new machine (new recipient needs access)
  - Revoking access (removed recipient should no longer decrypt)
  - Rotating keys

The operation is idempotent and can be safely re-run.

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ secrets](/cli/writ/secrets/) | Manage age-encrypted secrets |
