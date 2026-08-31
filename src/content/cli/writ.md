---
title: "writ"
description: "Environment manager with platform-aware symlinks"
tool: "writ"
command: "writ"
parent: ""
generated: "2026-08-31T01:33:00Z"
version: "18dedc6"
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

## Child Commands

| Command | Description |
|---------|-------------|
| [writ adopt](/cli/writ/adopt/) | Move files from target location into a project and create symlinks |
| [writ config](/cli/writ/config/) | Get and set configuration options |
| [writ decommission](/cli/writ/decommission/) | Remove deployed files and clean up resources for specified projects |
| [writ deploy](/cli/writ/deploy/) | Deploy projects by creating symlinks in the target location |
| [writ migrate](/cli/writ/migrate/) | Migrate an existing environment to a writ layer |
| [writ repo](/cli/writ/repo/) | Manage layer repository registrations |
| [writ secret](/cli/writ/secret/) | SOPS secrets for layer repositories |
| [writ self](/cli/writ/self/) | Self-management commands |
| [writ status](/cli/writ/status/) | Report deployed state: what should be present, from where, and what's missing or different |
| [writ upgrade](/cli/writ/upgrade/) | Regenerate copied files (templates, secrets) from current sources |
| [writ verify](/cli/writ/verify/) | Verify the publisher signatures of graph and trace documents |
