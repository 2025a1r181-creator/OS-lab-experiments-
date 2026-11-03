#include <stdio.h>

int main() {
    printf("[CPU-BOUND] Starting infinite mathematical computations. Check 'top' command...\n");
    unsigned long long i = 0;
    while(1) {
        i++; // Pure CPU mathematical calculations cycle
    }
    return 0;
}
