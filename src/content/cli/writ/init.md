---
title: "writ init"
description: "Initialize a new environment with AI-assisted recommendations"
tool: "writ"
command: "init"
parent: "writ"
generated: "2026-01-27T06:49:05Z"
version: "27d01bb"
---

# writ init

Initialize a new environment with AI-assisted recommendations

## Usage

```
writ init [flags]
```

## Description

Initialize a new writ environment with platform detection and AI-assisted recommendations.

Writ detects your platform, shell, and available package managers, then provides
personalized recommendations for:
  - Repository structure and layer selection
  - Essential and recommended packages
  - Initial project organization

If an existing dotfile manager is detected (chezmoi, yadm, stow, etc.),
writ recommends using 'writ migrate' instead to preserve your configuration.

By default, AI-assisted analysis provides detailed recommendations. Use --no-ai
for basic structural suggestions only.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--focus` | `""` | Development focus: web, backend, devops, data, mobile |
| `--format` | `text` | Output format: text, yaml, json |
| `--layer` | `""` | Repository layer preference: personal, team, or base |
| `--no-ai` | `false` | Skip AI-assisted analysis (basic mode) |

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
writ init
writ init --layer=personal
writ init --focus=devops
writ init --format yaml
writ init --no-ai
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
