---
title: "writ repo"
description: "Manage layer repository registrations"
tool: "writ"
command: "repo"
parent: "writ"
generated: "2026-08-21T22:26:32Z"
version: "70d540c"
---

# writ repo

Manage layer repository registrations

## Usage

```
writ repo [command]
```

## Description

Manage layer repository registrations.

A layer (base, team, or personal) is registered by a symlink in the writ layers
directory (XDG_DATA_HOME/devlore/writ/layers) pointing at the repository. This is
packaging, not configuration: registrations never appear in config.yaml.

With no subcommand, repo lists the registrations.

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
writ repo add personal ~/Workspace/Personal
writ repo                       # list registrations
writ repo remove team
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ repo add](/cli/writ/repo/add/) | Register a repository as a layer |
| [writ repo list](/cli/writ/repo/list/) | List layer registrations |
| [writ repo remove](/cli/writ/repo/remove/) | Unregister a layer (does not delete files) |
