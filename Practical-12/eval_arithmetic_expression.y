/* Write Yacc-Lex code for +, -, * and / of integers with precedence specification explicitly. */

%{ 
#include<stdio.h> 
int yylex(void);
void yyerror(char *); 
%}
%token digit 
%left '+' '-' 
%left '*' '/'
%%
S:S E '\n' {$$=$2; printf("output=%d\n",$$); } 
|;
E:E'+'E { $$=$1+$3; }
|E'-'E { $$=$1-$3; }
|E'*'E { $$=$1*$3; }
|E'/'E { $$=$1/$3; }
| digit { $$ = $1; }
;
%%
int main() 
{ 
	printf("Enter the Expression : ");
	yyparse(); 
	return 0; 
}
void yyerror(char *msg)
{
	printf("\n%s",msg);
	printf("\narithematic expression is invalid"); 
}