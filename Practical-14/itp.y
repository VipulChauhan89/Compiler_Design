/* Write Yacc-Lex code for converting infix expression to postfix expression. */
%{
#include<stdio.h>
int yyerror (char *msg) ;
int yylex(void);
%}
%token NUM
%left '+' '-'
%left '*' '/'
%right NEGATIVE
%%
S: E {printf("\n");}
;
E: E '+' E {printf("+");}
| E '*' E {printf("*");}
| E '-' E {printf("-");}
| E '/' E {printf("/");}
| '(' E ')'
| '-' E %prec NEGATIVE {printf("-");}
| NUM {printf("%d", yylval);}
;
%%
int main(){
yyparse();
}
int yyerror (char *msg) {
return printf ("error YACC: %s\n", msg);
}
