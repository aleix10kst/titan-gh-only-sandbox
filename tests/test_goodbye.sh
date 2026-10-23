#!/bin/sh
# Tests for story #3 "Say goodbye". Run from anywhere: sh tests/test_goodbye.sh
root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root" || exit 1
fail=0

check() { # name, command
  if sh -c "$2" >/dev/null 2>&1; then echo "ok   $1"; else echo "FAIL $1"; fail=1; fi
}

check "AC-1 goodbye.txt exists" '[ -f greetings/goodbye.txt ]'
check "AC-1 goodbye.txt contains exactly the line 'Goodbye from Titan'" \
  '[ "$(cat greetings/goodbye.txt)" = "Goodbye from Titan" ]'
check "AC-1 goodbye.txt has exactly one line" \
  '[ "$(wc -l < greetings/goodbye.txt)" -eq 1 ]'
check "AC-1 goodbye.txt is 19 bytes: the text plus one trailing newline" \
  '[ "$(wc -c < greetings/goodbye.txt)" -eq 19 ]'
check "AC-2 check.sh exits 0" 'sh check.sh'

exit $fail
