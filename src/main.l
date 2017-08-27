
%{
#include <stdio.h>
#include <string.h>
%}

USER	[a-zA-Z0-9_.-]
DOM	[a-zA-Z0-9_.-]*[a-zA-Z0-9]

%%
{USER}+[^_. -][@]{DOM} {
	printf("%s\n", yytext);
}

{USER}+[^_. -][@]{DOM}[-][ ] ;
. ;
\n ;
%%

int main() {
  yylex();
  return 0;
}
