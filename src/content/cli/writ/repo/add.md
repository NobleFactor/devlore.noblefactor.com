---
title: "writ repo add"
description: "Register a repository as a layer"
tool: "writ"
command: "add"
parent: "writ repo"
generated: "2026-09-08T16:29:14Z"
version: "f1a1f4b"
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
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--jq` | `""` | jq expression applied after --filter; see github.com/itchyny/gojq |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for yaml to read a large result, table or list to scan one, csv or value to feed another program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, alphabetically, each closing with what it is for:<br>csv            quoted and parseable; when a spreadsheet or a data tool reads it<br>json           the native format, nothing elided; when a script consumes it<br>list           one field per line; when a record is wide, or records differ<br>none           nothing at all; when you want the exit code, not the output<br>table          aligned columns, one row per record; when scanning many rows<br>template=BODY  a Go template; when you need a shape none of the others give<br>value          raw, tab-separated, no header; when cut or awk consumes it<br>yaml           the same content as json; when reading a large result by eye |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
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
