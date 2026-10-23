# Ledger — #5 Say thanks (draft)

| # | Obligation | Evidence | Result |
|---|---|---|---|
| 1 | Branch created from the base | `git switch -c feat/5-say-thanks-draft feat/1-greeting-files-github-only` → `git branch --show-current`: `feat/5-say-thanks-draft`; `flow-gh state 5 in-progress` → `DONE #5 state: in-progress` | done |
| 2 | Recon | `brief.md` written by codebase-explorer (no spec); `flow-memory.sh apply` → `memory: +2 -1` | done |
| 3 | Tests and code written apart | `red.md` and `build.md` written; test worktree `/work/.flow/wt/5-say-thanks-draft`; implementer `model: opus` (config has no `models.implementer`) | done |
| 4 | Base run and coverage (step 4) | in worktree `sh tests/test_thanks.sh` → 4× `FAIL AC-1 …`, `ok AC-2 check.sh exits 0` (marked "passes today — AC-2"), exit=1; `flow-ac-cover.sh` → `Result: OK — 2 AC(s) accounted for, 0 WARN` | done |
| 5 | Tests merged | `git merge --no-edit feat/5-say-thanks-draft-tests` → `b51ec55`; `git worktree list` → `/work b51ec55 [feat/5-say-thanks-draft]` only | done |
| 6 | Oracle green (step 5) | `sh tests/test_thanks.sh` on HEAD → 5× `ok`, exit=0; rounds used 0 of 3 | done |
| 7 | Review round 1 | `review-1.md` written; `flow-route.sh feat/1-greeting-files-github-only` → `Security review: skip — 2 changed paths, none sensitive, no dependency manifest` | acceptance PASS (1 MINOR); security not run (skip); new findings: 0 → converged |
| 9 | Gate (step 7) | `sh check.sh` ×3 (lint, typecheck, test) → exit 0 each, HEAD b51ec55; all tests/*.sh → 20 ok, 0 FAIL; rounds used 0 of 3 | green |
| 10 | Tree clean | `git status --porcelain -- . ':!.claude/agent-memory'` → (empty) | clean |
| 11 | Bundle closed | `flow-gh state 5 in-review` → `DONE #5 state: in-review`; `flow-gh get 5 state` → `in-review` | done (GitHub-only: no bundle document) |
| 12 | Tracker updated (step 9a) | skipped: unattended — `/flow:epic` Phase D ticks, comments and unreadies | skipped |
