// RUN: cgeist -O0 %stdinclude %s -S > %s.mlir 
// RUN: cgeist -O0 %stdinclude %s -o %s.exec 

#include <stdio.h>
#include <stdlib.h>

int base(int n, int state) {
    int sum = 0;
    for(int i = 1; i < n; i++) {
        sum += i * state;
    }
    return sum;
}

/**
 * run this test by ../llvm-project/build/bin/llvm-lit ~/Polygeist/build/tools/cgeist/Test/approxMLIR/base.c
 * (adapt the Polygiest path to your local build)
 */
int main() {
    printf("Base function result: %d\n", base(5, 2));

    return 0;
}