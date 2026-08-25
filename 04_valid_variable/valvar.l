%{
#include "valvar.tab.h"
%}
%%
[a-zA-Z] { return LET; }
[0-9] { return DIG; }
\n { return 0; }
[ \t]+ { /* skip whitespace */ }
. { return yytext[0]; }
%%
int yywrap(void) { return 1; }
