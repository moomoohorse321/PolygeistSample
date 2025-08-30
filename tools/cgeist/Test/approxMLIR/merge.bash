#!/bin/bash

# Usage: ./run_merge.sh <benchmark> [POLYGEIST_ROOT]
# Example: ./run_merge.sh blackscholes
# Example with custom root: ./run_merge.sh blackscholes /path/to/Polygeist

BENCH=$1
ROOT=${2:-/home/hao/Polygeist}

python3 $ROOT/approxMLIR/external-tools/approx/merge.py \
  $ROOT/tools/cgeist/Test/approxMLIR/approx_${BENCH}.c.mlir \
  $ROOT/approxMLIR/test/approxMLIR/benchmarks/${BENCH}/annotation.mlir \
  -o $ROOT/tools/cgeist/Test/approxMLIR/approx_${BENCH}.mlir
