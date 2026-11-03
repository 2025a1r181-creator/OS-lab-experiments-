#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid;

    printf("[Parent Process] Current PID: %d. Branching out via fork()...\n", getpid());
    
    // Creating Child process
    pid = fork();

    if (pid < 0) {
        fprintf(stderr, "Fork Execution Failed.\n");
        return 1;
    }

    if (pid == 0) {
        // --- Inside Child Process Context ---
        printf("[Child Process] Hello! My assigned PID is: %d\n", getpid());
        printf("[Child Process] Doing task work and exiting...\n");
        sleep(3); // Simulating execution duration work delay
        exit(0); 
    } else {
        // --- Inside Parent Process Context ---
        printf("[Parent Process] Spawned child with PID: %d. Standing by via wait()...\n", pid);
        
        // Wait call locks until child process terminates execution
        wait(NULL); 
        
        printf("[Parent Process] Logged termination of Child PID: %d. Parent shutting down safely.\n", pid);
    }

    return 0;
}
