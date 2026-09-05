---
title: "lore deploy"
description: "Deploy packages to the local system"
tool: "lore"
command: "deploy"
parent: "lore"
generated: "2026-09-05T00:22:24Z"
version: "15ac850"
---

# lore deploy

Deploy packages to the local system

## Usage

```
lore deploy [flags] <package>... | @<manifest>
```

## Description

Deploy packages to the local system.

This is the primary command for installing software. Lore resolves how to
install each package on your platform, then executes the four-phase pipeline:
prepare → install → provision → verify.

Packages can be specified directly or via manifest files (prefixed with @).

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--force` | `false` | Proceed with LOW CONFIDENCE items without prompting |
| `--known-only` | `false` | Skip LOW CONFIDENCE items |
| `--parallel` | `1` | Install n packages concurrently |
| `--with` | `[]` | Enable feature (can be repeated) |

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
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
lore deploy kubectl gh docker
lore deploy docker --with rootless
lore deploy @team.manifest
lore deploy @base.manifest @team.manifest neovim --with lsp
```

## Parent Command

| Command | Description |
|---------|-------------|
| [lore](/cli/lore/) | The tribal knowledge package deployer |
