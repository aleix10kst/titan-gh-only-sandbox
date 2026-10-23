# flow:codebase-explorer memory

One durable fact per line. A hint for the next run, verified before it is relied on.

- `check.sh` is the repo's only gate (run `sh check.sh` from the root). It requires every `greetings/*.txt` to be non-empty with at most 1 newline, and it exits 0 if there are none. (`check.sh`)
- The repo has no build system, tests, or lint config. Tracked content is `README.md`, `docs/`, `check.sh` and `.claude/flow.json`. (`README.md`)
