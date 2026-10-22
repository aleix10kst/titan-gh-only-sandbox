#!/bin/sh
# Gate for the sandbox: every file under greetings/ is a single non-empty line.
for f in greetings/*.txt; do
  [ -e "$f" ] || exit 0
  [ "$(wc -l < "$f" | tr -d ' ')" -le 1 ] && [ -s "$f" ] || { echo "bad: $f"; exit 1; }
done
