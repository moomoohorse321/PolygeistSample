// RUN: cgeist -O0 %stdinclude %s -S > %s.mlir 
// RUN: cgeist -O0 %stdinclude %s -o %s.exec 

#include <stdio.h>
#include <stdlib.h>


void accumulate_point_to_centroid(double *point, double *centroid_sum, int dim) {
    for (int j = 0; j < dim; j++) {
        centroid_sum[j] += point[j];
    }
}

void base(int n, double *sum, double *ans, int state) {
    
    accumulate_point_to_centroid(sum, ans, n);
    return ;
}

/**
 * run this test by ../llvm-project/build/bin/llvm-lit ~/Polygeist/build/tools/cgeist/Test/approxMLIR/base5.c
 * (adapt the Polygiest path to your local build)
 */
int main() {
    double sum[5] = {1, 2, 3, 4, 5};
    double centroid_sum[5] = {0, 0, 0, 0, 0};
    base(5, sum, centroid_sum, 2);
    for(int i = 0; i < 5; i++) {
        printf("%f ",centroid_sum[i]);
    }

    return 0;
}

// /home/hao/Polygeist/build/bin/cgeist -resource-dir=/home/hao/Polygeist/llvm-project/build/lib/clang/18 -I /home/hao/Polygeist/tools/cgeist/Test/polybench/utilities /home/hao/Polygeist/tools/cgeist/Test/approxMLIR/base2_compiled.mlir -import-mlir -o base2.exec

