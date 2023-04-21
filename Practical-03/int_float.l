/* Design a LEX Code to identify and print integer and float value in given Input pattern. */
%{
%}
DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf(" : Integer\n");}
{DIGIT}*?\.{DIGIT}* {ECHO;printf(" : Float\n");}
. {}
%%
int yywrap(){return 0;}
int main()
{
	printf("Entet the Input pattern : ");
	yylex();
	return 0;
}
