#!/usr/bin/env bash
set -e
flex lexer.l
gcc lex.yy.c -o lexer -lfl
./lexer iplex.c
