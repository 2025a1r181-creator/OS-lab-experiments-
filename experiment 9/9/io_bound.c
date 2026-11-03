#include <stdio.h>
#include <unistd.h>

int main() {
    printf("[I/O-BOUND] Starting continuous file write sequences...\n");
    FILE *fp;
    while(1) {
        fp = fopen("temp_io.txt", "w");
        if (fp != NULL) {
            fprintf(fp, "Writing temporary block data stream to secondary storage disk.\n");
            fclose(fp);
        }
        usleep(5000); // Forces process to go to sleep/wait state for disk synchronization
    }
    return 0;
}
