#include<stdio.h>
#include<stdlib.h>
typedef struct Node* lstptr;
struct Node
{
	int data;
	lstptr link;
};

lstptr first = NULL;
lstptr getNode()
{
lstptr node;
node=(lstptr)malloc(sizeof(struct Node));
return node;
}
void insertBegin(int ele)
{
	lstptr new;
	new=getNode();
	new->data=ele;
	new->link=NULL;
		if(first!=NULL)
		new->link=first;
first=new;
}


void insertEnd(int ele)
{
	lstptr new,temp;
	new=getNode();
	new->data=ele;
	new->link=NULL;
		if(first!=NULL)
		{
temp=first;
while(temp->link!=NULL)
temp=temp->link;
temp->link=new;
}
else
first=new;
}


void display()
{
lstptr temp;
	if(first==NULL)
	{
		printf("List is empty");
		exit(0);
	}
	temp=first;
		while(temp->link!=NULL)
		{
	printf("%d\t",temp->data);
	temp=temp->link;
		}
	printf("%d\n",temp->data);
}


void deleteBegin()
{
lstptr temp;
if(first==NULL)
{
printf("List empty");
}
else
{
temp=first;
if(first->link==NULL)
first=NULL;
else
first=first->link;
free(temp);
}
}





void deleteEnd()
{
lstptr temp,prev;
if(first==NULL)
{
printf("List empty");
}
else
{
temp=first;
if(first->link==NULL)
first=NULL;
else
{
prev=temp;
while(temp->link!=NULL)
{
prev=temp;
temp=temp->link;
}
free(temp);
}
}
}




void main()
{
int ch,ele,opt=1;
while(opt)
{
printf("\n1.INSERT_BEGIN\n2.INSERT_END\n3.DELETE_BEGIN\n4.DELETE_END\n5.DELETE_SPECIFIC\n6.DISPLAY\n");
printf("Enter your choice\n");
scanf("%d",&ch);
switch(ch)
{
case 1:printf("Enter element to be inserted");
	scanf("%d",&ele);
	insertBegin(ele);
	break;
case 2:printf("Enter element to be inserted");
	scanf("%d",&ele);
	insertEnd(ele);
	break;
case 3:deleteBegin();
	break;
case 4:deleteEnd();
	break;
case 6:display();
	break;
}
printf("\nDo you want to continue\n");
scanf("%d",&opt);
}
}
	

