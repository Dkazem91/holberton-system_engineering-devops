#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
/**
 * infinite_while - sleeps forever
 * Return: 1
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
/**
 * main - creates 5 zombies
 * Return: always 1
 */
int main(void)
{
	int i;

	for (i = 0; i < 5; i++)
	{
		if (fork() == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			exit(0);
		}
	}
	infinite_while();
	return (0);
}
