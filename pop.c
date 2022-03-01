#include<stdio.h>
#include<ctype.h>
char postfix[80],stack[30];
int top=-1;
void push(char);
int evalpostfix();
void main()
{
printf("Enter the postfix");
scanf('%s",postfix);
gets(postfix);
void push(char symbol)
{
stack[++top]=symbol;
}
char pop()
{
char symbol;
symbol=stack[top--];
return symbol;
int evalpostfix()
{
char symbol;
int i=0.op1,op2;
while(symbol=postfix[i++]!='\0')
{
if(symbol==operand)
push(symbol -'0');
else
{
op2=pop;
}
}
op1=pop();
swithc(symol)
{
case +: push(op1+op2);
break;
case -: push(op1-op2);
break;
case *: push(op1*op2);
break;
case /: push(op1/op2);
break;
case ^: push(op1^op2);
break;
return(pop);
}

