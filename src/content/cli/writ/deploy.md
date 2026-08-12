---
title: "writ deploy"
description: "Deploy projects by creating symlinks in the target location"
tool: "writ"
command: "deploy"
parent: "writ"
generated: "2026-08-12T00:59:32Z"
version: "020c5b8"
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

Conflict handling (--conflict) — occupied targets (phase-8 step 49):
  stop     (default) Refuse foreign or locally-modified occupants, listing them;
           writ's own unmodified outputs are recognized and replaced, so
           redeploys flow without the flag
  skip     Leave every occupied target untouched and continue
  replace  Archive each occupant to the recovery site and overwrite (restorable)

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--allow-dirty` | `false` | Allow planning against layers with uncommitted changes |
| `--conflict, -c` | `stop` | Occupied-target policy: stop, skip, replace |
| `--segment, -s` | `[]` | Set custom segment value (KEY=value, repeatable) |

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
