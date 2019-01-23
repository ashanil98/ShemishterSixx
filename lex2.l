/*lex program to count number of words*/
%{
#include<stdio.h>
#include<string.h>
int i = 0;
int no_of_lines = 0, no_of_chars = 0, special_chars=0 ;
%}

/* Rules Section*/
%%
([a-zA-Z0-9])* {i++;} /* Rule for counting
						number of words*/

"\n" {printf("Number of words=%d\n", i); i = 0;}
[\n]      ++no_of_lines;
.       ++no_of_chars;
%%

int yywrap(void){}

int main(int argc, char **argv)
{ printf("Enter the sentence \n");
	// The function that starts the analysis
	yylex();
  printf("number of lines = %d, number of chars = %d\n",
       no_of_lines, no_of_chars );
	return 0;
}
