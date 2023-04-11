/* Design a LEX Code to identify and print valid Identifier of C/C++ in the given Input pattern. */
%{
%}
DIGIT [0-9]
LETTER [a-zA-Z]
%%
{LETTER}({LETTER}|{DIGIT}|_)* {printf("%s is a valid identifier\n",yytext);}
{DIGIT}({LETTER}|{DIGIT}|_)*|{LETTER}({LETTER}|{DIGIT}|_)*[^{LETTER}|{DIGIT}_\n\t ] {printf("%s is a invalid identifier\n",yytext);}
. {}
%%
int yywrap(){return 0;}
int main()
{
	printf("Enter the Input pattern : ");
	yylex();
	return 0;
}
