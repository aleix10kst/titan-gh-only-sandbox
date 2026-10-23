#!/bin/sh
# Tests for story #4 "Say welcome". Run from anywhere: sh tests/test_welcome.sh
root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root" || exit 1
fail=0

check() { # name, command
  if sh -c "$2" >/dev/null 2>&1; then echo "ok   $1"; else echo "FAIL $1"; fail=1; fi
}

check "AC-1 welcome.txt exists" '[ -f greetings/welcome.txt ]'
check "AC-1 welcome.txt contains exactly the line 'Welcome to Titan'" \
  '[ "$(cat greetings/welcome.txt)" = "Welcome to Titan" ]'
check "AC-1 welcome.txt has exactly one line" \
  '[ "$(wc -l < greetings/welcome.txt)" -eq 1 ]'
check "AC-1 welcome.txt is 17 bytes: the text plus one trailing newline" \
  '[ "$(wc -c < greetings/welcome.txt)" -eq 17 ]'
check "AC-2 check.sh exits 0" 'sh check.sh'

exit $fail
