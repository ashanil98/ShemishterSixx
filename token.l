/*Definition Section*/

%{
#include<stdio.h>
%}

/*Rule Section*/

%%
if|else|while|int|switch|for|char  {ECHO; printf("\nKEYWORD\n");} 						

[{};,()]   {ECHO; printf("\tSEPERATOR\t");}						

[+-/=*%]   {ECHO; printf("\tOPERATOR\t");}						

([a-zA-Z][0-9])+|[a-zA-Z]* {ECHO; printf("\tIdentifier\t");}    
.|\n ; 															
%%


int yywrap()								
{
return 1;
}



int main(void)
{
yyin=fopen("input.c","r");
yylex();
return 0;
}