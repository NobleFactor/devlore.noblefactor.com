---
title: "writ deploy"
description: "Deploy projects by creating symlinks in the target location"
tool: "writ"
command: "deploy"
parent: "writ"
generated: "2026-02-22T21:09:19Z"
version: "f996831"
---

# writ deploy

Deploy projects by creating symlinks in the target location

## Usage

```
writ deploy [flags] <project>...
```

## Description

Deploy projects by creating symlinks in the target location.

Files inside each project directory are symlinked to the target (default: ~).
Platform-specific variants (e.g., project.Darwin) are selected automatically.
If a project contains packages-manifest.yaml, the manifest is resolved through
the lore Planner, adding package installation nodes to the execution graph.

Conflict handling (--conflict):
  stop      Stop on first conflict (default)
  backup    Move conflicting files to timestamped backups
  overwrite Remove conflicting files without backup
  skip      Skip conflicting files and continue

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--conflict, -c` | `stop` | Conflict resolution: stop, backup, overwrite, skip |
| `--segment, -s` | `[]` | Set custom segment value (KEY=value, repeatable) |

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
writ deploy noblefactor
writ deploy all noblefactor thenobles
writ deploy --conflict=backup noblefactor
writ deploy --conflict=overwrite noblefactor
writ deploy -s ROLE=desktop noblefactor
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
