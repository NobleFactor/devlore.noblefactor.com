---
title: "writ adopt"
slug: "writ/adopt"
description: "Move files from target location into a project and create symlinks"
tool: "writ"
command: "adopt"
parent: "writ"
generated: "2026-10-21T23:12:20Z"
version: "ca6328a"
---

# writ adopt

Move files from target location into a project and create symlinks

## Usage

```
writ adopt [flags] <item>...
```

## Description

Move files from target location into a project and create symlinks.

Use this to bring existing configuration files under version control.
Files are moved to <layer>/<scope>/<project>/ preserving their relative path,
then symlinked back to the original location.

Scope (Home or System) is inferred from the item's location:
  - Items under $HOME are adopted into Home/
  - Items under / (Unix) or %SystemRoot% (Windows) are adopted into System/

Directories are adopted recursively—all files within are moved and symlinked.
Existing symlinks within directories are skipped.

Each scope's adoptions run as one execution graph: a failed adoption fails the
run and completed adoptions roll back (moves reversed, links removed).

With --from-receipt, reads a lore receipt and adopts packages-manifest.yaml and
config files into the environment repository.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--from-receipt` | `false` | Adopt packages-manifest.yaml and config from lore receipt |
| `--layer` | `personal` | Layer to adopt into: personal, team, or base |
| `--platform` | `""` | Platform suffix the adopted files carry, as a directory name reads it: one word of this machine's chain, then its architecture, then declared segment values (Unix, Linux, Debian, Ubuntu, Debian.arm64, ...); it must name this machine. Absent, the platform-neutral project directory |
| `--project` | `""` | Origin name within the layer (required) |
| `--segment, -s` | `[]` | Set a segment's value, NAME=value (repeatable); an extra must be declared in writ.segments |

## Global Options

| Option | Default | Description |
|--------|---------|-------------|
| `--config` | `""` | Config file (default: ~/.config/devlore/config.yaml) |
| `--dry-run` | `false` | Show what would be done without making changes |
| `--filter` | `[]` | Filter expression: field=value (repeatable, AND logic) |
| `--jq` | `""` | jq expression applied after --filter; see github.com/itchyny/gojq |
| `--model` | `""` | Model name (e.g., claude-sonnet-4-20250514, gpt-4o) |
| `--model-api-key` | `""` | Model provider API key |
| `--model-endpoint` | `""` | Model provider endpoint URL |
| `--model-provider` | `""` | Model provider: anthropic, openai, azure-openai, ollama, github |
| `--no-pager, -P` | `false` | Never page the result, whatever its rendering and wherever it is going |
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for terminal to read a report and markdown to paste one, table or list to scan a result, yaml to read a large one, csv or json to feed a program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, by the reader each serves:<br><br>Composed -- you chose the shape, in the filter stage<br>  template=BODY<br>    a Go template; when you need a shape none of the others give<br>  value<br>    raw, tab-separated, no header; when cut or awk consumes it<br><br>Document -- a report, rather than data<br>  markdown<br>    the document as markdown; when GitHub reads it, or you paste it<br>  terminal<br>    the document rendered, with bold and italic; when you read it<br><br>Nothing<br>  none<br>    nothing at all; when you want the exit code, not the output<br><br>Records -- laid out for a person<br>  list<br>    one field per line; when a record is wide, or records differ<br>  table<br>    aligned columns, one row per record; when scanning many rows<br><br>Serialized -- lossless; a library reads it back<br>  csv<br>    quoted and parseable; when a spreadsheet or a data tool reads it<br>  json<br>    the native format, nothing elided; when a script consumes it<br>  yaml<br>    the same content as json, in a shape that reads by eye |
| `--paginate, -p` | `false` | Page the result whenever stdout is a terminal, whatever its rendering |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
# Adopt a single file into personal layer
writ adopt --project noblefactor ~/.zshrc

# Adopt multiple files
writ adopt --project noblefactor ~/.zshrc ~/.bashrc ~/.config/nvim/init.lua

# Adopt an entire directory recursively
writ adopt --project noblefactor ~/.config/nvim

# Adopt into team layer
writ adopt --layer team --project shared ~/.editorconfig
# Adopt a Debian file: it lands under <project>.Debian and deploys on Debian and every
# distribution descended from it, Ubuntu among them
writ adopt --project noblefactor --platform Debian ~/.config/apt.conf

# Adopt system file (inferred as System scope)
writ adopt --project noblefactor /etc/myapp/config.yaml

# Adopt from lore receipt
writ adopt --from-receipt
writ adopt --from-receipt ~/.local/state/lore/receipts/2026-01-19T14:32:07.yaml
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
