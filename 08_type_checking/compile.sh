#!/usr/bin/env bash
set -e
flex typecheck.l
bison -d typecheck.y
gcc lex.yy.c typecheck.tab.c -o typecheck -lfl
printf '%s\n' 'int a;' 'int b;' 'int c;' 'a = b * c;' | ./typecheck
