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
