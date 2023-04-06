/* Design a LEX Code to count the number of lines, space, tab-meta character and rest of characters in a given Input pattern. */
%{
int lcount=1,scount=0,tcount=0,wcount=0,ccount=0;
%}
%%
[\n] {lcount++;wcount++;}
[\t] {scount++;tcount++;wcount++;}
[" "] {scount++;wcount++;}
[^\n\t] {ccount++;}
END {return 0;}
%%
int yywrap(){return 0;}
int main()
{
	printf("Enter the Input Pattern : ");
	yylex();
	printf("\nLine Count = %d\nSpace Count = %d \nTab-Meta Count = %d \nWord Count = %d \nCharacter Count = %d\n",lcount,scount,tcount,wcount,ccount);
	return 0;
}
