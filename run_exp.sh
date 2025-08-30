# cd to build
BENCH=$1
ROOT=${2:-/home/hao/Polygeist}
${ROOT}/llvm-project/build/bin/llvm-lit ${ROOT}/build/tools/cgeist/Test/approxMLIR/approx_${BENCH}.c
bash ${ROOT}/tools/cgeist/Test/approxMLIR/merge.bash ${BENCH}
/home/hao/Polygeist/build/bin/polygeist-opt /home/hao/Polygeist/tools/cgeist/Test/approxMLIR/approx_lavaMD.mlir -pre-emit-transform -emit-approx -config-approx -transform-approx > test.mlir