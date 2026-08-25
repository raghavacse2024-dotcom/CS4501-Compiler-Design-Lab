#!/usr/bin/env bash
set -e
flex cal.l
bison -d cal.y
gcc lex.yy.c cal.tab.c -o calc -lfl
printf '%s\n' '2+2' | ./calc
