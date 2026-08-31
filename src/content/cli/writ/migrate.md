---
title: "writ migrate"
description: "Migrate an existing environment to a writ layer"
tool: "writ"
command: "migrate"
parent: "writ"
generated: "2026-08-31T01:33:00Z"
version: "18dedc6"
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
| `--format` | `json` | Migration-plan format: json (default), yaml, text (for --dry-run) |
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
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--jq` | `""` | jq expression applied after --filter; see github.com/itchyny/gojq |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--output, -o` | `json` | Output rendering: json, yaml, table, csv, value (raw, pairs with --jq), template=BODY, or none |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
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
