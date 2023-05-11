/* Design a LEX Code to remove the comments from any C-Program given at run-time and store into ‘out.c’ file. */
%{
%}
%%
"//".*\n {} 
"/*"[^*/]*"*/" {} 
%%
int yywrap(){return 1;}
int main(int argc, char **argv)
{ 
	yyin=fopen(argv[1],"r"); 
	yyout=fopen("out.c","w"); 
	yylex();
	return 0;
}
