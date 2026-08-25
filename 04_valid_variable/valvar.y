%{
#include <stdio.h>
#include <stdlib.h>
%}
%token LET DIG
%%
variable: var ;
var: var DIG | var LET | LET ;
%%
int main(void) {
    printf("Enter the variable:\n");
    yyparse();
    printf("Valid variable\n");
    return 0;
}
int yyerror(char *s) {
    (void)s;
    printf("Invalid variable\n");
    exit(0);
}
