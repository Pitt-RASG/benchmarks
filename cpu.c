#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>

int main()
{
	pid_t pid = getpid();
	printf("cpu pid: %d\n", pid);
	int agg = 0;
	for (uint64_t counter = 0; counter < 1000000000; counter++) {
		agg = (agg + (agg/4)) % 10;
	}
	return 0;
}
