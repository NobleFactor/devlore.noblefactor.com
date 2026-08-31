---
title: "writ verify"
description: "Verify the publisher signatures of graph and trace documents"
tool: "writ"
command: "verify"
parent: "writ"
generated: "2026-08-31T01:33:00Z"
version: "18dedc6"
---

# writ verify

Verify the publisher signatures of graph and trace documents

## Usage

```
writ verify <document>... [flags]
```

## Description

Verify the publisher signatures of graph and trace documents.

Each document is re-canonicalized and its raw ssh-ed25519 signature checked over
the namespace-prefixed canonical bytes; the publisher key resolves against the
verifier's allowed_signers trust list. What each outcome does to the exit status
is the signing policy ladder:

  ignore           No verification at all
  report           (default) Report every outcome; never fail
  reject_external  Reject unsigned/invalid/untrusted documents from OUTSIDE this
                   machine's own store; own-store documents only report
  reject           Reject anything that is not valid

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--allowed-signers` | `""` | Trust-list path (default: <config>/devlore/allowed_signers) |
| `--signing-policy` | `report` | Verification policy: ignore, report, reject_external, reject |

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
| `--output, -o` | `json` | Output rendering: json, yaml, table, csv, value (raw, pairs with --jq), template=BODY, or none |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Examples

```bash
writ verify ~/.local/state/devlore/graphs/*.yaml
writ verify --signing-policy=reject_external ~/Downloads/shared-plan.yaml
writ verify -o table --signing-policy=reject trace.yaml
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ](/cli/writ/) | Environment manager with platform-aware symlinks |
