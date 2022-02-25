#include<stdio.h>
#include<stdlib.h>
int a[10][10],n;
int min(int a,int b)
{
return a<b?a:b;
}
void floyd()
{
int i,j,k;
for(k=1;k<=n;k++)
{
for(i=1;i<=n;i++)
{
for(j=1;j<=n;j++)
{
a[i][j]=min(a[i][j],a[i][k]+a[k][j]);
}
}
}
}
int main()
{
int i,j;
printf("Enter number of nodes");
scanf("%d",&n);
printf("Enter matrix");
for(i=1;i<=n;i++)
{
for(j=1;j<=n;j++)
{
scanf("%d",&a[i][j]);
if(a[i][j]==0)
a[i][j]=999;
if(i==j)
a[i][j]=0;
}
}
floyd();
printf("Distance vector is\n");
for(i=1;i<=n;i++)
{
for(j=1;j<=n;j++)
{
printf("%2d",a[i][j]);
}
printf("\n");
}
return(0);
}
