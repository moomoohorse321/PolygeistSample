// RUN: cgeist -O0 %stdinclude %s -S > %s.mlir 
// RUN: cgeist -O0 %stdinclude %s -o %s.exec 

#include <stdio.h>
#include <stdlib.h>

int approx_base(int n, int state) {
    int sum = 0;
    for(int i = 1; i < n; i+= 2) {
        sum += i * state;
    }
    return sum;
}

int base(int n, int state) {
    int sum = 0;
    for(int i = 1; i < n; i++) {
        sum += i * state;
    }
    return sum;
}

/**
 * run this test by ../llvm-project/build/bin/llvm-lit ~/Polygeist/tools/cgeist/Test/approxMLIR/base4.c
 * (adapt the Polygiest path to your local build)
 */
int main() {
    printf("Base function result: %d\n", base(5, 2));

    return 0;
}

// /home/hao/Polygeist/build/bin/cgeist -resource-dir=/home/hao/Polygeist/llvm-project/build/lib/clang/18 -I /home/hao/Polygeist/tools/cgeist/Test/polybench/utilities /home/hao/Polygeist/tools/cgeist/Test/approxMLIR/base2_compiled.mlir -import-mlir -o base2.exec