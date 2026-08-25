#!/usr/bin/env bash
set -e
flex symtab.l
gcc lex.yy.c -o symtab -lfl
./symtab input.c
