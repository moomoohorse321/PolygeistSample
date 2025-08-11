// RUN: cgeist -O0 %stdinclude %s -S > %s.mlir 
// RUN: cgeist -O0 %stdinclude %s -o %s.exec 

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <math.h>

void v1_impl(int n, int *sum, int state) {
    int _sum = 0;
    for(int i = 1; i < n; i++) {
        _sum += i * state;
    }
    *sum = _sum;
}

void v2_impl(int n, int *sum, int state) {
    int _sum = 0;
    for(int i = 1; i < n; i+=2) {
        _sum += i * state;
    }
    *sum = _sum;
}

void v3_impl(int n, int *sum, int state) {
    int _sum = 0;
    for(int i = 1; i < n; i+=4) {
        _sum += i * state;
    }
    *sum = _sum;
}


void base(int n, int *sum, int state) {
    if(n <= 10) {
        v1_impl(n, sum, state);
    } else if (n <= 20) {
        v2_impl(n, sum, state);
    } else {
        v3_impl(n, sum, state);
    }
    return ;
}

/**
 * run this test by ../llvm-project/build/bin/llvm-lit ~/Polygeist/build/tools/cgeist/Test/approxMLIR/base4.c
 * (adapt the Polygiest path to your local build)
 */
int main() {
    // srand(time(NULL));
    int sum = 0;

    base(5, &sum, 2);
    printf("Base function result: %d\n", sum);

    return 0;
}

// /home/hao/Polygeist/build/bin/cgeist -resource-dir=/home/hao/Polygeist/llvm-project/build/lib/clang/18 -I /home/hao/Polygeist/tools/cgeist/Test/polybench/utilities /home/hao/Polygeist/tools/cgeist/Test/approxMLIR/base2_compiled.mlir -import-mlir -o base2.exec