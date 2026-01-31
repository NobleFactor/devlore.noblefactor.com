---
title: "writ reconcile"
description: "Full-stack drift detection and repair"
tool: "writ"
command: "reconcile"
parent: "writ"
generated: "2026-01-31T08:42:58Z"
version: "9a264d3"
---

# writ reconcile

Full-stack drift detection and repair

## Usage

```
writ reconcile [<project>...] [flags]
```

## Description

Full-stack drift detection and repair.

Checks symlinks, copied files (templates/secrets), and optionally installed
packages against the state file. Can automatically repair detected issues.

Without arguments, scans target directory for writ-managed files.
With project arguments, builds a fresh tree and checks against expected deploystate.

Status indicators:
  ✓ Linked   — Symlink exists and points to project
  ✓ Copied   — File was copied (template/secret) and exists
  ⚠ Conflict — File exists but isn't our symlink
  ✗ Missing  — Project file has no corresponding symlink
  ? Orphan   — Symlink points to nonexistent file
  ↑ Stale    — Source changed since deployment, redeploy needed
  M Modified — Target file was edited locally
  ! Conflict — Both source and target changed

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--drift` | `false` | Check for drift in copied files (default: true) |
| `--fix` | `false` | Automatically repair detected issues |
| `--json` | `false` | Output as JSON |

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
writ reconcile                    # Scan for deployed files
writ reconcile noblefactor        # Check specific project
writ reconcile --fix              # Automatically repair issues
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
