---
title: "lore inspect"
description: "Show detailed information about a package"
tool: "lore"
command: "inspect"
parent: "lore"
generated: "2026-01-27T04:37:37Z"
version: "3a8d894"
---

# lore inspect

Show detailed information about a package

## Usage

```
lore inspect <package> [flags]
```

## Description

Show detailed information about a package.

Displays the resolved lifecycle manifest, platform support, features,
dependencies, and deployment history for a package.

Output is JSON by default for scripting. Use --format for alternatives.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--format` | `json` | Output format: json, table, yaml, or a Go template (e.g. '{{.Name}}\t{{.Version}}') |

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

## Examples

```bash
lore inspect docker
lore inspect kubectl --format yaml
lore inspect docker --format '{{.Name}}\t{{.Version}}'
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
