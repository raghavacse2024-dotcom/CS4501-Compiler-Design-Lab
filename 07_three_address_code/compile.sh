#!/usr/bin/env bash
set -e
flex tac.l
bison -d tac.y
gcc tac.tab.c lex.yy.c -o tac -lfl
printf '%s\n' 'a = b + c * d' | ./tac
