---
title: "writ secret encrypt"
description: "Encrypt files to .sops siblings per the governing .sops.yaml"
tool: "writ"
command: "encrypt"
parent: "writ secret"
generated: "2026-08-20T23:53:37Z"
version: "5cd501b"
---

# writ secret encrypt

Encrypt files to .sops siblings per the governing .sops.yaml

## Usage

```
writ secret encrypt <file>...
```

## Description

Encrypt files to .sops siblings per the governing .sops.yaml.

The <file>.sops sibling is written beside each input — deployed names are
unchanged (foo.env.sops deploys as foo.env). Recipients and document format
come from the .sops.yaml resolved within the containing layer; a file no
creation rule governs fails with the resolver's error. An existing sibling
refuses — encrypt never overwrites — and the plaintext source is never
deleted; removal belongs to the caller.

Every argument must lie inside a registered layer's working tree; register a
repository with 'writ repo add'. The run rides the standard pipeline: the
graph and trace persist to the execution store with receipts recorded.

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
writ secret encrypt Home/noblefactor/.config/service/credentials.yaml
writ secret encrypt Home/common/.ssh/id_ed25519 Home/common/.ssh/id_rsa
writ secret encrypt --dry-run Home/thenobles/.Personal-secrets/keys.json
```

## Parent Command

| Command | Description |
|---------|-------------|
| [writ secret](/cli/writ/secret/) | SOPS secrets for layer repositories |
