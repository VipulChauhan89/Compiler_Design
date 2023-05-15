/* Design a LEX Code to extract all html tags in the given HTML file at run time and store into Text file given at run time. */
%{
%}
%%
"<"[^>]*">" {fprintf(yyout,"%s",yytext);}
. {}
%%
int yywrap(){return 1;}
int main(int argc,char **argv)
{
	yyin=fopen(argv[1],"r");
	yyout=fopen("Output.html","w");
	yylex();
	return 0;
}
