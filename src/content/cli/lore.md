---
title: "lore"
slug: "lore"
description: "The tribal knowledge package deployer"
tool: "lore"
command: "lore"
parent: ""
generated: "2026-09-26T10:03:41Z"
version: "ac4c19e"
---

# lore

The tribal knowledge package deployer

## Usage

```
lore [flags]
```

## Description

Lore is a cross-platform package deployment tool that captures tribal
knowledge about installing software.

It delegates to native package managers when possible and provides
custom deployment scripts when necessary.

Lore exists because "install this package" is rarely the whole story.
Docker requires adding vendor repositories, removing conflicting packages,
and installing five separate components. Pandoc needs a PDF engine, which
needs LaTeX, which needs tlmgr to install packages that aren't documented
anywhere.

Lore captures this knowledge once and shares it forever.
What took someone hours to figure out, you get in minutes.

## Options

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
| `--no-pager, -P` | `false` | Never page the result, whatever its rendering and wherever it is going |
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for terminal to read a report and markdown to paste one, table or list to scan a result, yaml to read a large one, csv or json to feed a program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, by the reader each serves:<br><br>Composed -- you chose the shape, in the filter stage<br>  template=BODY<br>    a Go template; when you need a shape none of the others give<br>  value<br>    raw, tab-separated, no header; when cut or awk consumes it<br><br>Document -- a report, rather than data<br>  markdown<br>    the document as markdown; when GitHub reads it, or you paste it<br>  terminal<br>    the document rendered, with bold and italic; when you read it<br><br>Nothing<br>  none<br>    nothing at all; when you want the exit code, not the output<br><br>Records -- laid out for a person<br>  list<br>    one field per line; when a record is wide, or records differ<br>  table<br>    aligned columns, one row per record; when scanning many rows<br><br>Serialized -- lossless; a library reads it back<br>  csv<br>    quoted and parseable; when a spreadsheet or a data tool reads it<br>  json<br>    the native format, nothing elided; when a script consumes it<br>  yaml<br>    the same content as json, in a shape that reads by eye |
| `--paginate, -p` | `false` | Page the result whenever stdout is a terminal, whatever its rendering |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Child Commands

| Command | Description |
|---------|-------------|
| [lore audit](/cli/lore/audit/) | View security audit log entries |
| [lore bundle](/cli/lore/bundle/) | Create self-extracting deployment bundles for air-gapped environments |
| [lore config](/cli/lore/config/) | Get and set configuration options |
| [lore decommission](/cli/lore/decommission/) | Remove packages and clean up their resources |
| [lore deploy](/cli/lore/deploy/) | Deploy packages to the local system |
| [lore inspect](/cli/lore/inspect/) | Show detailed information about a package |
| [lore list](/cli/lore/list/) | List deployed packages from pipeline receipts |
| [lore manifest](/cli/lore/manifest/) | Create and manage package lifecycle manifests |
| [lore onboard](/cli/lore/onboard/) | Parse wiki or script and generate packages-manifest.yaml and config |
| [lore publish](/cli/lore/publish/) | Submit a package manifest to the registry |
| [lore reconcile](/cli/lore/reconcile/) | Compare deployment receipts against actual system state |
| [lore resolve](/cli/lore/resolve/) | Show how a package would be installed on this platform |
| [lore search](/cli/lore/search/) | Search available packages in the registry and native package managers |
| [lore self](/cli/lore/self/) | Self-management commands |
| [lore update](/cli/lore/update/) | Synchronize the local registry cache from the central registry |
| [lore upgrade](/cli/lore/upgrade/) | Upgrade previously deployed packages to newer versions |
| [lore workflow](/cli/lore/workflow/) | The store's workflows: each a definition and the execution traces of its runs |
