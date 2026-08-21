---
title: "writ repo add"
description: "Register a repository as a layer"
tool: "writ"
command: "add"
parent: "writ repo"
generated: "2026-08-21T22:26:32Z"
version: "70d540c"
---

# writ repo add

Register a repository as a layer

## Usage

```
writ repo add <layer> <working-tree-root>|<repository-url> [<working-tree-root>] [flags]
```

## Description

Register a repository as a layer.

The location is a local working-tree-root, or a repository URL — which triggers a
git clone (git-clone's own grammar: the optional trailing working-tree-root is the
clone destination, defaulting to the writ-owned home under
XDG_DATA_HOME/devlore/writ/repos). After placement the repository is entirely
yours: writ performs no hidden git operations, ever.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--branch` | `""` | Branch to clone (repository-url form only) |

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
writ repo add team git@github.com:acme/team-env.git
writ repo add personal git@github.com:me/personal.git ~/Workspace/Personal
writ repo add personal git@github.com:me/personal.git --branch devlore-cli/writ-layer
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ repo](/cli/writ/repo/) | Manage layer repository registrations |
