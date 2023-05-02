/* Design a LEX Code to replace white spaces of ‘Input.txt’ file by a single blank character into ‘Output.txt’ file. */
%{
%}
%%
[\t\n" "]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}
END {return 0;}
%%
int yywrap(){return 1;}
int main()
{
	yyin=fopen("Input.txt","r");
	yyout=fopen("Output.txt","w");
	yylex();
	return 0;
}

