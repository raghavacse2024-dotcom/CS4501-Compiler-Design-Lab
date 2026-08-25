#!/usr/bin/env bash
set -e
flex control.l
bison -d control.y
gcc lex.yy.c control.tab.c -o control -lfl
printf '%s\n' 'if (x < 5) { y = 10; }' | ./control
