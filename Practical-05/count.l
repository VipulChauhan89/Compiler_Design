/* Design a LEX Code to count and print the number of total characters, words, white spaces in given ‘Input.txt’ file. */
%{
int ccount=0,wcount=0,scount=0;
%}
%%
[" "] {scount++;wcount++;}
[\n\t] {wcount++;}
[^\n\t] {ccount++;}
END {return 0;}
%%
int yywrap(){return 1;}
int main()
{
	yyin=fopen("Input.txt","r");
	yylex();
	printf("\nCharacter count = %d \nWord count = %d \nSpace count = %d\n",ccount,wcount,scount);
	return 0;
}
