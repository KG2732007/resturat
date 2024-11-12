#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>


int main() {
    pid_t pid;
    pid=fork();
    wait(NULL);
    printf("Hello\n");
    if (pid==0)
    {
        printf("I am a child process\n");
    }
    else
    {
        printf("I am a parent process\n");
    }
    return 0;
}