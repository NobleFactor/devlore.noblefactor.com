---
title: "writ migrate"
description: "Analyze and migrate an existing environment repository to writ conventions"
tool: "writ"
command: "migrate"
parent: "writ"
generated: "2026-01-27T02:14:21Z"
version: "d67154f"
---

# writ migrate

Analyze and migrate an existing environment repository to writ conventions

## Usage

```
writ migrate [flags] <source-root>
```

## Description

Analyze an existing environment repository and produce a migration plan.

Writ auto-detects the source system (Tuckr, Stow, chezmoi, yadm, bare git,
or script-based setups using <project>-<Platform> directories) and generates
a plan showing what would change.

By default, AI-assisted analysis provides file classification, secret detection,
and contextual recommendations. Use --no-ai for basic structural analysis only.

Use --execute to perform the migration (directory renames from dash to dot
convention). Supported output formats: text (default), yaml, json.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--execute` | `false` | Perform the migration (rename directories) |
| `--format` | `text` | Output format: text, yaml, json |
| `--no-ai` | `false` | Skip AI-assisted analysis (basic mode) |
| `--system` | `""` | Override auto-detection with a specific source system |

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

## Examples

```bash
writ migrate ~/my-env/Configs
writ migrate ~/my-env/Configs --format yaml
writ migrate ~/my-env/Configs --no-ai
writ migrate ~/my-env/Configs --execute
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
