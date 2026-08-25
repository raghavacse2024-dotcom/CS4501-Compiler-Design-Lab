#!/usr/bin/env bash
set -e
flex valvar.l
bison -d valvar.y
gcc lex.yy.c valvar.tab.c -o valvar -lfl
printf '%s\n' 'add' | ./valvar
