---
title: "lore"
description: "The tribal knowledge package deployer"
tool: "lore"
command: "lore"
parent: ""
generated: "2026-01-27T20:32:19Z"
version: "d8575e7"
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
| `--interactive` | `false` | Force interactive mode (prompts, rich output) |
| `--registry` | `""` | Registry path |
| `--silent` | `false` | Suppress all status messages (stderr) |
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
| [lore onboard](/cli/lore/onboard/) | Parse wiki or script and generate packages.manifest and config |
| [lore publish](/cli/lore/publish/) | Submit a package manifest to the registry |
| [lore reconcile](/cli/lore/reconcile/) | Compare deployment receipts against actual system state |
| [lore resolve](/cli/lore/resolve/) | Show how a package would be installed on this platform |
| [lore search](/cli/lore/search/) | Search available packages in the registry |
| [lore self-install](/cli/lore/self-install/) | Complete installation to specified directory |
| [lore update](/cli/lore/update/) | Synchronize the local registry cache from the central registry |
| [lore upgrade](/cli/lore/upgrade/) | Upgrade previously deployed packages to newer versions |
