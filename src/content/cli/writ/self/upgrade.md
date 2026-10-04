---
title: "writ self upgrade"
slug: "writ/self/upgrade"
description: "Upgrade writ, and every devlore program beside it, to one release"
tool: "writ"
command: "upgrade"
parent: "writ self"
generated: "2026-10-04T06:17:08Z"
version: "f30c209"
---

# writ self upgrade

Upgrade writ, and every devlore program beside it, to one release

## Usage

```
writ self upgrade [flags]
```

## Description

Upgrade writ, and every other devlore program installed beside it, to one release.

The prefix is the one the running binary is in, <prefix>/bin/writ. The programs are
the ones a release carries -- lore, star and writ -- that the prefix holds; one it does not hold
is not added. When every one is already at the release, nothing is downloaded and nothing
changes.

The release is downloaded from GitHub into a temporary directory, verified against its checksums
file and GitHub's own SHA-256 digest, and unpacked there; the directory is removed when the
command ends, interrupted or not. Each program's new binary is then placed in <prefix>/bin, and
the program installs itself with its own "self install", which refreshes its man pages and
completions and replaces its record. The first program that fails stops the run; nothing is
rolled back, and running the command again finishes the job.

What it upgrades to is decided by the first of these that is given:
  --from <archive>     a release archive on disk, its checksums file beside it
  --channel <channel>  the newest release on that channel
  DEVLORE_VERSION      that release, whatever its channel; "latest" pins nothing
  self.channel         the channel in the configuration every program shares
  the build's channel  the channel this build was made on, which --version names

The channels:
  develop  every build from develop, each a pre-release
  release  GitHub's latest release; with --prerelease, or self.prerelease: true beside
           self.channel: release, the release channel's pre-releases too

The channel stays with the installed builds: after "writ self upgrade --channel release",
a plain "writ self upgrade" stays on release, unless DEVLORE_VERSION or self.channel
is set, either of which outranks the build's channel. A local build has no channel, and
upgrades only when told what to.

GitHub is asked without a token, which allows 60 requests an hour. Set GH_TOKEN to a GitHub token
to raise the limit; it is sent with requests to GitHub's API, never with downloads. Nothing
prompts.

--dry-run finds, downloads and verifies the release, says what it would upgrade, and changes
nothing.

Examples:
  writ self upgrade
  writ self upgrade --channel release
  writ self upgrade --channel release --prerelease
  DEVLORE_VERSION=<tag> writ self upgrade
  writ self upgrade --from ./devlore-cli_<tag>_<os>_<arch>.tar.gz
  writ self upgrade --dry-run

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `--channel` | `""` | Channel to upgrade on: develop or release; outranks a DEVLORE_VERSION pin (default: the pin, else self.channel, else the channel this build was made on) |
| `--from` | `""` | Release archive on disk to upgrade to, its checksums file beside it; GitHub is not asked |
| `--prerelease` | `false` | Include the release channel's pre-releases |
| `--shell` | `[]` | Shell to install completions for (repeatable, e.g., --shell bash --shell zsh) |

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
| `--no-pager, -P` | `false` | Never page the result, whatever its rendering and wherever it is going |
| `--output, -o` | `json` | Output rendering. json is the default and the native format; every other rendering presents that JSON rather than the Go value behind it. Reach for terminal to read a report and markdown to paste one, table or list to scan a result, yaml to read a large one, csv or json to feed a program, template when you need a shape none of these produce, and none when you want the exit code and the side effects alone.<br><br>The renderings, by the reader each serves:<br><br>Composed -- you chose the shape, in the filter stage<br>  template=BODY<br>    a Go template; when you need a shape none of the others give<br>  value<br>    raw, tab-separated, no header; when cut or awk consumes it<br><br>Document -- a report, rather than data<br>  markdown<br>    the document as markdown; when GitHub reads it, or you paste it<br>  terminal<br>    the document rendered, with bold and italic; when you read it<br><br>Nothing<br>  none<br>    nothing at all; when you want the exit code, not the output<br><br>Records -- laid out for a person<br>  list<br>    one field per line; when a record is wide, or records differ<br>  table<br>    aligned columns, one row per record; when scanning many rows<br><br>Serialized -- lossless; a library reads it back<br>  csv<br>    quoted and parseable; when a spreadsheet or a data tool reads it<br>  json<br>    the native format, nothing elided; when a script consumes it<br>  yaml<br>    the same content as json, in a shape that reads by eye |
| `--paginate, -p` | `false` | Page the result whenever stdout is a terminal, whatever its rendering |
| `--silent` | `false` | Suppress all status messages (stderr) |
| `--store` | `""` | Execution store root, holding definitions and traces (default: the XDG state path) |
| `--target` | `Home` | Target to operate on |
| `--unattended` | `false` | Force unattended mode (no prompts, sensible defaults) |
| `--verbose, -v` | `false` | Verbose output |

## Parent Command

| Command | Description |
|---------|-------------|
| [writ self](/cli/writ/self/) | Self-management commands |
