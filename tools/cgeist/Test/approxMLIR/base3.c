// RUN: cgeist -O0 %stdinclude %s -S > %s.mlir 
// RUN: cgeist -O0 %stdinclude %s -o %s.exec 

#include <stdio.h>
#include <stdlib.h>

void base(int n, int state, int *sum) {
    int _sum = 0;
    for(int i = 1; i < n; i++) {
        _sum += i * state;
    }
    *sum = _sum;
    return ;
}

/**
 * run this test by ../llvm-project/build/bin/llvm-lit ~/Polygeist/build/tools/cgeist/Test/approxMLIR/base3.c
 * (adapt the Polygiest path to your local build)
 */
int main() {
    int sum = 0;
    base(5, 2, &sum);
    printf("Base function result: %d\n", sum);

    return 0;
}

// /home/hao/Polygeist/build/bin/cgeist -resource-dir=/home/hao/Polygeist/llvm-project/build/lib/clang/18 -I /home/hao/Polygeist/tools/cgeist/Test/polybench/utilities /home/hao/Polygeist/tools/cgeist/Test/approxMLIR/base2_compiled.mlir -import-mlir -o base2.exec