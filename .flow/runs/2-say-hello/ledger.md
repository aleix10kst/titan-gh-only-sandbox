# Ledger — #2 Say hello

| # | Obligation | Evidence | Result |
|---|---|---|---|
| 1 | Branch created from the base | `git switch -c feat/2-say-hello main` → `git branch --show-current`: `feat/2-say-hello` | done |
| 2 | Recon | `brief.md` written by codebase-explorer (no spec); `flow-memory.sh apply` → `memory: +2 -0` | done |
| 3 | Tests and code written apart | `red.md` and `build.md` written; test worktree `/work/.flow/wt/2-say-hello`; implementer `model: opus` (config has no `models.implementer`) | done |
| 4 | Base run and coverage (step 4) | in worktree `sh tests/test_hello.sh` → 4× `FAIL AC-1 …`, `ok AC-2 check.sh exits 0` (marked "passes today — AC-2"), exit=1; `flow-ac-cover.sh` → `Result: OK — 2 AC(s) accounted for, 0 WARN` | done |
| 5 | Tests merged | `git merge --no-edit feat/2-say-hello-tests` → `8ce788c`; `git worktree list` → `/work 8ce788c [feat/2-say-hello]` only | done |
| 6 | Oracle green (step 5) | `sh tests/test_hello.sh` on HEAD → 5× `ok`, exit=0; rounds used 0 of 3 | done |
| 7 | Review round 1 | `review-1.md` written; `flow-route.sh main` → `Security review: skip — 3 changed paths, none sensitive, no dependency manifest` | acceptance PASS-WITH-FINDINGS (1 MINOR); security not run (skip); new findings: 0 → converged |
| 9 | Gate (step 7) | `sh check.sh` ×3 (lint, typecheck, test) → exit 0 each, HEAD 8ce788c; rounds used 0 of 3 | green |
| 10 | Tree clean | `git status --porcelain` → (empty) | clean |
| 11 | Bundle closed | `flow-gh state 2 in-review` → `DONE #2 state: in-review`; `flow-gh get 2 state` → `in-review` | done (GitHub-only: no bundle document) |
| 12 | Tracker updated (step 9a) | | |
