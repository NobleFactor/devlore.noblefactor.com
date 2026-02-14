---
title: "writ inspect"
description: "Show detailed information about a project or deployed file"
tool: "writ"
command: "inspect"
parent: "writ"
generated: "2026-02-14T17:43:00Z"
version: "82e6363"
---

# writ inspect

Show detailed information about a project or deployed file

## Usage

```
writ inspect <project|file> [flags]
```

## Description

Show detailed information about a project or deployed file.

For a project: shows source location, deployed files, segments, and deploystate.
For a file path: shows source, target, operations, checksums, and drift status.

Output is JSON by default for scripting. Use --format for alternatives.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--format` | `json` | Output format: json, table, yaml, or a Go template (e.g. '{{.Name}}\t{{.Version}}') |

## Global Options

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

## Examples

```bash
writ inspect noblefactor
writ inspect ~/.zshrc
writ inspect noblefactor --format yaml
writ inspect noblefactor --format '{{.Name}}\t{{.Source}}'
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
