#include<stdio.h>
#include<stdlib.h>

int array[10][10];
int visited[10];
int number;
int count = 0;

void dfs(int source) {
	count++;
	visited[source] = count;
	//printf("%d\n", count);
	int total = 0;
	for (int w = 0; w < number; w++) {
		if (visited[w] == 0 && array[source][w] == 1) 
			dfs(w);
		else {
			if (array[source][w] == 0)
				total++;	
			if (total == number) {
				printf("Graph is disconnected\n");
				exit(0);		
			}		
		}
		
	}
	printf("%d--", source);		  
}

void main() {
	printf("Enter the number of nodes:");
	scanf("%d", &number);
	printf("Read the adjacency matrix:");
	for (int i = 0; i < number; i++) {
		//visited[i] = 0;
		for (int j = 0; j < number; j++) {
			scanf("%d", &array[i][j]);	
		}	
	}
	printf("The matrix is:\n");
	for (int i = 0; i < number; i++) {
		for (int j = 0; j < number; j++) {
			printf("%d\t", array[i][j]);	
		}	
		printf("\n");
	}
	printf("-----------------DFS Traversal-------------------\n");
	for (int t = 0; t < number; t++) {
		visited[t] = 0;
	}
	dfs(0);
	printf("\n");
	if (count == number) {
		printf("Graph is connected\n");	
	} else {
		printf("Graph is not connected\n");		
	}
}
