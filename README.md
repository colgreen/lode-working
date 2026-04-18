# Lode Working

A disciplined approach to AI-assisted non-coding project work through iterative context management.

Lode Working helps you maintain durable markdown project memory as a byproduct of doing the work. A project lode captures the context, decisions, evidence, constraints, preferences, sources, lessons, plans, and handovers that make future AI sessions more effective.

## Context Management, Not Context Engineering

Lode Working is conversational and iterative. Instead of trying to write all project context upfront, you work on real tasks and let the lode grow as useful knowledge is discovered.

The method is tool-agnostic. The lode is plain markdown, so it can be used by any AI assistant that can read and edit project files.

## This Repository

The core of this repository is the system prompt:

```text
prompts/SystemPrompt.txt
```

Use it to start an AI assistant session for a non-coding project. Once active, the assistant should read the existing project context, preserve domain-native structure, and update durable lode files as work progresses.

## Quick Start

Choose the wrapper for the assistant you want to use:

```bash
codex/lodew-codex      # Codex CLI
claude/lodew-claude    # Claude Code
```

Each wrapper loads `prompts/SystemPrompt.txt` and passes any extra arguments through to the underlying tool. Run the wrapper from inside the project you want to work on.

## Codex CLI

The scripts in `codex/` start Codex CLI with the Lode Working system prompt as additional developer instructions:

```bash
codex/lodew-codex        # Unix
codex/lodew-codex.ps1    # PowerShell
codex/lodew-codex.bat    # Windows batch, delegates to PowerShell
```

If you add `codex/` to your `PATH`, use:

```bash
lodew-codex
```

## Claude Code

The scripts in `claude/` start Claude Code with the Lode Working system prompt:

```bash
claude/lodew-claude        # Unix
claude/lodew-claude.ps1    # PowerShell
claude/lodew-claude.bat    # Windows batch, delegates to PowerShell
```

If you add `claude/` to your `PATH`, use:

```bash
lodew-claude
```

## Typical Use

1. Open the project you want to work on.
2. Start an AI session with the Lode Working prompt.
3. Work conversationally on a real task.
4. Review and correct the assistant's understanding.
5. Let durable knowledge accumulate in markdown files as a byproduct of the work.

## Acknowledgements

Lode Working is inspired by fjzeit's Lode Coding method and repository:

https://github.com/fjzeit/lode

Lode Working adapts the lode concept for non-coding projects such as research, purchasing, writing, personal admin, planning, and other durable knowledge work.
