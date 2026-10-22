---
title: "writ deploy"
slug: "writ/deploy"
description: "Deploy projects by creating symlinks in the target location"
tool: "writ"
command: "deploy"
parent: "writ"
generated: "2026-10-22T00:08:36Z"
version: "272e6a9"
---

# writ deploy

Deploy projects by creating symlinks in the target location

## Usage

```
writ deploy [flags] [<project>...]
```

## Description

Deploy projects by creating symlinks in the target location.

A bare "writ deploy" deploys the implicit set: the reserved common project and one
project per configured layer repository, named for the repository (#843, #850), plus
whatever the current record already holds. Naming a project adds it, from every
layer that carries it; a name no registered layer carries is refused.

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
writ deploy                    # the implicit set: common and the layer repositories' projects
writ deploy noblefactor
writ deploy noblefactor thenobles
writ deploy --conflict=replace noblefactor
writ deploy --conflict=skip noblefactor
writ deploy -s ROLE=desktop noblefactor
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
