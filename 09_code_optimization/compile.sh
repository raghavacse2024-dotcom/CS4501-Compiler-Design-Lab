#!/usr/bin/env bash
set -e
flex optimize.l
bison -d optimize.y
gcc lex.yy.c optimize.tab.c -o optimize -lfl
cat input.txt | ./optimize
