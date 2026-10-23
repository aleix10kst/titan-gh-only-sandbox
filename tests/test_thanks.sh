#!/bin/sh
# Tests for story #5 "Say thanks (draft)". Run from anywhere: sh tests/test_thanks.sh
root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root" || exit 1
fail=0

check() { # name, command
  if sh -c "$2" >/dev/null 2>&1; then echo "ok   $1"; else echo "FAIL $1"; fail=1; fi
}

check "AC-1 thanks.txt exists" '[ -f greetings/thanks.txt ]'
check "AC-1 thanks.txt contains exactly the line 'Thanks from Titan'" \
  '[ "$(cat greetings/thanks.txt)" = "Thanks from Titan" ]'
check "AC-1 thanks.txt has exactly one line" \
  '[ "$(wc -l < greetings/thanks.txt)" -eq 1 ]'
check "AC-1 thanks.txt is 18 bytes: the text plus one trailing newline" \
  '[ "$(wc -c < greetings/thanks.txt)" -eq 18 ]'
check "AC-2 check.sh exits 0" 'sh check.sh'

exit $fail
