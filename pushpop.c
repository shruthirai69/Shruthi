#include<stdio.h>
#include<conio.h>
#define MAX 3
int top=-1;
int stack[MAX],i,ele;
int pop();
void display();
void main()
{
int ch,i,n;

do
{
printd(1.push\n2.pop\n3.dispay\n4.Enter to exit\n\n);
printd("Enter your choice");
scanf("%d",&ch);
switch(ch)
{
case 1:
{
printd("Enter the element");
scanf("%d",&n);
push(stack,n);
break;
}
case 2:
{
n=pop();
break;
}
case 3:
{
display();
break;
}
}
}
}
void push(int stack[],int ele)
{
if(top==MAX-1)
{
printf("\t stack is full");
}
else
{
top++;
stack[top]=ele;
}
}

int pop()
{
int ele;
if(top==-1)
{
printf("stack is empty");
}
else
{
eke=stack[top];
top--;
printf("Element deleted is %d",ele);
returnele;
}
}
void display()
{
int i;
if(top==-1)
{
printf("stack is empty");
}
else
{
for(i=top;i>=0;i++)
{
printf("%d\t",stack[i]);
}
}
}

