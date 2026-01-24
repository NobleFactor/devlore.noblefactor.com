---
title: "writ status"
description: "Show symlink status for projects"
tool: "writ"
command: "status"
parent: "writ"
generated: "2026-01-24T22:24:22Z"
version: "5bdf749"
---

# writ status

Show symlink status for projects

## Usage

```
writ status [<project>...] [flags]
```

## Description

Show symlink status for projects.

Without arguments, scans target directory for writ-managed symlinks and uses
the receipt to check copied files (templates, secrets).

With project arguments, builds a fresh tree and checks status against expected state.

Status indicators:
  ✓ Linked   — Symlink exists and points to project
  ✓ Copied   — File was copied (template/secret) and exists
  ⚠ Conflict — File exists but isn't our symlink
  ✗ Missing  — Project file has no corresponding symlink
  ? Orphan   — Symlink points to nonexistent file

With --drift (requires receipt):
  ↑ Stale    — Source changed since deployment, redeploy needed
  M Modified — Target file was edited locally
  ! Conflict — Both source and target changed

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--drift` | `false` | Check for drift in copied files using receipt checksums |
| `--json` | `false` | Output as JSON |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--interactive` | `false` | Force interactive mode (prompts for conflicts) |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
writ status                    # Scan for deployed files
writ status noblefactor        # Check specific project
writ status --drift            # Check for drift in copied files
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
