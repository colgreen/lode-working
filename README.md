# Lode Working

A disciplined approach to AI-assisted non-coding project work through iterative context management.

Lode Working helps you maintain durable markdown project memory as a byproduct of doing the work. Project memory captures the context, decisions, evidence, constraints, preferences, sources, lessons, plans, and handovers that make future AI sessions more effective.

## Context Management, Not Context Engineering

Lode Working is conversational and iterative. Instead of trying to write all project context upfront, you work on real tasks and let project memory grow as useful knowledge is discovered.

The method is tool-agnostic. Project memory is plain markdown in the project repository, so it can be used by any AI assistant that can read and edit project files.

## This Repository

The core of this repository is the reusable Lode Working instruction file:

```text
lode-working.md
```

Adapt or link this file from a project's `AGENTS.md` so AI assistants know how to work with that project's memory. The instructions are intended to live with the project, not be injected by a launcher script.

## Recommended Project Shape

Use the existing project structure first. For a new project, this is the default shape:

```text
project/
├── README.md          # human-facing project orientation
├── AGENTS.md          # AI-facing instructions; link or include Lode Working guidance
├── memory/            # durable project context and state
│   ├── summary.md
│   ├── map.md
│   ├── decisions.md
│   ├── constraints.md
│   ├── sources.md
│   ├── lessons.md
│   ├── plans/
│   └── tmp/
└── resources/         # source material, PDFs, exports, raw files, references
```

Domain-native structures are preferred when they make retrieval and updates clearer. For example, a research project may use `research/`, a writing project may use `drafts/`, and an admin project may use folders named after cases or workflows. `memory/` remains the default place for durable project state.

## Typical Use

1. Add or adapt `lode-working.md` in the project repository.
2. Link it from `AGENTS.md`, or include the relevant instructions directly there.
3. Create `memory/` when durable project memory is needed.
4. Work conversationally on real tasks.
5. Let durable knowledge accumulate in markdown files as a byproduct of the work.

## Acknowledgements

Lode Working is inspired by fjzeit's Lode Coding method and repository:

https://github.com/fjzeit/lode

Lode Working adapts the Lode Coding idea for non-coding projects such as research, purchasing, writing, personal admin, planning, and other durable knowledge work.
