%{
#include <ctype.h>
#include <stdio.h>
#define YYSTYPE double
%}
%token NUM
%left '+' '-'
%left '*' '/'
%right UMINUS
%%
Statement: E { printf("Answer: %g\n", $$); }
         | Statement '\n'
         ;
E: E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | NUM
 ;
%%
int main(void) {
    printf("Enter the expression:\n");
    yyparse();
    return 0;
}
int yyerror(char *s) {
    printf("%s\n", s);
    return 0;
}
