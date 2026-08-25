#!/usr/bin/env bash
set -e
flex art_expr.l
bison -d art_expr.y
gcc lex.yy.c art_expr.tab.c -o art_expr -lfl
printf '%s\n' 'a+b*c-d/e' | ./art_expr
