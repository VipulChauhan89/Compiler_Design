/* Design a DFA in lex code to identify and print Integer & Float Constants and Identifier.*/
%{
%}

%s A B C DEAD	 
DIGIT [0-9]
LETTER [a-zA-Z]
%%
<INITIAL>{DIGIT}* BEGIN A;
<INITIAL>{DIGIT}*?\.{DIGIT}* BEGIN B;
<INITIAL>{LETTER}({LETTER}|{DIGIT}|_)* BEGIN C;
<INITIAL>[^\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<A>[^\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Integer\n");}

<B>[^\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Float\n");}

<C>[^\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("Identifier\n");}


<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}

%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter String : ");
	yylex();
	return 0;
}
