/* 4.	Design a LEX Code for Tokenizing (Identify and print OPERATORS, SEPERATORS, KEYWORDS, IDENTIFERS). */
%{
%}
DIGIT [0-9]
LETTER [a-zA-Z]
%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short {ECHO; printf("\tKEYWORD\t");}
[{};,()] {ECHO; printf("\tSEPERATOR\t");} 
[+-/=*%] {ECHO; printf("\tOPERATOR\t");}
{LETTER}({LETTER}|{DIGIT}|_)* {ECHO; printf("\tIDENTIFIER\t");} 
.|\n {}
%%
int yywrap() {return 0;}
int main()
{
	printf("Enter the Input pattern : ");
	yylex();
	return 0;
}
