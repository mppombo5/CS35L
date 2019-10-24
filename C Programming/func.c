#include <stdio.h>

void incInt(int* i) {
    (*i)++;
}

int main(int argc, char* argv[]) {
    if (argc > 2) {
        printf("Too many args!\n");
        return 1;
    }
    else if (argc <= 1) {
        printf("Not enough args!\n");
        return 1;
    }
    else {
        int inc = argv[1][0] - '0';
        incInt(&inc);
        printf("%d", inc);
        return 0;
    }
}
