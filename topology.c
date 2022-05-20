#include<stdio.h>
int matr[10][10],n,visited[10],count=0;
int topo[10],k=0;
void dfs(int v)
{
int w;
count++;
visited[v]=count;
for(w=0;w<n;w++)
if(visited[w]==0 && matr[v][w]==1)
dfs(w);
printf("%d---",v);
topo[k++]=v;
}
void main()
{
int i,j;
printf("enter the matrix limit:=");
scanf("%d",&n);
printf("enter the matrix values:\n");
for(i=0;i<n;i++)
{
for(j=0;j<n;j++)
{
scanf("%d",&matr[i][j]);
}
}
printf("the enterd matrix are\n");
for(i=0;i<n;i++)
{
for(j=0;j<n;j++)
{
printf("%d\t",matr[i][j]);
}
printf("\n");
}

for(i=0;i<n;i++)
visited[i]=0;
dfs(0);
if(count==n)
printf("\nthe graph is connected\n");
else
printf("graph is not connected\n");
printf("topological sorting is\n");
for(i=n-1;i>=0;i--)
printf("%d  ",topo[i]); 
}

