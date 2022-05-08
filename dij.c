#include<stdio.h>
#include<stdlib.h>
void main()
{
int cost[10][10],distance[10],path[10][10],n,v,p,row,column,min,index=1,i,j;
printf("enter no.of nodes");
scanf("%d",&n);
printf("enter cost matrix");
for(i=1;i<=n;i++)
{
for(j=1;j<=n;j++)
{
scanf("%d",&cost[i][j]);
}}
printf("enter nodee to visit");
scanf("%d",&v);
printf("Enter path for the selected node");
scanf("%d",&p);
printf("enter path matrix\t");
for(i=1;i<=p;i++)
{
for(j=1;j<=n;j++)
{
scanf("%d",&path[i][j]);
}
}
for(i=1;i<=p;i++)
{
distance[i]=0;
row=1;
for(j=1;j<n;j++)
{
if(row!=v)
{
column=path[i][j+1];
distance[i]=distance[i]+cost[row][column];
}
row=column;
}
}
min=distance[1];
for(i=1;i<=p;i++)
{
if(distance[i]<=min)
{
min=distance[i];
index=i;
}}
printf("min distance is %d\n",min);
printf("min distnce path is\n");
for(i=1;i<=n;i++)
{
if(path[index][i]!=0)
printf("%d",path[index][i]);
}}
