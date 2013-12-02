%{

%}
%option noyywrap

%%

" " { printf(" "); }
'\t' { printf("\t"); }
'\n' { printf("\n"); }
"Next" { printf (">"); }
"Previous" { printf ("<"); }
"Screw" { printf ("+"); }
"Unscrew" { printf ("-"); }
"Ingest" { printf ("?"); }
"Puke" {printf ("."); }
"RepeatUntillUnscrewed{" { printf("["); }
"}" { printf("]"); }

. {printf("\nerror near line %d column %d: unexpected \"%s\"\n", 0, 0, yytext);}

%%
 int main ()
 {
        yylex();
        return 0;
 }
