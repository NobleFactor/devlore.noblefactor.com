---
title: "lore manifest test"
description: "Dry-run a package manifest on current system"
tool: "lore"
command: "test"
parent: "lore manifest"
generated: "2026-08-15T03:43:46Z"
version: "4542355"
---

# lore manifest test

Dry-run a package manifest on current system

## Usage

```
lore manifest test <name> [flags]
```

## Description

Test a package manifest without modifying the system.

Shows what each phase would do. Use --with to test specific features.
Use --set to test with specific settings. Use --debug for verbose output.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--break` | `""` | Break at specific phase (prepare, install, provision, verify) |
| `--debug` | `false` | Show debug-level messages |
| `--set` | `[]` | Set setting value (key=value) |
| `--with` | `[]` | Enable feature for testing |

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
lore manifest test mypackage
lore manifest test mypackage --with completions --with debug-symbols
lore manifest test mypackage --set shell=zsh
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore manifest](/cli/lore/manifest/) | Create and manage package lifecycle manifests |
