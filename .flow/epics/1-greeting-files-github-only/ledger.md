# Epic ledger — #1 Greeting files (GitHub-only)

authorization: Start (local merges, no push) — human:aleix-canet, 2026-10-23T00:40:11Z

## Plan order

1. #3 Say goodbye — todo (depends on #2, done)
2. #4 Say welcome — todo, spec approved
3. #5 Say thanks (draft) — todo

Already done before this run: #2 Say hello (merged to main via PR #6).
Branch: `feat/1-greeting-files-github-only` from `origin/main`.

## Stories

### #3 Say goodbye
- state: in-review
- branch: `feat/3-say-goodbye`; merge commit `7949436` (merge: Say goodbye)
- ACs: 2/2 ✅, deferred: none; last review `.flow/runs/3-say-goodbye/review-1.md`
- tests added: `tests/test_goodbye.sh`
- story gate: green at `f6ad591`, 10 passing checks
- regression gate: skipped, identical to `f6ad591`; last green gate `f6ad591`; test count 10 (previous 5)
- review rounds: 1 (converged, 0 new BLOCKING/MAJOR); security review skipped by route
- implementer model: opus
- deferred ACs: none; MAJOR open: none; noticed out of scope: none; blocked: -
- tracker comment: (Phase D)

### #4 Say welcome
- state: in-review
- branch: `feat/4-say-welcome`; merge commit `ddbdb55` (merge: Say welcome)
- ACs: 2/2 ✅, deferred: none; last review `.flow/runs/4-say-welcome/review-1.md`
- tests added: `tests/test_welcome.sh`
- story gate: green at `0f21fed`, 15 passing checks
- regression gate: skipped, identical to `0f21fed`; last green gate `0f21fed`; test count 15 (previous 10)
- review rounds: 1 (converged, 0 new BLOCKING/MAJOR); security review skipped by route
- implementer model: opus
- deferred ACs: none; MAJOR open: none; blocked: -
- noticed out of scope: `check.sh:4` exits 0 when the first glob entry is missing, so an empty `greetings/` passes the gate (implementer)
- tracker comment: (Phase D)

### #5 Say thanks (draft)
- state: in-review
- branch: `feat/5-say-thanks-draft`; merge commit `f3a744b` (merge: Say thanks (draft))
- ACs: 2/2 ✅, deferred: none; last review `.flow/runs/5-say-thanks-draft/review-1.md`
- tests added: `tests/test_thanks.sh`
- story gate: green at `b51ec55`, 20 passing checks
- regression gate: skipped, identical to `b51ec55`; last green gate `b51ec55`; test count 20 (previous 15)
- review rounds: 1 (converged, 0 new BLOCKING/MAJOR); security review skipped by route
- implementer model: opus
- deferred ACs: none; MAJOR open: none; blocked: -
- noticed out of scope: same `check.sh` empty-glob `exit 0` note as #4; "(draft)" in the title read as a label (AC-1 fixes the content)
- tracker comment: (Phase D)

## Phase B summary
- built: #3, #4, #5 (all in-review, merged into the epic branch)
- blocked: none
- waiting: none
- deferred ACs: none
- GITHUB-PENDING: none

## Reconciliation
1. Stories: #3, #4, #5 in-review; #2 done before this run (`flow-epic.sh '#1'`). Blocked/waiting: none.
2. ACs: 6/6 delivered across #3, #4, #5 (2/2 each, per each story's review-1.md). Deferred: none. Ticks wait for Phase D (GitHub-only).
3. Requirements: none — the epic's Outcome has no `R-n` ids.
4. Spec test plans: #4 only. AC-1 row → `tests/test_welcome.sh` has 7 matches for `welcome.txt`; AC-2 row → `tests/test_welcome.sh:18` runs `sh check.sh`. Gaps: none.
5. Spec change lists: #4's spec has no `# Changes` table. Its Approach names `greetings/welcome.txt`, which is in the diff. Code files in the diff: `greetings/{goodbye,thanks,welcome}.txt` plus tests. Extras not named by a spec: `greetings/goodbye.txt` and `greetings/thanks.txt`, which come from the spec-less XS stories #3 and #5 and match their ACs. Not a scope issue.
6. Leftovers: none (grep over 177 added lines, exit 1). Implementer smell matches: none.
7. Seam reviews: round 1 `seam-1.md`. Acceptance PASS, security PASS, 0 findings. Overlap files: none. Integration commits: none (docs only). Converged.
8. Gate: `git status --porcelain` empty; `git diff --quiet b51ec55 HEAD -- . ':!docs' ':!.flow'` exit 0 → gate identical to `b51ec55`, green (20 passing checks).
9. Bundle: no `GITHUB-PENDING` lines to replay. `flow-gh state 1 in-review` → done. No ADR or glossary changed, so there was no index, lint or commit for the bundle.
