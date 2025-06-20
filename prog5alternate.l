%{
#include <stdio.h>
%}

/* Define states corresponding to DFA states */
%s q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 QT

%%
<INITIAL>a      { printf("State: q1\n"); BEGIN q1; }      /* From q0 to q1 on a */
<INITIAL>b      { printf("State: q2\n"); BEGIN q2; }      /* From q0 to q2 on b */
<INITIAL>c      { printf("State: q3\n"); BEGIN q3; }      /* From q0 to q3 on c */
<INITIAL>\n     { printf("Rejected\n"); return 0; }      /* Empty string */

<q1>a           { printf("State: q1\n"); }               /* q1 self-loop on a */
<q1>b           { printf("State: q4\n"); BEGIN q4; }     /* q1 to q4 on b */
<q1>c           { printf("State: q5\n"); BEGIN q5; }     /* q1 to q5 on c */
<q1>\n          { printf("Accepted\n"); BEGIN INITIAL; } /* Accept in q1 */

<q2>a           { printf("State: q6\n"); BEGIN q6; }     /* q2 to q6 on a */
<q2>b           { printf("State: q2\n"); }               /* q2 self-loop on b */
<q2>c           { printf("State: q7\n"); BEGIN q7; }     /* q2 to q7 on c */
<q2>\n          { printf("Accepted\n"); BEGIN INITIAL; } /* Accept in q2 */

<q3>a           { printf("State: q9\n"); BEGIN q9; }     /* q3 to q9 on a */
<q3>b           { printf("State: q8\n"); BEGIN q8; }     /* q3 to q8 on b */
<q3>c           { printf("State: q3\n"); }               /* q3 self-loop on c */
<q3>\n          { printf("Accepted\n"); BEGIN INITIAL; } /* Accept in q3 */

<q4>b           { printf("State: q4\n"); }               /* q4 self-loop on b */
<q4>a           { printf("State: q1\n"); BEGIN q1; }     /* q4 to q1 on a */
<q4>c           { printf("State: q5\n"); BEGIN q5; }     /* q4 to q5 on c */
<q4>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in q4 */

<q5>c           { printf("State: q5\n"); }               /* q5 self-loop on c */
<q5>b           { printf("State: q4\n"); BEGIN q4; }     /* q5 to q4 on b */
<q5>a           { printf("State: q1\n"); BEGIN q1; }     /* q5 to q1 on a */
<q5>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in q5 */

<q6>a           { printf("State: q6\n"); }               /* q6 self-loop on a */
<q6>b           { printf("State: q2\n"); BEGIN q2; }     /* q6 to q2 on b */
<q6>c           { printf("State: q7\n"); BEGIN q7; }     /* q6 to q7 on c */
<q6>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in q6 */

<q7>c           { printf("State: q7\n"); }               /* q7 self-loop on c */
<q7>b           { printf("State: q2\n"); BEGIN q2; }     /* q7 to q2 on b */
<q7>a           { printf("State: q6\n"); BEGIN q6; }     /* q7 to q6 on a */
<q7>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in q7 */

<q8>b           { printf("State: q8\n"); }               /* q8 self-loop on b */
<q8>a           { printf("State: q9\n"); BEGIN q9; }     /* q8 to q9 on a */
<q8>c           { printf("State: q3\n"); BEGIN q3; }     /* q8 to q3 on c */
<q8>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in q8 */

<q9>a           { printf("State: q9\n"); }               /* q9 self-loop on a */
<q9>b           { printf("State: q8\n"); BEGIN q8; }     /* q9 to q8 on b */
<q9>c           { printf("State: q3\n"); BEGIN q3; }     /* q9 to q3 on c */
<q9>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in q9 */

<QT>a           { printf("State: QT\n"); BEGIN QT; }     /* Trap state: stay in QT */
<QT>b           { printf("State: QT\n"); BEGIN QT; }     /* Trap state: stay in QT */
<QT>c           { printf("State: QT\n"); BEGIN QT; }     /* Trap state: stay in QT */
<QT>\n          { printf("Rejected\n"); BEGIN INITIAL; } /* Reject in trap state */

.               { printf("Invalid character\n"); BEGIN QT; } /* Handle invalid input, go to trap */
%%

int main() {
    printf("Enter strings (Ctrl+D to exit):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}