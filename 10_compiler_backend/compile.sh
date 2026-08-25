#!/usr/bin/env bash
set -e
flex backend.l
bison -d backend.y
gcc lex.yy.c backend.tab.c -o backend -lfl
cat input.txt | ./backend
