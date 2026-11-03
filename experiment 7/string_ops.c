#include <stdio.h>
#include <string.h>

int main() {
    char input_str[] = "WelcomeToLinuxOperatingSystemLab";
    
    // Calculate length
    int length = strlen(input_str);
    
    // Extract substring (indices 9 to 13 for "Linux")
    char substring[6];
    strncpy(substring, &input_str[9], 5);
    substring[5] = '\0'; // Null terminator
    
    printf("C Program Results:\n");
    printf("Original String: %s\n", input_str);
    printf("Length: %d\n", length);
    printf("Substring (9,5): %s\n", substring);
    
    return 0;
}
