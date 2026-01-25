---
title: "writ repo init"
description: "Initialize or clone an environment repository"
tool: "writ"
command: "init"
parent: "writ repo"
generated: "2026-01-25T18:36:01Z"
version: "6edf4ea"
---

# writ repo init

Initialize or clone an environment repository

## Usage

```
writ repo init [<git-url>] [flags]
```

## Description

Initialize a new environment repository or clone from a remote URL.

Without arguments:
  Creates a new repository in XDG_DATA_HOME/devlore/repos/<layer>/
  with the standard writ directory structure and initializes git.

With a git URL:
  Clones the repository to XDG_DATA_HOME/devlore/repos/<layer>/
  using a simple 'git clone'. For advanced clone options (--branch,
  --depth, authentication), clone manually then use 'writ repo add'.

The repository is registered in ~/.config/devlore/config.yaml.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Overwrite existing structure or re-clone |
| `--layer` | `personal` | Layer for the repository: personal or team |

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
# Create new personal repository
writ repo init --layer=personal

# Clone existing repository as personal
writ repo init --layer=personal git@github.com:me/dotfiles.git

# Clone team repository
writ repo init --layer=team git@github.com:company/team-configs.git

# For advanced git options, clone first then register:
git clone --branch main --depth 1 git@github.com:co/repo.git ~/repo
writ repo add --layer=team ~/repo
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ repo](/cli/writ/repo/) | Manage environment repositories |
