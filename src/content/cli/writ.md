---
title: "writ"
description: "Environment manager with platform-aware symlinks"
tool: "writ"
command: "writ"
parent: ""
generated: "2026-01-24T04:27:42Z"
version: "621aacf"
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
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ add](/cli/writ/add/) | Deploy projects by creating symlinks in the target location |
| [writ adopt](/cli/writ/adopt/) | Move files from target location into a project and create symlinks |
| [writ config](/cli/writ/config/) | Get and set configuration options |
| [writ configure](/cli/writ/configure/) | Discover system info and configure template variables |
| [writ init](/cli/writ/init/) | Initialize a new dotfiles repository in the current directory |
| [writ inspect](/cli/writ/inspect/) | Show detailed information about a project or deployed file |
| [writ list](/cli/writ/list/) | List available projects for the current target |
| [writ receipt](/cli/writ/receipt/) | View and manage deployment receipts |
| [writ remove](/cli/writ/remove/) | Remove deployed files for the specified projects |
| [writ repo](/cli/writ/repo/) | Manage environment repositories |
| [writ secrets](/cli/writ/secrets/) | Manage age-encrypted secrets |
| [writ self-install](/cli/writ/self-install/) | Complete installation to specified directory |
| [writ status](/cli/writ/status/) | Show symlink status for projects |
| [writ upgrade](/cli/writ/upgrade/) | Regenerate copied files (templates, secrets) from current sources |
