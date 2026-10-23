#!/bin/sh
# Tests for story #2 "Say hello". Run from anywhere: sh tests/test_hello.sh
root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root" || exit 1
fail=0

check() { # name, command
  if sh -c "$2" >/dev/null 2>&1; then echo "ok   $1"; else echo "FAIL $1"; fail=1; fi
}

check "AC-1 hello.txt exists" '[ -f greetings/hello.txt ]'
check "AC-1 hello.txt contains exactly the line 'Hello from Titan'" \
  '[ "$(cat greetings/hello.txt)" = "Hello from Titan" ]'
check "AC-1 hello.txt has exactly one line" \
  '[ "$(wc -l < greetings/hello.txt)" -eq 1 ]'
check "AC-1 hello.txt is 17 bytes: the text plus one trailing newline" \
  '[ "$(wc -c < greetings/hello.txt)" -eq 17 ]'
check "AC-2 check.sh exits 0" 'sh check.sh'

exit $fail
