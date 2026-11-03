#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>

int main() {
    int pipefd[2]; // Array to hold pipe file descriptors (pipefd[0] is read, pipefd[1] is write)
    pid_t pid;
    char write_msg[] = "Hello Parent! This message is from your Child process via Pipe.";
    char read_msg[100];

    // Creating the pipe
    if (pipe(pipefd) == -1) {
        fprintf(stderr, "Pipe Creation Failed\n");
        return 1;
    }

    // Creating a child process
    pid = fork();

    if (pid < 0) {
        fprintf(stderr, "Fork Failed\n");
        return 1;
    }

    if (pid == 0) {
        // --- CHILD PROCESS ---
        // Child will write to the pipe, so close the unused read end
        close(pipefd[0]);

        printf("[Child]: Sending message to Parent process...\n");
        write(pipefd[1], write_msg, strlen(write_msg) + 1);
        
        close(pipefd[1]); // Close the write end after sending
        exit(0);
    } else {
        // --- PARENT PROCESS ---
        // Parent will read from the pipe, so close the unused write end
        close(pipefd[1]);

        printf("[Parent]: Waiting to receive message from Child...\n");
        read(pipefd[0], read_msg, sizeof(read_msg));
        
        printf("[Parent]: Message successfully received: \"%s\"\n", read_msg);
        
        close(pipefd[0]); // Close the read end after reading
    }

    return 0;
}
