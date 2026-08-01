---
title: "writ adopt"
description: "Move files from target location into a project and create symlinks"
tool: "writ"
command: "adopt"
parent: "writ"
generated: "2026-08-01T03:42:57Z"
version: "0a72d58"
---

# writ adopt

Move files from target location into a project and create symlinks

## Usage

```
writ adopt [flags] <item>...
```

## Description

Move files from target location into a project and create symlinks.

Use this to bring existing configuration files under version control.
Files are moved to <layer>/<scope>/<project>/ preserving their relative path,
then symlinked back to the original location.

Scope (Home or System) is inferred from the item's location:
  - Items under $HOME are adopted into Home/
  - Items under / (Unix) or %SystemRoot% (Windows) are adopted into System/

Directories are adopted recursively—all files within are moved and symlinked.
Existing symlinks within directories are skipped.

Each scope's adoptions run as one execution graph: a failed adoption fails the
run and completed adoptions roll back (moves reversed, links removed).

With --from-receipt, reads a lore receipt and adopts packages-manifest.yaml and
config files into the environment repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--from-receipt` | `false` | Adopt packages-manifest.yaml and config from lore receipt |
| `--layer` | `personal` | Layer to adopt into: personal, team, or base |
| `--project` | `""` | Origin name within the layer (required) |

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
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
# Adopt a single file into personal layer
writ adopt --project noblefactor ~/.zshrc

# Adopt multiple files
writ adopt --project noblefactor ~/.zshrc ~/.bashrc ~/.config/nvim/init.lua

# Adopt an entire directory recursively
writ adopt --project noblefactor ~/.config/nvim

# Adopt into team layer
writ adopt --layer team --project shared ~/.editorconfig

# Adopt system file (inferred as System scope)
writ adopt --project noblefactor /etc/myapp/config.yaml

# Adopt from lore receipt
writ adopt --from-receipt
writ adopt --from-receipt ~/.local/state/lore/receipts/2026-01-19T14:32:07.yaml
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
