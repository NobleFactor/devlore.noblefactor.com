---
title: "writ repo"
description: "Manage environment repositories"
tool: "writ"
command: "repo"
parent: "writ"
generated: "2026-01-27T01:55:56Z"
version: "283c27e"
---

# writ repo

Manage environment repositories

## Usage

```
writ repo <subcommand>
```

## Description

Manage environment repositories for writ.

Writ supports layered repositories with precedence: base → team → personal.
When files conflict, the higher-precedence layer wins (personal > team > base).

Repositories can be:
  - Initialized fresh (writ repo init)
  - Adopted from existing local paths (writ repo add)
  - Cloned from remote URLs (writ repo init <url>)

Repository paths are stored in ~/.config/devlore/config.yaml under writ.repos.

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

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |

## Child Commands

| Command | Description |
|---------|-------------|
| [writ repo add](/cli/writ/repo/add/) | Register an existing local repository |
| [writ repo init](/cli/writ/repo/init/) | Initialize or clone an environment repository |
| [writ repo list](/cli/writ/repo/list/) | List configured repositories |
| [writ repo remove](/cli/writ/repo/remove/) | Unregister a repository |
