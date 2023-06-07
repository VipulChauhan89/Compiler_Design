/* Write Yacc-Lex code for +, -, * and / of integers with precedence specification explicitly. */
%{ 
#include<stdlib.h> 
int yylval; 
#include"y.tab.h" 
%}
DIGIT [0-9]
%%
{DIGIT}* { yylval = atoi(yytext); return digit; } 
[-+*/\n] return *yytext;
.;
%%
int yywrap(void) {
	return 1;
}