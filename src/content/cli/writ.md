---
title: "writ"
description: "Environment manager with platform-aware symlinks"
tool: "writ"
command: "writ"
parent: ""
generated: "2026-02-16T19:09:41Z"
version: "f9f6d0d"
---

# writ

Environment manager with platform-aware symlinks

## Usage

```
writ [flags]
```

## Description

Writ orchestrates your portable environment—configuration, scripts, utilities,
templates, and software manifests. Lore is a component that writ delegates to
for software installation.

One command deploys your environment. Platform-aware projects adapt
automatically. Templates handle machine-specific values.

Writ exists because environment management shouldn't require manual symlink
creation, platform-specific scripts, or secret leakage into git.
Declare your environment once — writ deploys it everywhere you work.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ adopt](/cli/writ/adopt/) | Move files from target location into a project and create symlinks |
| [writ config](/cli/writ/config/) | Get and set configuration options |
| [writ decommission](/cli/writ/decommission/) | Remove deployed files and clean up resources for specified projects |
| [writ deploy](/cli/writ/deploy/) | Deploy projects by creating symlinks in the target location |
| [writ inspect](/cli/writ/inspect/) | Show detailed information about a project or deployed file |
| [writ list](/cli/writ/list/) | List available projects for the current target |
| [writ migrate](/cli/writ/migrate/) | Migrate an existing environment to a writ layer |
| [writ receipt](/cli/writ/receipt/) | View and manage deployment receipts |
| [writ reconcile](/cli/writ/reconcile/) | Full-stack drift detection and repair |
| [writ self-install](/cli/writ/self-install/) | Complete installation to specified directory |
| [writ upgrade](/cli/writ/upgrade/) | Regenerate copied files (templates, secrets) from current sources |
