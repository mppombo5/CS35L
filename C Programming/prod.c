#include <stdio.h>
#include <math.h>

void power(double* a, double* b, double* c) {
    *c = pow(*a, *b);
}

int main() {
    double a, b, c;
    a = 2;
    b = 4;
    power(&a, &b, &c);
    printf("%lf", c);
}
