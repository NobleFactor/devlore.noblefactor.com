---
title: "lore manifest validate"
description: "Validate a package manifest"
tool: "lore"
command: "validate"
parent: "lore manifest"
generated: "2026-01-27T01:55:56Z"
version: "283c27e"
---

# lore manifest validate

Validate a package manifest

## Usage

```
lore manifest validate <name>
```

## Description

Validate a package manifest against the schema.

Checks:
  - Schema validity (lifecycle.yaml conforms to schema)
  - Phase files exist (referenced .star files present)
  - Starlark syntax (files parse without errors)
  - Contract compliance (each phase has main() function)
  - Feature consistency (features match phase conditionals)
  - Platform coverage (conditionals cover declared platforms)

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
| [lore manifest](/cli/lore/manifest/) | Create and manage package lifecycle manifests |
