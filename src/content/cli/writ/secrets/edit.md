---
title: "writ secrets edit"
description: "Edit an encrypted file in place"
tool: "writ"
command: "edit"
parent: "writ secrets"
generated: "2026-01-27T21:01:20Z"
version: "048c184"
---

# writ secrets edit

Edit an encrypted file in place

## Usage

```
writ secrets edit <file.age>
```

## Description

Decrypt a file, open in $EDITOR, re-encrypt on save.

The file is decrypted to a temporary location, opened in your editor,
and re-encrypted when the editor exits.

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
