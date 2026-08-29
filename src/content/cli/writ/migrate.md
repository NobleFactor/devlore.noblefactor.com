---
title: "writ migrate"
description: "Migrate an existing environment to a writ layer"
tool: "writ"
command: "migrate"
parent: "writ"
generated: "2026-08-29T00:33:02Z"
version: "c7006e7"
---

# writ migrate

Migrate an existing environment to a writ layer

## Usage

```
writ migrate [flags] <source-directory>
```

## Description

Migrate an existing environment repository to a writ layer.

Writ auto-detects the source system (Tuckr, Stow, chezmoi, yadm, bare git,
or script-based setups) and uses AI to analyze and restructure content to
writ conventions (Home/, System/, projects).

AI-assisted migration provides:
  - Intelligent file classification (configs, scripts, secrets)
  - Content-aware secret detection (unencrypted credentials, API keys)
  - PkgPath manifest generation from setup scripts
  - Recommendations (e.g., migrating from git-crypt to SOPS)
  - Structure validation for already writ-compatible layouts

After analysis and any restructuring, the source is registered as a layer:
  --link (default): Layer directory becomes a symlink to source location
  --move: Content is moved into the layer directory, source is deleted

Use --dry-run to preview without making changes.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--format` | `json` | Promise format: json (default), yaml, text (for --dry-run) |
| `--layer` | `personal` | Target layer: personal, team, or base |
| `--link` | `true` | Create symlink from layer to source (default) |
| `--move` | `false` | Move content to layer directory, delete source |
| `--non-interactive` | `false` | Migrate without interactive prompts |
| `--script-budget` | `0` | Max bytes of script content to include (default: 500KB, use lower values for smaller context) |
| `--system` | `""` | Override auto-detection with a specific source system |
| `--tree-depth` | `0` | Max directory depth to scan (default: 10, use lower values for smaller context) |

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
# Migrate and link to source location (default)
writ migrate ~/my-environment

# Preview without making changes
writ migrate --dry-run ~/my-environment

# Move content to layer directory instead of linking
writ migrate --move ~/my-environment

# Migrate as team layer instead of personal
writ migrate --layer team ~/team-environment
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
