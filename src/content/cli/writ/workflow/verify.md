---
title: "writ workflow verify"
description: "Verify the publisher signatures of workflow definitions and execution traces"
tool: "writ"
command: "verify"
parent: "writ workflow"
generated: "2026-09-14T03:11:05Z"
version: "9cbddea"
---

# writ workflow verify

Verify the publisher signatures of workflow definitions and execution traces

## Usage

```
writ workflow verify [<document>...] [flags]
```

## Description

Verify the publisher signatures of workflow definitions and execution traces.

With no operand, the documents are selected from the run index: every definition and
execution trace of the selected workflows. --scope narrows to one scope, --kind to one
kind of document, --latest to the newest trace per definition. A path operand names a
document from outside the store, such as one shared with you; operands and selectors
do not mix in one invocation.

Each document is re-canonicalized and its raw ssh-ed25519 signature checked over the
namespace-prefixed canonical bytes; the publisher key resolves against the verifier's
allowed_signers trust list. What each outcome does to the exit status is the signing
policy ladder:

  ignore           No verification at all
  report           (default) Report every outcome; never fail
  reject_external  Reject unsigned/invalid/untrusted documents from OUTSIDE this
                   machine's own store; own-store documents only report
  reject           Reject anything that is not valid

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--allowed-signers` | `""` | Trust-list path (default: <config>/devlore/allowed_signers) |
| `--kind` | `""` | Verify one kind of document: definition or trace (default: both) |
| `--latest` | `false` | Verify only the newest execution trace of each definition |
| `--scope` | `""` | Verify one scope's workflow (default: every scope) |
| `--signing-policy` | `report` | Verification policy: ignore, report, reject_external, reject |
| `--tool` | `writ` | The program whose workflows to verify |

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
writ workflow verify
writ workflow verify --scope home
writ workflow verify --scope home --kind trace --latest
writ workflow verify -o table --signing-policy=reject
writ workflow verify --signing-policy=reject_external ~/Downloads/shared-plan.yaml
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ workflow](/cli/writ/workflow/) | The store's workflows: each a definition and the execution traces of its runs |
