module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  "approxMLIR.util.annotation.decision_tree"() <{
    func_name = "update_node_rank",
    transform_type = "func_substitute",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 50>,
    thresholds_lowers = array<i32: 1>,
    decision_values = array<i32: 0, 1, 2>,
    thresholds = array<i32: 24>,
    decisions = array<i32: 0, 1>
  }> : () -> ()

  // Required by func_substitute
  "approxMLIR.util.annotation.convert_to_call"() <{func_name = "update_node_rank"}> : () -> ()


  // Knob C - pagerank_worker_impl
  "approxMLIR.util.annotation.decision_tree"() <{
    func_name = "pagerank_worker_impl",
    transform_type = "func_substitute",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 5>,
    thresholds_lowers = array<i32: 1>,
    decision_values = array<i32: 0, 1, 2>,
    thresholds = array<i32: 3>,
    decisions = array<i32: 0, 1>
  }> : () -> ()

  // Required by func_substitute
  "approxMLIR.util.annotation.convert_to_call"() <{func_name = "pagerank_worker_impl"}> : () -> ()
  llvm.mlir.global internal constant @str39("calloc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str38("realloc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str37("malloc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str36(" %d %d\00") {addr_space = 0 : i32}
  llvm.func @__isoc99_sscanf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str35("Failed to open '%s': %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str34("r\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str33("Usage: %s [options]\0A  -m, --mode MODE         'synthetic' (default) or 'file'\0A  -f, --file PATH         edge-list file (u v per line), required for mode=file\0A  -t, --threads P         number of threads (default: 1)\0A  -n, --nodes N           nodes for synthetic (default: 10000)\0A  -d, --degree D          ~in-degree per node for synthetic (default: 10)\0A  -i, --iters K           iterations (default: 50)\0A  -a, --alpha A           damping (default: 0.85)\0A  -s, --seed S            RNG seed for synthetic (default: 1)\0A  -p, --print             print final ranks (can be large!)\0A  -h, --help              show this help\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str32("pr(%d) = %.12f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str31("%4d | %9d | %.12f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str30("-----|-----------|------------------\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str29("Rank |   Node ID |   PageRank Score\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str28("\0A--- Top 20 Ranked Pages ---\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str27("    Max Rank: %.12f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str26("    Min Rank: %.12f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str25("Average Rank: %.12f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str24("   Sum of Ranks: %.6f (should be ~1.0)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str23("  Total Nodes: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str22("\0A--- PageRank Statistics ---\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str21("Time: %.6f seconds\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str20("pthread_create\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str19("pthread_barrier_init\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str18("Unknown mode '%s'\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str17("Synthetic graph: N=%d, ~in-degree=%d, M=%d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str16("Invalid N or DEG for synthetic graph.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("Loaded graph from '%s': N=%d, M=%d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stdout() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str14("Empty or unreadable graph file.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str13("mode=file requires --file PATH\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str12("alpha must be in (0,1), got %g\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  memref.global @optarg : memref<1xmemref<?xi8>>
  llvm.mlir.global internal constant @str11("e:m:f:t:n:d:i:a:s:ph\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str10("help\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("print\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("seed\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("alpha\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("iters\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("degree\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("nodes\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("threads\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("file\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("mode\00") {addr_space = 0 : i32}
  memref.global "private" @"main@static@long_opts@init" : memref<1xi1> = dense<true>
  memref.global "private" @"main@static@long_opts" : memref<11x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>> = uninitialized
  llvm.mlir.global internal constant @str0("synthetic\00") {addr_space = 0 : i32}
  func.func @compute_sum_in_neighbors(%arg0: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, %arg1: memref<?xf64>, %arg2: i32, %arg3: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %2 = llvm.getelementptr %1[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %3 = llvm.load %2 : !llvm.ptr -> memref<?xi32>
    %4 = arith.index_cast %arg2 : i32 to index
    %5 = affine.load %3[symbol(%4)] : memref<?xi32>
    %6 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %7 = llvm.getelementptr %6[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %8 = llvm.load %7 : !llvm.ptr -> memref<?xi32>
    %9 = affine.load %8[symbol(%0) + 1] : memref<?xi32>
    %10 = arith.index_cast %9 : i32 to index
    %11 = arith.index_cast %5 : i32 to index
    %12 = scf.for %arg4 = %11 to %10 step %c1 iter_args(%arg5 = %cst) -> (f64) {
      %13 = arith.subi %arg4, %11 : index
      %14 = arith.index_cast %5 : i32 to index
      %15 = arith.addi %14, %13 : index
      %16 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %17 = llvm.getelementptr %16[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %18 = llvm.load %17 : !llvm.ptr -> memref<?xi32>
      %19 = memref.load %18[%15] : memref<?xi32>
      %20 = llvm.getelementptr %16[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %21 = llvm.load %20 : !llvm.ptr -> memref<?xi32>
      %22 = arith.index_cast %19 : i32 to index
      %23 = memref.load %21[%22] : memref<?xi32>
      %24 = arith.cmpi sgt, %23, %c0_i32 : i32
      %25 = scf.if %24 -> (f64) {
        %26 = memref.load %arg1[%22] : memref<?xf64>
        %27 = arith.sitofp %23 : i32 to f64
        %28 = arith.divf %26, %27 : f64
        %29 = arith.addf %arg5, %28 : f64
        scf.yield %29 : f64
      } else {
        scf.yield %arg5 : f64
      }
      scf.yield %25 : f64
    }
    return %12 : f64
  }
  func.func @approx_update_node_rank_1(%arg0: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, %arg1: memref<?xf64>, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: f64, %arg6: i32, %arg7: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2 = arith.constant 2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i32 = arith.constant 0 : i32
    %cst_0 = arith.constant 2.000000e+00 : f64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %2 = llvm.getelementptr %1[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %3 = llvm.load %2 : !llvm.ptr -> memref<?xi32>
    %4 = arith.index_cast %arg2 : i32 to index
    %5 = affine.load %3[symbol(%4)] : memref<?xi32>
    %6 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %7 = llvm.getelementptr %6[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %8 = llvm.load %7 : !llvm.ptr -> memref<?xi32>
    %9 = affine.load %8[symbol(%0) + 1] : memref<?xi32>
    %10 = arith.index_cast %9 : i32 to index
    %11 = arith.index_cast %5 : i32 to index
    %12 = scf.for %arg8 = %11 to %10 step %c2 iter_args(%arg9 = %cst) -> (f64) {
      %17 = arith.subi %arg8, %11 : index
      %18 = arith.index_cast %5 : i32 to index
      %19 = arith.addi %18, %17 : index
      %20 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %21 = llvm.getelementptr %20[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %22 = llvm.load %21 : !llvm.ptr -> memref<?xi32>
      %23 = memref.load %22[%19] : memref<?xi32>
      %24 = llvm.getelementptr %20[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %25 = llvm.load %24 : !llvm.ptr -> memref<?xi32>
      %26 = arith.index_cast %23 : i32 to index
      %27 = memref.load %25[%26] : memref<?xi32>
      %28 = arith.cmpi sgt, %27, %c0_i32 : i32
      %29 = scf.if %28 -> (f64) {
        %30 = memref.load %arg1[%26] : memref<?xf64>
        %31 = arith.sitofp %27 : i32 to f64
        %32 = arith.divf %30, %31 : f64
        %33 = arith.addf %arg9, %32 : f64
        scf.yield %33 : f64
      } else {
        scf.yield %arg9 : f64
      }
      scf.yield %29 : f64
    }
    %13 = arith.mulf %12, %cst_0 : f64
    %14 = arith.addf %arg4, %arg5 : f64
    %15 = arith.mulf %arg3, %13 : f64
    %16 = arith.addf %14, %15 : f64
    return %16 : f64
  }
  func.func @approx_update_node_rank_2(%arg0: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, %arg1: memref<?xf64>, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: f64, %arg6: i32, %arg7: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i32 = arith.constant 0 : i32
    %cst_0 = arith.constant 3.000000e+00 : f64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %2 = llvm.getelementptr %1[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %3 = llvm.load %2 : !llvm.ptr -> memref<?xi32>
    %4 = arith.index_cast %arg2 : i32 to index
    %5 = affine.load %3[symbol(%4)] : memref<?xi32>
    %6 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %7 = llvm.getelementptr %6[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %8 = llvm.load %7 : !llvm.ptr -> memref<?xi32>
    %9 = affine.load %8[symbol(%0) + 1] : memref<?xi32>
    %10 = arith.index_cast %9 : i32 to index
    %11 = arith.index_cast %5 : i32 to index
    %12 = scf.for %arg8 = %11 to %10 step %c3 iter_args(%arg9 = %cst) -> (f64) {
      %17 = arith.subi %arg8, %11 : index
      %18 = arith.index_cast %5 : i32 to index
      %19 = arith.addi %18, %17 : index
      %20 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %21 = llvm.getelementptr %20[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %22 = llvm.load %21 : !llvm.ptr -> memref<?xi32>
      %23 = memref.load %22[%19] : memref<?xi32>
      %24 = llvm.getelementptr %20[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %25 = llvm.load %24 : !llvm.ptr -> memref<?xi32>
      %26 = arith.index_cast %23 : i32 to index
      %27 = memref.load %25[%26] : memref<?xi32>
      %28 = arith.cmpi sgt, %27, %c0_i32 : i32
      %29 = scf.if %28 -> (f64) {
        %30 = memref.load %arg1[%26] : memref<?xf64>
        %31 = arith.sitofp %27 : i32 to f64
        %32 = arith.divf %30, %31 : f64
        %33 = arith.addf %arg9, %32 : f64
        scf.yield %33 : f64
      } else {
        scf.yield %arg9 : f64
      }
      scf.yield %29 : f64
    }
    %13 = arith.mulf %12, %cst_0 : f64
    %14 = arith.addf %arg4, %arg5 : f64
    %15 = arith.mulf %arg3, %13 : f64
    %16 = arith.addf %14, %15 : f64
    return %16 : f64
  }
  func.func @update_node_rank(%arg0: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, %arg1: memref<?xf64>, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: f64, %arg6: i32, %arg7: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = call @compute_sum_in_neighbors(%arg0, %arg1, %arg2, %arg6) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, i32, i32) -> f64
    %1 = arith.addf %arg4, %arg5 : f64
    %2 = arith.mulf %arg3, %0 : f64
    %3 = arith.addf %1, %2 : f64
    return %3 : f64
  }
  func.func @approx_pagerank_worker_impl_1(%arg0: memref<?xi8>, %arg1: i32) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c25_i32 = arith.constant 25 : i32
    %c100_i32 = arith.constant 100 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : f64
    %2 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %3 = llvm.load %2 : !llvm.ptr -> i32
    %4 = arith.index_cast %3 : i32 to index
    %5 = llvm.getelementptr %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %6 = llvm.load %5 : !llvm.ptr -> i32
    %7 = llvm.getelementptr %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %8 = llvm.load %7 : !llvm.ptr -> i32
    %9 = arith.cmpi eq, %3, %c0_i32 : i32
    %10 = llvm.getelementptr %2[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %11 = llvm.load %10 : !llvm.ptr -> memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
    %12 = llvm.getelementptr %2[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %13 = llvm.load %12 : !llvm.ptr -> f64
    %14 = llvm.getelementptr %2[0, 7] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %15 = llvm.load %14 : !llvm.ptr -> f64
    %16 = arith.muli %3, %8 : i32
    %17 = arith.divsi %16, %6 : i32
    %18 = arith.addi %3, %c1_i32 : i32
    %19 = arith.muli %18, %8 : i32
    %20 = arith.divsi %19, %6 : i32
    %21 = llvm.getelementptr %2[0, 12] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %22:8 = scf.while (%arg2 = %0, %arg3 = %0, %arg4 = %1, %arg5 = %0, %arg6 = %1, %arg7 = %0, %arg8 = %1, %arg9 = %c0_i32) : (i32, i32, f64, i32, f64, i32, f64, i32) -> (i32, i32, f64, i32, f64, i32, f64, i32) {
      %25 = llvm.load %21 : !llvm.ptr -> i32
      %26 = arith.cmpi slt, %arg9, %25 : i32
      scf.condition(%26) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9 : i32, i32, f64, i32, f64, i32, f64, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: f64, %arg5: i32, %arg6: f64, %arg7: i32, %arg8: f64, %arg9: i32):
      %25 = func.call @rand() : () -> i32
      %26 = arith.remsi %25, %c100_i32 : i32
      %27 = arith.cmpi sge, %26, %c25_i32 : i32
      %28:7 = scf.if %27 -> (i32, f64, i32, f64, f64, i32, i32) {
        %30 = arith.index_cast %20 : i32 to index
        %31 = arith.index_cast %17 : i32 to index
        %32 = arith.subi %30, %31 : index
        %33 = arith.index_cast %17 : i32 to index
        %34 = arith.addi %33, %32 : index
        %35 = arith.index_cast %34 : index to i32
        %36 = scf.for %arg10 = %31 to %30 step %c1 iter_args(%arg11 = %cst) -> (f64) {
          %56 = arith.subi %arg10, %31 : index
          %57 = arith.index_cast %17 : i32 to index
          %58 = arith.addi %57, %56 : index
          %59 = "polygeist.memref2pointer"(%11) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
          %60 = llvm.getelementptr %59[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
          %61 = llvm.load %60 : !llvm.ptr -> memref<?xi32>
          %62 = memref.load %61[%58] : memref<?xi32>
          %63 = arith.cmpi eq, %62, %c0_i32 : i32
          %64 = scf.if %63 -> (f64) {
            %65 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
            %66 = llvm.load %65 : !llvm.ptr -> memref<?xf64>
            %67 = memref.load %66[%58] : memref<?xf64>
            %68 = arith.addf %arg11, %67 : f64
            scf.yield %68 : f64
          } else {
            scf.yield %arg11 : f64
          }
          scf.yield %64 : f64
        }
        %37 = llvm.getelementptr %2[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %38 = llvm.load %37 : !llvm.ptr -> memref<?xf64>
        affine.store %36, %38[symbol(%4)] : memref<?xf64>
        %39 = arith.select %9, %6, %arg5 : i32
        %40 = scf.if %9 -> (f64) {
          %56 = arith.index_cast %6 : i32 to index
          %57 = scf.for %arg10 = %c0 to %56 step %c1 iter_args(%arg11 = %cst) -> (f64) {
            %63 = llvm.getelementptr %2[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
            %64 = llvm.load %63 : !llvm.ptr -> memref<?xf64>
            %65 = memref.load %64[%arg10] : memref<?xf64>
            %66 = arith.addf %arg11, %65 : f64
            scf.yield %66 : f64
          }
          %58 = llvm.getelementptr %2[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %59 = llvm.load %58 : !llvm.ptr -> memref<?xf64>
          %60 = arith.sitofp %8 : i32 to f64
          %61 = arith.divf %57, %60 : f64
          %62 = arith.mulf %13, %61 : f64
          affine.store %62, %59[0] : memref<?xf64>
          scf.yield %57 : f64
        } else {
          scf.yield %arg6 : f64
        }
        %41 = llvm.getelementptr %2[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %42 = llvm.load %41 : !llvm.ptr -> memref<?xf64>
        %43 = affine.load %42[0] : memref<?xf64>
        %44 = arith.index_cast %20 : i32 to index
        %45 = arith.index_cast %17 : i32 to index
        %46 = arith.subi %44, %45 : index
        %47 = arith.index_cast %17 : i32 to index
        %48 = arith.addi %47, %46 : index
        %49 = arith.index_cast %48 : index to i32
        scf.for %arg10 = %45 to %44 step %c1 {
          %56 = arith.subi %arg10, %45 : index
          %57 = arith.index_cast %17 : i32 to index
          %58 = arith.addi %57, %56 : index
          %59 = arith.index_cast %58 : index to i32
          %60 = "polygeist.memref2pointer"(%11) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
          %61 = llvm.getelementptr %60[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
          %62 = llvm.load %61 : !llvm.ptr -> memref<?xi32>
          %63 = arith.addi %59, %c1_i32 : i32
          %64 = arith.index_cast %63 : i32 to index
          %65 = memref.load %62[%64] : memref<?xi32>
          %66 = memref.load %62[%58] : memref<?xi32>
          %67 = arith.subi %65, %66 : i32
          %68 = llvm.getelementptr %2[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %69 = llvm.load %68 : !llvm.ptr -> memref<?xf64>
          %70 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %71 = llvm.load %70 : !llvm.ptr -> memref<?xf64>
          %72 = func.call @update_node_rank(%11, %71, %59, %13, %15, %43, %67, %arg9) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, i32, f64, f64, f64, i32, i32) -> f64
          memref.store %72, %69[%58] : memref<?xf64>
        }
        %50 = arith.index_cast %20 : i32 to index
        %51 = arith.index_cast %17 : i32 to index
        %52 = arith.subi %50, %51 : index
        %53 = arith.index_cast %17 : i32 to index
        %54 = arith.addi %53, %52 : index
        %55 = arith.index_cast %54 : index to i32
        scf.for %arg10 = %51 to %50 step %c1 {
          %56 = arith.subi %arg10, %51 : index
          %57 = arith.index_cast %17 : i32 to index
          %58 = arith.addi %57, %56 : index
          %59 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %60 = llvm.load %59 : !llvm.ptr -> memref<?xf64>
          %61 = llvm.getelementptr %2[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %62 = llvm.load %61 : !llvm.ptr -> memref<?xf64>
          %63 = memref.load %62[%58] : memref<?xf64>
          memref.store %63, %60[%58] : memref<?xf64>
        }
        scf.yield %35, %36, %39, %40, %43, %49, %55 : i32, f64, i32, f64, f64, i32, i32
      } else {
        scf.yield %arg7, %arg8, %arg5, %arg6, %arg4, %arg3, %arg2 : i32, f64, i32, f64, f64, i32, i32
      }
      %29 = arith.addi %arg9, %c1_i32 : i32
      scf.yield %28#6, %28#5, %28#4, %28#2, %28#3, %28#0, %28#1, %29 : i32, i32, f64, i32, f64, i32, f64, i32
    }
    %23 = llvm.mlir.zero : !llvm.ptr
    %24 = "polygeist.pointer2memref"(%23) : (!llvm.ptr) -> memref<?xi8>
    return %24 : memref<?xi8>
  }
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @approx_pagerank_worker_impl_2(%arg0: memref<?xi8>, %arg1: i32) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2_i32 = arith.constant 2 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : f64
    %2 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %3 = llvm.load %2 : !llvm.ptr -> i32
    %4 = arith.index_cast %3 : i32 to index
    %5 = llvm.getelementptr %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %6 = llvm.load %5 : !llvm.ptr -> i32
    %7 = llvm.getelementptr %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %8 = llvm.load %7 : !llvm.ptr -> i32
    %9 = arith.cmpi eq, %3, %c0_i32 : i32
    %10 = llvm.getelementptr %2[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %11 = llvm.load %10 : !llvm.ptr -> memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
    %12 = llvm.getelementptr %2[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %13 = llvm.load %12 : !llvm.ptr -> f64
    %14 = llvm.getelementptr %2[0, 7] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %15 = llvm.load %14 : !llvm.ptr -> f64
    %16 = arith.muli %3, %8 : i32
    %17 = arith.divsi %16, %6 : i32
    %18 = arith.addi %3, %c1_i32 : i32
    %19 = arith.muli %18, %8 : i32
    %20 = arith.divsi %19, %6 : i32
    %21 = llvm.getelementptr %2[0, 12] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %22 = arith.index_cast %20 : i32 to index
    %23 = arith.index_cast %17 : i32 to index
    %24 = llvm.getelementptr %2[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %25 = llvm.getelementptr %2[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %26 = arith.index_cast %20 : i32 to index
    %27 = arith.index_cast %17 : i32 to index
    %28 = arith.index_cast %20 : i32 to index
    %29 = arith.index_cast %17 : i32 to index
    %30:3 = scf.while (%arg2 = %0, %arg3 = %1, %arg4 = %c0_i32) : (i32, f64, i32) -> (i32, f64, i32) {
      %33 = llvm.load %21 : !llvm.ptr -> i32
      %34 = arith.cmpi slt, %arg4, %33 : i32
      scf.condition(%34) %arg2, %arg3, %arg4 : i32, f64, i32
    } do {
    ^bb0(%arg2: i32, %arg3: f64, %arg4: i32):
      %33 = scf.for %arg5 = %23 to %22 step %c1 iter_args(%arg6 = %cst) -> (f64) {
        %40 = arith.subi %arg5, %23 : index
        %41 = arith.index_cast %17 : i32 to index
        %42 = arith.addi %41, %40 : index
        %43 = "polygeist.memref2pointer"(%11) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %44 = llvm.getelementptr %43[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        %45 = llvm.load %44 : !llvm.ptr -> memref<?xi32>
        %46 = memref.load %45[%42] : memref<?xi32>
        %47 = arith.cmpi eq, %46, %c0_i32 : i32
        %48 = scf.if %47 -> (f64) {
          %49 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %50 = llvm.load %49 : !llvm.ptr -> memref<?xf64>
          %51 = memref.load %50[%42] : memref<?xf64>
          %52 = arith.addf %arg6, %51 : f64
          scf.yield %52 : f64
        } else {
          scf.yield %arg6 : f64
        }
        scf.yield %48 : f64
      }
      %34 = llvm.load %24 : !llvm.ptr -> memref<?xf64>
      affine.store %33, %34[symbol(%4)] : memref<?xf64>
      %35 = arith.select %9, %6, %arg2 : i32
      %36 = scf.if %9 -> (f64) {
        %40 = arith.index_cast %6 : i32 to index
        %41 = scf.for %arg5 = %c0 to %40 step %c1 iter_args(%arg6 = %cst) -> (f64) {
          %47 = llvm.getelementptr %2[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %48 = llvm.load %47 : !llvm.ptr -> memref<?xf64>
          %49 = memref.load %48[%arg5] : memref<?xf64>
          %50 = arith.addf %arg6, %49 : f64
          scf.yield %50 : f64
        }
        %42 = llvm.getelementptr %2[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %43 = llvm.load %42 : !llvm.ptr -> memref<?xf64>
        %44 = arith.sitofp %8 : i32 to f64
        %45 = arith.divf %41, %44 : f64
        %46 = arith.mulf %13, %45 : f64
        affine.store %46, %43[0] : memref<?xf64>
        scf.yield %41 : f64
      } else {
        scf.yield %arg3 : f64
      }
      %37 = llvm.load %25 : !llvm.ptr -> memref<?xf64>
      %38 = affine.load %37[0] : memref<?xf64>
      scf.for %arg5 = %27 to %26 step %c1 {
        %40 = arith.subi %arg5, %27 : index
        %41 = arith.index_cast %17 : i32 to index
        %42 = arith.addi %41, %40 : index
        %43 = arith.index_cast %42 : index to i32
        %44 = "polygeist.memref2pointer"(%11) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %45 = llvm.getelementptr %44[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        %46 = llvm.load %45 : !llvm.ptr -> memref<?xi32>
        %47 = arith.addi %43, %c1_i32 : i32
        %48 = arith.index_cast %47 : i32 to index
        %49 = memref.load %46[%48] : memref<?xi32>
        %50 = memref.load %46[%42] : memref<?xi32>
        %51 = arith.subi %49, %50 : i32
        %52 = llvm.getelementptr %2[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %53 = llvm.load %52 : !llvm.ptr -> memref<?xf64>
        %54 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %55 = llvm.load %54 : !llvm.ptr -> memref<?xf64>
        %56 = func.call @update_node_rank(%11, %55, %43, %13, %15, %38, %51, %arg4) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, i32, f64, f64, f64, i32, i32) -> f64
        memref.store %56, %53[%42] : memref<?xf64>
      }
      scf.for %arg5 = %29 to %28 step %c1 {
        %40 = arith.subi %arg5, %29 : index
        %41 = arith.index_cast %17 : i32 to index
        %42 = arith.addi %41, %40 : index
        %43 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %44 = llvm.load %43 : !llvm.ptr -> memref<?xf64>
        %45 = llvm.getelementptr %2[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %46 = llvm.load %45 : !llvm.ptr -> memref<?xf64>
        %47 = memref.load %46[%42] : memref<?xf64>
        memref.store %47, %44[%42] : memref<?xf64>
      }
      %39 = arith.addi %arg4, %c2_i32 : i32
      scf.yield %35, %36, %39 : i32, f64, i32
    }
    %31 = llvm.mlir.zero : !llvm.ptr
    %32 = "polygeist.pointer2memref"(%31) : (!llvm.ptr) -> memref<?xi8>
    return %32 : memref<?xi8>
  }
  func.func @pagerank_worker_impl(%arg0: memref<?xi8>, %arg1: i32) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : f64
    %2 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %3 = llvm.load %2 : !llvm.ptr -> i32
    %4 = arith.index_cast %3 : i32 to index
    %5 = llvm.getelementptr %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %6 = llvm.load %5 : !llvm.ptr -> i32
    %7 = llvm.getelementptr %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %8 = llvm.load %7 : !llvm.ptr -> i32
    %9 = arith.cmpi eq, %3, %c0_i32 : i32
    %10 = llvm.getelementptr %2[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %11 = llvm.load %10 : !llvm.ptr -> memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
    %12 = llvm.getelementptr %2[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %13 = llvm.load %12 : !llvm.ptr -> f64
    %14 = llvm.getelementptr %2[0, 7] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %15 = llvm.load %14 : !llvm.ptr -> f64
    %16 = arith.muli %3, %8 : i32
    %17 = arith.divsi %16, %6 : i32
    %18 = arith.addi %3, %c1_i32 : i32
    %19 = arith.muli %18, %8 : i32
    %20 = arith.divsi %19, %6 : i32
    %21 = llvm.getelementptr %2[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %22 = llvm.load %21 : !llvm.ptr -> memref<?x!llvm.struct<(i64, array<24 x i8>)>>
    %23 = call @pthread_barrier_wait(%22) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32
    %24 = llvm.getelementptr %2[0, 12] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %25 = arith.index_cast %20 : i32 to index
    %26 = arith.index_cast %17 : i32 to index
    %27 = llvm.getelementptr %2[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %28 = llvm.getelementptr %2[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %29 = llvm.getelementptr %2[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %30 = llvm.getelementptr %2[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %31 = arith.index_cast %20 : i32 to index
    %32 = arith.index_cast %17 : i32 to index
    %33 = llvm.getelementptr %2[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %34 = arith.index_cast %20 : i32 to index
    %35 = arith.index_cast %17 : i32 to index
    %36 = llvm.getelementptr %2[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %37:3 = scf.while (%arg2 = %0, %arg3 = %1, %arg4 = %c0_i32) : (i32, f64, i32) -> (i32, f64, i32) {
      %40 = llvm.load %24 : !llvm.ptr -> i32
      %41 = arith.cmpi slt, %arg4, %40 : i32
      scf.condition(%41) %arg2, %arg3, %arg4 : i32, f64, i32
    } do {
    ^bb0(%arg2: i32, %arg3: f64, %arg4: i32):
      %40 = scf.for %arg5 = %26 to %25 step %c1 iter_args(%arg6 = %cst) -> (f64) {
        %55 = arith.subi %arg5, %26 : index
        %56 = arith.index_cast %17 : i32 to index
        %57 = arith.addi %56, %55 : index
        %58 = "polygeist.memref2pointer"(%11) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %59 = llvm.getelementptr %58[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        %60 = llvm.load %59 : !llvm.ptr -> memref<?xi32>
        %61 = memref.load %60[%57] : memref<?xi32>
        %62 = arith.cmpi eq, %61, %c0_i32 : i32
        %63 = scf.if %62 -> (f64) {
          %64 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %65 = llvm.load %64 : !llvm.ptr -> memref<?xf64>
          %66 = memref.load %65[%57] : memref<?xf64>
          %67 = arith.addf %arg6, %66 : f64
          scf.yield %67 : f64
        } else {
          scf.yield %arg6 : f64
        }
        scf.yield %63 : f64
      }
      %41 = llvm.load %27 : !llvm.ptr -> memref<?xf64>
      affine.store %40, %41[symbol(%4)] : memref<?xf64>
      %42 = llvm.load %28 : !llvm.ptr -> memref<?x!llvm.struct<(i64, array<24 x i8>)>>
      %43 = func.call @pthread_barrier_wait(%42) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32
      %44 = arith.select %9, %6, %arg2 : i32
      %45 = scf.if %9 -> (f64) {
        %55 = arith.index_cast %6 : i32 to index
        %56 = scf.for %arg5 = %c0 to %55 step %c1 iter_args(%arg6 = %cst) -> (f64) {
          %62 = llvm.getelementptr %2[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
          %63 = llvm.load %62 : !llvm.ptr -> memref<?xf64>
          %64 = memref.load %63[%arg5] : memref<?xf64>
          %65 = arith.addf %arg6, %64 : f64
          scf.yield %65 : f64
        }
        %57 = llvm.getelementptr %2[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %58 = llvm.load %57 : !llvm.ptr -> memref<?xf64>
        %59 = arith.sitofp %8 : i32 to f64
        %60 = arith.divf %56, %59 : f64
        %61 = arith.mulf %13, %60 : f64
        affine.store %61, %58[0] : memref<?xf64>
        scf.yield %56 : f64
      } else {
        scf.yield %arg3 : f64
      }
      %46 = llvm.load %29 : !llvm.ptr -> memref<?x!llvm.struct<(i64, array<24 x i8>)>>
      %47 = func.call @pthread_barrier_wait(%46) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32
      %48 = llvm.load %30 : !llvm.ptr -> memref<?xf64>
      %49 = affine.load %48[0] : memref<?xf64>
      scf.for %arg5 = %32 to %31 step %c1 {
        %55 = arith.subi %arg5, %32 : index
        %56 = arith.index_cast %17 : i32 to index
        %57 = arith.addi %56, %55 : index
        %58 = arith.index_cast %57 : index to i32
        %59 = "polygeist.memref2pointer"(%11) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %60 = llvm.getelementptr %59[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        %61 = llvm.load %60 : !llvm.ptr -> memref<?xi32>
        %62 = arith.addi %58, %c1_i32 : i32
        %63 = arith.index_cast %62 : i32 to index
        %64 = memref.load %61[%63] : memref<?xi32>
        %65 = memref.load %61[%57] : memref<?xi32>
        %66 = arith.subi %64, %65 : i32
        %67 = llvm.getelementptr %2[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %68 = llvm.load %67 : !llvm.ptr -> memref<?xf64>
        %69 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %70 = llvm.load %69 : !llvm.ptr -> memref<?xf64>
        %71 = func.call @update_node_rank(%11, %70, %58, %13, %15, %49, %66, %arg4) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, i32, f64, f64, f64, i32, i32) -> f64
        memref.store %71, %68[%57] : memref<?xf64>
      }
      %50 = llvm.load %33 : !llvm.ptr -> memref<?x!llvm.struct<(i64, array<24 x i8>)>>
      %51 = func.call @pthread_barrier_wait(%50) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32
      scf.for %arg5 = %35 to %34 step %c1 {
        %55 = arith.subi %arg5, %35 : index
        %56 = arith.index_cast %17 : i32 to index
        %57 = arith.addi %56, %55 : index
        %58 = llvm.getelementptr %2[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %59 = llvm.load %58 : !llvm.ptr -> memref<?xf64>
        %60 = llvm.getelementptr %2[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %61 = llvm.load %60 : !llvm.ptr -> memref<?xf64>
        %62 = memref.load %61[%57] : memref<?xf64>
        memref.store %62, %59[%57] : memref<?xf64>
      }
      %52 = llvm.load %36 : !llvm.ptr -> memref<?x!llvm.struct<(i64, array<24 x i8>)>>
      %53 = func.call @pthread_barrier_wait(%52) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32
      %54 = arith.addi %arg4, %c1_i32 : i32
      scf.yield %44, %45, %54 : i32, f64, i32
    }
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = "polygeist.pointer2memref"(%38) : (!llvm.ptr) -> memref<?xi8>
    return %39 : memref<?xi8>
  }
  func.func private @pthread_barrier_wait(memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @pagerank_worker(%arg0: memref<?xi8>) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %1 = llvm.getelementptr %0[0, 13] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
    %2 = llvm.load %1 : !llvm.ptr -> i32
    %3 = call @pagerank_worker_impl(%arg0, %2) : (memref<?xi8>, i32) -> memref<?xi8>
    return %3 : memref<?xi8>
  }
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %true = arith.constant true
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %false = arith.constant false
    %c15_i64 = arith.constant 15 : i64
    %c8_i64 = arith.constant 8 : i64
    %c16_i64 = arith.constant 16 : i64
    %c20_i32 = arith.constant 20 : i32
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c-1_i32 = arith.constant -1 : i32
    %c6_i32 = arith.constant 6 : i32
    %c104_i32 = arith.constant 104 : i32
    %c112_i32 = arith.constant 112 : i32
    %c115_i32 = arith.constant 115 : i32
    %c97_i32 = arith.constant 97 : i32
    %c105_i32 = arith.constant 105 : i32
    %c100_i32 = arith.constant 100 : i32
    %c110_i32 = arith.constant 110 : i32
    %c116_i32 = arith.constant 116 : i32
    %c102_i32 = arith.constant 102 : i32
    %c109_i32 = arith.constant 109 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst_1 = arith.constant 8.500000e-01 : f64
    %c50_i32 = arith.constant 50 : i32
    %c10_i32 = arith.constant 10 : i32
    %c10000_i32 = arith.constant 10000 : i32
    %c4_i32 = arith.constant 4 : i32
    %c16 = arith.constant 16 : index
    %c0_i8 = arith.constant 0 : i8
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c8 = arith.constant 8 : index
    %c9 = arith.constant 9 : index
    %c10 = arith.constant 10 : index
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<1xf64>
    affine.store %1, %alloca[0] : memref<1xf64>
    %alloca_2 = memref.alloca() : memref<1x!llvm.struct<(i64, array<24 x i8>)>>
    %alloca_3 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
    %alloca_4 = memref.alloca() : memref<1xi32>
    affine.store %0, %alloca_4[0] : memref<1xi32>
    %2 = memref.get_global @"main@static@long_opts" : memref<11x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>>
    %alloca_5 = memref.alloca() : memref<16xi8>
    affine.store %c0_i8, %alloca_5[0] : memref<16xi8>
    %cast = memref.cast %alloca_5 : memref<16xi8> to memref<?xi8>
    %3 = llvm.mlir.addressof @str0 : !llvm.ptr
    %4 = "polygeist.pointer2memref"(%3) : (!llvm.ptr) -> memref<?xi8>
    %5 = call @strncpy(%cast, %4, %c15_i64) : (memref<?xi8>, memref<?xi8>, i64) -> memref<?xi8>
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = "polygeist.pointer2memref"(%6) : (!llvm.ptr) -> memref<?xi8>
    %8 = memref.get_global @"main@static@long_opts@init" : memref<1xi1>
    %9 = affine.load %8[0] : memref<1xi1>
    scf.if %9 {
      affine.store %false, %8[0] : memref<1xi1>
      %18 = "polygeist.memref2pointer"(%2) : (memref<11x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>>) -> !llvm.ptr
      %19 = llvm.getelementptr %18[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %19 : i32, !llvm.ptr
      %20 = llvm.getelementptr %18[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      %21 = llvm.mlir.zero : !llvm.ptr
      %22 = "polygeist.pointer2memref"(%21) : (!llvm.ptr) -> memref<?xi32>
      llvm.store %22, %20 : memref<?xi32>, !llvm.ptr
      %23 = llvm.getelementptr %18[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c109_i32, %23 : i32, !llvm.ptr
      %24 = "polygeist.typeSize"() <{source = !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>}> : () -> index
      %25 = arith.index_cast %24 : index to i64
      %26 = llvm.getelementptr %18[%25] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %27 = llvm.getelementptr %26[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %27 : i32, !llvm.ptr
      %28 = llvm.getelementptr %26[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %28 : memref<?xi32>, !llvm.ptr
      %29 = llvm.getelementptr %26[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c102_i32, %29 : i32, !llvm.ptr
      %30 = arith.muli %24, %c2 : index
      %31 = arith.index_cast %30 : index to i64
      %32 = llvm.getelementptr %18[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %33 = llvm.getelementptr %32[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %33 : i32, !llvm.ptr
      %34 = llvm.getelementptr %32[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %34 : memref<?xi32>, !llvm.ptr
      %35 = llvm.getelementptr %32[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c116_i32, %35 : i32, !llvm.ptr
      %36 = arith.muli %24, %c3 : index
      %37 = arith.index_cast %36 : index to i64
      %38 = llvm.getelementptr %18[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %39 = llvm.getelementptr %38[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %39 : i32, !llvm.ptr
      %40 = llvm.getelementptr %38[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %40 : memref<?xi32>, !llvm.ptr
      %41 = llvm.getelementptr %38[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c110_i32, %41 : i32, !llvm.ptr
      %42 = arith.muli %24, %c4 : index
      %43 = arith.index_cast %42 : index to i64
      %44 = llvm.getelementptr %18[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %45 = llvm.getelementptr %44[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %45 : i32, !llvm.ptr
      %46 = llvm.getelementptr %44[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %46 : memref<?xi32>, !llvm.ptr
      %47 = llvm.getelementptr %44[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c100_i32, %47 : i32, !llvm.ptr
      %48 = arith.muli %24, %c5 : index
      %49 = arith.index_cast %48 : index to i64
      %50 = llvm.getelementptr %18[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %51 = llvm.getelementptr %50[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %51 : i32, !llvm.ptr
      %52 = llvm.getelementptr %50[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %52 : memref<?xi32>, !llvm.ptr
      %53 = llvm.getelementptr %50[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c105_i32, %53 : i32, !llvm.ptr
      %54 = arith.muli %24, %c6 : index
      %55 = arith.index_cast %54 : index to i64
      %56 = llvm.getelementptr %18[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %57 = llvm.getelementptr %56[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %57 : i32, !llvm.ptr
      %58 = llvm.getelementptr %56[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %58 : memref<?xi32>, !llvm.ptr
      %59 = llvm.getelementptr %56[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c97_i32, %59 : i32, !llvm.ptr
      %60 = arith.muli %24, %c7 : index
      %61 = arith.index_cast %60 : index to i64
      %62 = llvm.getelementptr %18[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %63 = llvm.getelementptr %62[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c1_i32, %63 : i32, !llvm.ptr
      %64 = llvm.getelementptr %62[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %64 : memref<?xi32>, !llvm.ptr
      %65 = llvm.getelementptr %62[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c115_i32, %65 : i32, !llvm.ptr
      %66 = arith.muli %24, %c8 : index
      %67 = arith.index_cast %66 : index to i64
      %68 = llvm.getelementptr %18[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %69 = llvm.getelementptr %68[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c0_i32, %69 : i32, !llvm.ptr
      %70 = llvm.getelementptr %68[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %70 : memref<?xi32>, !llvm.ptr
      %71 = llvm.getelementptr %68[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c112_i32, %71 : i32, !llvm.ptr
      %72 = arith.muli %24, %c9 : index
      %73 = arith.index_cast %72 : index to i64
      %74 = llvm.getelementptr %18[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %75 = llvm.getelementptr %74[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c0_i32, %75 : i32, !llvm.ptr
      %76 = llvm.getelementptr %74[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %76 : memref<?xi32>, !llvm.ptr
      %77 = llvm.getelementptr %74[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c104_i32, %77 : i32, !llvm.ptr
      %78 = arith.muli %24, %c10 : index
      %79 = arith.index_cast %78 : index to i64
      %80 = llvm.getelementptr %18[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i8
      %81 = llvm.getelementptr %80[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      %82 = "polygeist.pointer2memref"(%21) : (!llvm.ptr) -> memref<?xi8>
      llvm.store %82, %81 : memref<?xi8>, !llvm.ptr
      %83 = llvm.getelementptr %80[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c0_i32, %83 : i32, !llvm.ptr
      %84 = llvm.getelementptr %80[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %22, %84 : memref<?xi32>, !llvm.ptr
      %85 = llvm.getelementptr %80[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>
      llvm.store %c0_i32, %85 : i32, !llvm.ptr
    }
    %10 = call @rand() : () -> i32
    %11 = arith.remsi %10, %c6_i32 : i32
    %12 = llvm.mlir.addressof @str11 : !llvm.ptr
    %cast_6 = memref.cast %2 : memref<11x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>> to memref<?x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>>
    %cast_7 = memref.cast %alloca_4 : memref<1xi32> to memref<?xi32>
    %13 = "polygeist.pointer2memref"(%12) : (!llvm.ptr) -> memref<?xi8>
    %14:12 = scf.while (%arg2 = %11, %arg3 = %c0_i32, %arg4 = %c1_i32, %arg5 = %cst_1, %arg6 = %c50_i32, %arg7 = %c10_i32, %arg8 = %c10000_i32, %arg9 = %c4_i32, %arg10 = %true, %arg11 = %0, %arg12 = %true, %arg13 = %7) : (i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>) -> (i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, memref<?xi8>, i32) {
      %18 = func.call @getopt_long(%arg0, %arg1, %13, %cast_6, %cast_7) : (i32, memref<?xmemref<?xi8>>, memref<?xi8>, memref<?x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>>, memref<?xi32>) -> i32
      %19 = arith.cmpi ne, %18, %c-1_i32 : i32
      %20 = arith.andi %19, %arg12 : i1
      scf.condition(%20) %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg13, %18 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, memref<?xi8>, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: f64, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i1, %arg11: i32, %arg12: memref<?xi8>, %arg13: i32):
      %18:12 = scf.execute_region -> (i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>) {
        cf.switch %arg13 : i32, [
          default: ^bb10(%arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %c1_i32 : i32, i32, i32, f64, i32, i32, i32, i32, i32),
          101: ^bb1,
          109: ^bb2(%arg2 : i32),
          102: ^bb3(%arg2 : i32),
          116: ^bb4(%arg2 : i32),
          110: ^bb5(%arg2, %arg9 : i32, i32),
          100: ^bb6(%arg2, %arg8, %arg9 : i32, i32, i32),
          105: ^bb7(%arg2, %arg7, %arg8, %arg9 : i32, i32, i32, i32),
          97: ^bb8(%arg2, %arg6, %arg7, %arg8, %arg9 : i32, i32, i32, i32, i32),
          115: ^bb9(%arg2, %arg5, %arg6, %arg7, %arg8, %arg9 : i32, f64, i32, i32, i32, i32),
          112: ^bb11(%arg2, %c1_i32, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>),
          104: ^bb10(%arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %c0_i32 : i32, i32, i32, f64, i32, i32, i32, i32, i32)
        ]
      ^bb1:  // pred: ^bb0
        %19 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %20 = affine.load %19[0] : memref<1xmemref<?xi8>>
        %21 = func.call @atoi(%20) : (memref<?xi8>) -> i32
        cf.br ^bb11(%21, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb2(%22: i32):  // pred: ^bb0
        %cast_8 = memref.cast %alloca_5 : memref<16xi8> to memref<?xi8>
        %23 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %24 = affine.load %23[0] : memref<1xmemref<?xi8>>
        %25 = func.call @strncpy(%cast_8, %24, %c15_i64) : (memref<?xi8>, memref<?xi8>, i64) -> memref<?xi8>
        affine.store %c0_i8, %alloca_5[15] : memref<16xi8>
        cf.br ^bb11(%22, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb3(%26: i32):  // pred: ^bb0
        %27 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %28 = affine.load %27[0] : memref<1xmemref<?xi8>>
        cf.br ^bb11(%26, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %true, %28 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb4(%29: i32):  // pred: ^bb0
        %30 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %31 = affine.load %30[0] : memref<1xmemref<?xi8>>
        %32 = func.call @atoi(%31) : (memref<?xi8>) -> i32
        cf.br ^bb11(%29, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %32, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb5(%33: i32, %34: i32):  // pred: ^bb0
        %35 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %36 = affine.load %35[0] : memref<1xmemref<?xi8>>
        %37 = func.call @atoi(%36) : (memref<?xi8>) -> i32
        cf.br ^bb11(%33, %arg3, %arg4, %arg5, %arg6, %arg7, %37, %34, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb6(%38: i32, %39: i32, %40: i32):  // pred: ^bb0
        %41 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %42 = affine.load %41[0] : memref<1xmemref<?xi8>>
        %43 = func.call @atoi(%42) : (memref<?xi8>) -> i32
        cf.br ^bb11(%38, %arg3, %arg4, %arg5, %arg6, %43, %39, %40, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb7(%44: i32, %45: i32, %46: i32, %47: i32):  // pred: ^bb0
        %48 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %49 = affine.load %48[0] : memref<1xmemref<?xi8>>
        %50 = func.call @atoi(%49) : (memref<?xi8>) -> i32
        cf.br ^bb11(%44, %arg3, %arg4, %arg5, %50, %45, %46, %47, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb8(%51: i32, %52: i32, %53: i32, %54: i32, %55: i32):  // pred: ^bb0
        %56 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %57 = affine.load %56[0] : memref<1xmemref<?xi8>>
        %58 = func.call @atof(%57) : (memref<?xi8>) -> f64
        cf.br ^bb11(%51, %arg3, %arg4, %58, %52, %53, %54, %55, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb9(%59: i32, %60: f64, %61: i32, %62: i32, %63: i32, %64: i32):  // pred: ^bb0
        %65 = memref.get_global @optarg : memref<1xmemref<?xi8>>
        %66 = affine.load %65[0] : memref<1xmemref<?xi8>>
        %67 = llvm.mlir.zero : !llvm.ptr
        %68 = "polygeist.pointer2memref"(%67) : (!llvm.ptr) -> memref<?xmemref<?xi8>>
        %69 = func.call @strtoul(%66, %68, %c10_i32) : (memref<?xi8>, memref<?xmemref<?xi8>>, i32) -> i64
        %70 = arith.trunci %69 : i64 to i32
        cf.br ^bb11(%59, %arg3, %70, %60, %61, %62, %63, %64, %arg10, %arg11, %true, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb10(%71: i32, %72: i32, %73: i32, %74: f64, %75: i32, %76: i32, %77: i32, %78: i32, %79: i32):  // 2 preds: ^bb0, ^bb0
        %80 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
        func.call @usage(%80) : (memref<?xi8>) -> ()
        cf.br ^bb11(%71, %72, %73, %74, %75, %76, %77, %78, %false, %79, %false, %arg12 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>)
      ^bb11(%81: i32, %82: i32, %83: i32, %84: f64, %85: i32, %86: i32, %87: i32, %88: i32, %89: i1, %90: i32, %91: i1, %92: memref<?xi8>):  // 11 preds: ^bb0, ^bb1, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb7, ^bb8, ^bb9, ^bb10
        scf.yield %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>
      }
      scf.yield %18#0, %18#1, %18#2, %18#3, %18#4, %18#5, %18#6, %18#7, %18#8, %18#9, %18#10, %18#11 : i32, i32, i32, f64, i32, i32, i32, i32, i1, i32, i1, memref<?xi8>
    }
    %15 = arith.cmpi ne, %14#1, %c0_i32 : i32
    %16:3 = scf.if %14#8 -> (i32, i1, i32) {
      %18 = arith.cmpi sle, %14#7, %c0_i32 : i32
      %19 = arith.select %18, %c1_i32, %14#7 : i32
      %20 = arith.cmpf ole, %14#3, %cst_0 : f64
      %21 = scf.if %20 -> (i1) {
        scf.yield %true : i1
      } else {
        %23 = arith.cmpf oge, %14#3, %cst : f64
        scf.yield %23 : i1
      }
      %22:2 = scf.if %21 -> (i1, i32) {
        %23 = llvm.mlir.addressof @stderr : !llvm.ptr
        %24 = llvm.load %23 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %25 = "polygeist.memref2pointer"(%24) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %26 = llvm.mlir.addressof @str12 : !llvm.ptr
        %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i8>
        %28 = llvm.call @fprintf(%25, %27, %14#3) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        scf.yield %false, %14#9 : i1, i32
      } else {
        %23 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        llvm.store %c0_i32, %24 : i32, !llvm.ptr
        %25 = llvm.getelementptr %23[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        llvm.store %c0_i32, %25 : i32, !llvm.ptr
        %26 = llvm.getelementptr %23[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        %27 = llvm.mlir.zero : !llvm.ptr
        %28 = "polygeist.pointer2memref"(%27) : (!llvm.ptr) -> memref<?xi32>
        llvm.store %28, %26 : memref<?xi32>, !llvm.ptr
        %29 = llvm.getelementptr %23[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        llvm.store %28, %29 : memref<?xi32>, !llvm.ptr
        %30 = llvm.getelementptr %23[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
        llvm.store %28, %30 : memref<?xi32>, !llvm.ptr
        %cast_8 = memref.cast %alloca_5 : memref<16xi8> to memref<?xi8>
        %31 = llvm.mlir.addressof @str2 : !llvm.ptr
        %32 = "polygeist.pointer2memref"(%31) : (!llvm.ptr) -> memref<?xi8>
        %33 = func.call @strcmp(%cast_8, %32) : (memref<?xi8>, memref<?xi8>) -> i32
        %34 = arith.cmpi eq, %33, %c0_i32 : i32
        %35:2 = scf.if %34 -> (i1, i32) {
          %36 = "polygeist.memref2pointer"(%14#10) : (memref<?xi8>) -> !llvm.ptr
          %37 = llvm.mlir.zero : !llvm.ptr
          %38 = llvm.icmp "eq" %36, %37 : !llvm.ptr
          %39 = arith.select %38, %c1_i32, %14#9 : i32
          %40:2 = scf.if %38 -> (i1, i32) {
            %41 = llvm.mlir.addressof @stderr : !llvm.ptr
            %42 = llvm.load %41 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
            %43 = "polygeist.memref2pointer"(%42) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
            %44 = llvm.mlir.addressof @str13 : !llvm.ptr
            %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i8>
            %46 = llvm.call @fprintf(%43, %45) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            scf.yield %false, %39 : i1, i32
          } else {
            %cast_9 = memref.cast %alloca_3 : memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>> to memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            func.call @read_graph_file(%14#10, %cast_9) : (memref<?xi8>, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> ()
            %41 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
            %42 = llvm.load %41 : !llvm.ptr -> i32
            %43 = arith.cmpi eq, %42, %c0_i32 : i32
            %44 = arith.cmpi ne, %42, %c0_i32 : i32
            %45 = arith.select %43, %c1_i32, %39 : i32
            scf.if %43 {
              %46 = llvm.mlir.addressof @stderr : !llvm.ptr
              %47 = llvm.load %46 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
              %48 = "polygeist.memref2pointer"(%47) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
              %49 = llvm.mlir.addressof @str14 : !llvm.ptr
              %50 = llvm.getelementptr %49[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
              %51 = llvm.call @fprintf(%48, %50) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            }
            scf.if %44 {
              %46 = llvm.mlir.addressof @stdout : !llvm.ptr
              %47 = llvm.load %46 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
              %48 = "polygeist.memref2pointer"(%47) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
              %49 = llvm.mlir.addressof @str15 : !llvm.ptr
              %50 = llvm.getelementptr %49[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<36 x i8>
              %51 = "polygeist.memref2pointer"(%14#10) : (memref<?xi8>) -> !llvm.ptr
              %52 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
              %53 = llvm.load %52 : !llvm.ptr -> i32
              %54 = llvm.getelementptr %52[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
              %55 = llvm.load %54 : !llvm.ptr -> i32
              %56 = llvm.call @fprintf(%48, %50, %51, %53, %55) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> i32
            }
            scf.yield %44, %45 : i1, i32
          }
          scf.yield %40#0, %40#1 : i1, i32
        } else {
          %36 = llvm.mlir.addressof @str0 : !llvm.ptr
          %37 = "polygeist.pointer2memref"(%36) : (!llvm.ptr) -> memref<?xi8>
          %38 = func.call @strcmp(%cast_8, %37) : (memref<?xi8>, memref<?xi8>) -> i32
          %39 = arith.cmpi eq, %38, %c0_i32 : i32
          %40:2 = scf.if %39 -> (i1, i32) {
            %41 = arith.cmpi sle, %14#6, %c0_i32 : i32
            %42 = scf.if %41 -> (i1) {
              scf.yield %true : i1
            } else {
              %45 = arith.cmpi slt, %14#5, %c0_i32 : i32
              scf.yield %45 : i1
            }
            %43 = arith.xori %42, %true : i1
            %44 = arith.select %42, %c1_i32, %14#9 : i32
            scf.if %42 {
              %45 = llvm.mlir.addressof @stderr : !llvm.ptr
              %46 = llvm.load %45 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
              %47 = "polygeist.memref2pointer"(%46) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
              %48 = llvm.mlir.addressof @str16 : !llvm.ptr
              %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<39 x i8>
              %50 = llvm.call @fprintf(%47, %49) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            } else {
              %cast_9 = memref.cast %alloca_3 : memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>> to memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
              func.call @make_synthetic_graph(%14#6, %14#5, %14#2, %cast_9) : (i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> ()
              %45 = llvm.mlir.addressof @stdout : !llvm.ptr
              %46 = llvm.load %45 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
              %47 = "polygeist.memref2pointer"(%46) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
              %48 = llvm.mlir.addressof @str17 : !llvm.ptr
              %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<44 x i8>
              %50 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
              %51 = llvm.load %50 : !llvm.ptr -> i32
              %52 = llvm.getelementptr %50[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
              %53 = llvm.load %52 : !llvm.ptr -> i32
              %54 = llvm.call @fprintf(%47, %49, %51, %14#5, %53) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, i32, i32, i32) -> i32
            }
            scf.yield %43, %44 : i1, i32
          } else {
            %41 = llvm.mlir.addressof @stderr : !llvm.ptr
            %42 = llvm.load %41 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
            %43 = "polygeist.memref2pointer"(%42) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
            %44 = llvm.mlir.addressof @str18 : !llvm.ptr
            %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<19 x i8>
            %46 = "polygeist.memref2pointer"(%alloca_5) : (memref<16xi8>) -> !llvm.ptr
            %47 = llvm.call @fprintf(%43, %45, %46) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
            scf.yield %false, %c1_i32 : i1, i32
          }
          scf.yield %40#0, %40#1 : i1, i32
        }
        scf.yield %35#0, %35#1 : i1, i32
      }
      scf.yield %19, %22#0, %22#1 : i32, i1, i32
    } else {
      scf.yield %14#7, %false, %14#9 : i32, i1, i32
    }
    %17 = arith.select %16#1, %c0_i32, %16#2 : i32
    scf.if %16#1 {
      %18 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %19 = llvm.load %18 : !llvm.ptr -> i32
      %20 = arith.extsi %19 : i32 to i64
      %21 = arith.muli %20, %c8_i64 : i64
      %22 = func.call @xmalloc(%21) : (i64) -> memref<?xi8>
      %23 = "polygeist.memref2pointer"(%22) : (memref<?xi8>) -> !llvm.ptr
      %24 = "polygeist.pointer2memref"(%23) : (!llvm.ptr) -> memref<?xf64>
      %25 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %26 = llvm.load %25 : !llvm.ptr -> i32
      %27 = arith.extsi %26 : i32 to i64
      %28 = arith.muli %27, %c8_i64 : i64
      %29 = func.call @xmalloc(%28) : (i64) -> memref<?xi8>
      %30 = "polygeist.memref2pointer"(%29) : (memref<?xi8>) -> !llvm.ptr
      %31 = "polygeist.pointer2memref"(%30) : (!llvm.ptr) -> memref<?xf64>
      %32 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %33 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
        %78 = llvm.load %32 : !llvm.ptr -> i32
        %79 = arith.cmpi slt, %arg2, %78 : i32
        scf.condition(%79) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %78 = llvm.load %32 : !llvm.ptr -> i32
        %79 = arith.sitofp %78 : i32 to f64
        %80 = arith.divf %cst, %79 : f64
        %81 = llvm.getelementptr %23[%arg2] : (!llvm.ptr, i32) -> !llvm.ptr, f64
        llvm.store %80, %81 : f64, !llvm.ptr
        %82 = llvm.getelementptr %30[%arg2] : (!llvm.ptr, i32) -> !llvm.ptr, f64
        llvm.store %cst_0, %82 : f64, !llvm.ptr
        %83 = arith.addi %arg2, %c1_i32 : i32
        scf.yield %83 : i32
      }
      %cast_8 = memref.cast %alloca_2 : memref<1x!llvm.struct<(i64, array<24 x i8>)>> to memref<?x!llvm.struct<(i64, array<24 x i8>)>>
      %34 = llvm.mlir.zero : !llvm.ptr
      %35 = "polygeist.pointer2memref"(%34) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32)>>
      %36 = func.call @pthread_barrier_init(%cast_8, %35, %16#0) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?x!llvm.struct<(i32)>>, i32) -> i32
      %37 = arith.cmpi ne, %36, %c0_i32 : i32
      scf.if %37 {
        %78 = llvm.mlir.addressof @str19 : !llvm.ptr
        %79 = "polygeist.pointer2memref"(%78) : (!llvm.ptr) -> memref<?xi8>
        func.call @die(%79) : (memref<?xi8>) -> ()
      }
      %38 = arith.extsi %16#0 : i32 to i64
      %39 = arith.muli %38, %c8_i64 : i64
      %40 = func.call @xmalloc(%39) : (i64) -> memref<?xi8>
      %41 = "polygeist.memref2pointer"(%40) : (memref<?xi8>) -> !llvm.ptr
      %42 = "polygeist.pointer2memref"(%41) : (!llvm.ptr) -> memref<?xi64>
      %43 = arith.extsi %16#0 : i32 to i64
      %44 = "polygeist.typeSize"() <{source = !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>}> : () -> index
      %45 = arith.index_cast %44 : index to i64
      %46 = arith.muli %43, %45 : i64
      %47 = func.call @xmalloc(%46) : (i64) -> memref<?xi8>
      %48 = "polygeist.memref2pointer"(%47) : (memref<?xi8>) -> !llvm.ptr
      %49 = "polygeist.pointer2memref"(%48) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>>
      %50 = arith.extsi %16#0 : i32 to i64
      %51 = arith.muli %50, %c8_i64 : i64
      %52 = func.call @xmalloc(%51) : (i64) -> memref<?xi8>
      %53 = "polygeist.memref2pointer"(%52) : (memref<?xi8>) -> !llvm.ptr
      %54 = "polygeist.pointer2memref"(%53) : (!llvm.ptr) -> memref<?xf64>
      affine.store %cst_0, %alloca[0] : memref<1xf64>
      %55 = arith.subf %cst, %14#3 : f64
      %56 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %57 = llvm.load %56 : !llvm.ptr -> i32
      %58 = arith.sitofp %57 : i32 to f64
      %59 = arith.divf %55, %58 : f64
      %60 = arith.index_cast %16#0 : i32 to index
      scf.for %arg2 = %c0 to %60 step %c1 {
        %78 = arith.index_cast %arg2 : index to i32
        %79 = "polygeist.typeSize"() <{source = !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>}> : () -> index
        %80 = arith.muli %arg2, %79 : index
        %81 = arith.index_cast %80 : index to i64
        %82 = llvm.getelementptr %48[%81] : (!llvm.ptr, i64) -> !llvm.ptr, i8
        llvm.store %78, %82 : i32, !llvm.ptr
        %83 = llvm.getelementptr %82[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %16#0, %83 : i32, !llvm.ptr
        %84 = llvm.getelementptr %82[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %85 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %86 = llvm.load %85 : !llvm.ptr -> i32
        llvm.store %86, %84 : i32, !llvm.ptr
        %87 = llvm.getelementptr %82[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %cast_10 = memref.cast %alloca_3 : memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>> to memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
        llvm.store %cast_10, %87 : memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, !llvm.ptr
        %88 = llvm.getelementptr %82[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %24, %88 : memref<?xf64>, !llvm.ptr
        %89 = llvm.getelementptr %82[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %31, %89 : memref<?xf64>, !llvm.ptr
        %90 = llvm.getelementptr %82[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %14#3, %90 : f64, !llvm.ptr
        %91 = llvm.getelementptr %82[0, 7] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %59, %91 : f64, !llvm.ptr
        %92 = llvm.getelementptr %82[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %cast_11 = memref.cast %alloca_2 : memref<1x!llvm.struct<(i64, array<24 x i8>)>> to memref<?x!llvm.struct<(i64, array<24 x i8>)>>
        llvm.store %cast_11, %92 : memref<?x!llvm.struct<(i64, array<24 x i8>)>>, !llvm.ptr
        %93 = llvm.getelementptr %82[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %54, %93 : memref<?xf64>, !llvm.ptr
        %94 = llvm.getelementptr %82[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        %cast_12 = memref.cast %alloca : memref<1xf64> to memref<?xf64>
        llvm.store %cast_12, %94 : memref<?xf64>, !llvm.ptr
        %95 = llvm.getelementptr %82[0, 11] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %14#1, %95 : i32, !llvm.ptr
        %96 = llvm.getelementptr %82[0, 12] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %14#4, %96 : i32, !llvm.ptr
        %97 = llvm.getelementptr %82[0, 13] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>
        llvm.store %14#0, %97 : i32, !llvm.ptr
        %98 = "polygeist.subindex"(%42, %arg2) : (memref<?xi64>, index) -> memref<?xi64>
        %99 = llvm.mlir.zero : !llvm.ptr
        %100 = "polygeist.pointer2memref"(%99) : (!llvm.ptr) -> memref<?x!llvm.struct<(i64, array<48 x i8>)>>
        %101 = "polygeist.get_func"() <{name = @pagerank_worker}> : () -> !llvm.ptr
        %102 = "polygeist.pointer2memref"(%82) : (!llvm.ptr) -> memref<?xi8>
        %103 = "polygeist.pointer2memref"(%101) : (!llvm.ptr) -> memref<?x!llvm.func<memref<?xi8> (memref<?xi8>)>>
        %104 = func.call @pthread_create(%98, %100, %103, %102) : (memref<?xi64>, memref<?x!llvm.struct<(i64, array<48 x i8>)>>, memref<?x!llvm.func<memref<?xi8> (memref<?xi8>)>>, memref<?xi8>) -> i32
        %105 = arith.cmpi ne, %104, %c0_i32 : i32
        scf.if %105 {
          %106 = llvm.mlir.addressof @str20 : !llvm.ptr
          %107 = "polygeist.pointer2memref"(%106) : (!llvm.ptr) -> memref<?xi8>
          func.call @die(%107) : (memref<?xi8>) -> ()
        }
      }
      %61 = func.call @now_sec() : () -> f64
      %62 = arith.index_cast %16#0 : i32 to index
      scf.for %arg2 = %c0 to %62 step %c1 {
        %78 = arith.index_cast %arg2 : index to i32
        %79 = llvm.getelementptr %41[%78] : (!llvm.ptr, i32) -> !llvm.ptr, i64
        %80 = llvm.load %79 : !llvm.ptr -> i64
        %81 = llvm.mlir.zero : !llvm.ptr
        %82 = "polygeist.pointer2memref"(%81) : (!llvm.ptr) -> memref<?xmemref<?xi8>>
        %83 = func.call @pthread_join(%80, %82) : (i64, memref<?xmemref<?xi8>>) -> i32
      }
      %63 = func.call @now_sec() : () -> f64
      %64 = llvm.mlir.addressof @str21 : !llvm.ptr
      %65 = llvm.getelementptr %64[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
      %66 = arith.subf %63, %61 : f64
      %67 = llvm.call @printf(%65, %66) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
      scf.if %15 {
        %78 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %79 = llvm.load %78 : !llvm.ptr -> i32
        %80 = arith.extsi %79 : i32 to i64
        %81 = arith.muli %80, %c16_i64 : i64
        %82 = func.call @xmalloc(%81) : (i64) -> memref<?xi8>
        %83 = "polygeist.memref2pointer"(%82) : (memref<?xi8>) -> !llvm.ptr
        %84 = "polygeist.pointer2memref"(%83) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, f64)>>
        %85 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %86:4 = scf.while (%arg2 = %c0_i32, %arg3 = %cst_0, %arg4 = %cst, %arg5 = %cst_0) : (i32, f64, f64, f64) -> (f64, f64, f64, i32) {
          %134 = llvm.load %85 : !llvm.ptr -> i32
          %135 = arith.cmpi slt, %arg2, %134 : i32
          scf.condition(%135) %arg3, %arg4, %arg5, %arg2 : f64, f64, f64, i32
        } do {
        ^bb0(%arg2: f64, %arg3: f64, %arg4: f64, %arg5: i32):
          %134 = arith.index_cast %arg5 : i32 to index
          %135 = arith.muli %134, %c16 : index
          %136 = arith.index_cast %135 : index to i64
          %137 = llvm.getelementptr %83[%136] : (!llvm.ptr, i64) -> !llvm.ptr, i8
          llvm.store %arg5, %137 : i32, !llvm.ptr
          %138 = llvm.getelementptr %137[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
          %139 = llvm.getelementptr %23[%arg5] : (!llvm.ptr, i32) -> !llvm.ptr, f64
          %140 = llvm.load %139 : !llvm.ptr -> f64
          llvm.store %140, %138 : f64, !llvm.ptr
          %141 = llvm.getelementptr %23[%arg5] : (!llvm.ptr, i32) -> !llvm.ptr, f64
          %142 = llvm.load %141 : !llvm.ptr -> f64
          %143 = arith.addf %arg4, %142 : f64
          %144 = arith.cmpf olt, %142, %arg3 : f64
          %145 = scf.if %144 -> (f64) {
            %149 = llvm.getelementptr %23[%arg5] : (!llvm.ptr, i32) -> !llvm.ptr, f64
            %150 = llvm.load %149 : !llvm.ptr -> f64
            scf.yield %150 : f64
          } else {
            scf.yield %arg3 : f64
          }
          %146 = arith.cmpf ogt, %142, %arg2 : f64
          %147 = scf.if %146 -> (f64) {
            %149 = llvm.getelementptr %23[%arg5] : (!llvm.ptr, i32) -> !llvm.ptr, f64
            %150 = llvm.load %149 : !llvm.ptr -> f64
            scf.yield %150 : f64
          } else {
            scf.yield %arg2 : f64
          }
          %148 = arith.addi %arg5, %c1_i32 : i32
          scf.yield %148, %147, %145, %143 : i32, f64, f64, f64
        }
        %87 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %88 = llvm.load %87 : !llvm.ptr -> i32
        %89 = arith.extsi %88 : i32 to i64
        %90 = "polygeist.get_func"() <{name = @compare_pagerank}> : () -> !llvm.ptr
        %91 = "polygeist.pointer2memref"(%90) : (!llvm.ptr) -> memref<?x!llvm.func<i32 (memref<?xi8>, memref<?xi8>)>>
        func.call @qsort(%82, %89, %c16_i64, %91) : (memref<?xi8>, i64, i64, memref<?x!llvm.func<i32 (memref<?xi8>, memref<?xi8>)>>) -> ()
        %92 = llvm.mlir.addressof @str22 : !llvm.ptr
        %93 = llvm.getelementptr %92[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
        %94 = llvm.call @printf(%93) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
        %95 = llvm.mlir.addressof @str23 : !llvm.ptr
        %96 = llvm.getelementptr %95[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<19 x i8>
        %97 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %98 = llvm.load %97 : !llvm.ptr -> i32
        %99 = llvm.call @printf(%96, %98) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
        %100 = llvm.mlir.addressof @str24 : !llvm.ptr
        %101 = llvm.getelementptr %100[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i8>
        %102 = llvm.call @printf(%101, %86#2) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
        %103 = llvm.mlir.addressof @str25 : !llvm.ptr
        %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<21 x i8>
        %105 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %106 = llvm.load %105 : !llvm.ptr -> i32
        %107 = arith.sitofp %106 : i32 to f64
        %108 = arith.divf %86#2, %107 : f64
        %109 = llvm.call @printf(%104, %108) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
        %110 = llvm.mlir.addressof @str26 : !llvm.ptr
        %111 = llvm.getelementptr %110[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<21 x i8>
        %112 = llvm.call @printf(%111, %86#1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
        %113 = llvm.mlir.addressof @str27 : !llvm.ptr
        %114 = llvm.getelementptr %113[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<21 x i8>
        %115 = llvm.call @printf(%114, %86#0) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
        %116 = llvm.mlir.addressof @str28 : !llvm.ptr
        %117 = llvm.getelementptr %116[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
        %118 = llvm.call @printf(%117) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
        %119 = llvm.mlir.addressof @str29 : !llvm.ptr
        %120 = llvm.getelementptr %119[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<37 x i8>
        %121 = llvm.call @printf(%120) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
        %122 = llvm.mlir.addressof @str30 : !llvm.ptr
        %123 = llvm.getelementptr %122[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<38 x i8>
        %124 = llvm.call @printf(%123) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
        %125 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %126 = llvm.load %125 : !llvm.ptr -> i32
        %127 = arith.cmpi slt, %126, %c20_i32 : i32
        %128 = scf.if %127 -> (i32) {
          %134 = llvm.load %125 : !llvm.ptr -> i32
          scf.yield %134 : i32
        } else {
          scf.yield %c20_i32 : i32
        }
        %129 = arith.index_cast %128 : i32 to index
        scf.for %arg2 = %c0 to %129 step %c1 {
          %134 = arith.index_cast %arg2 : index to i32
          %135 = llvm.mlir.addressof @str31 : !llvm.ptr
          %136 = llvm.getelementptr %135[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<19 x i8>
          %137 = arith.addi %134, %c1_i32 : i32
          %138 = arith.muli %arg2, %c16 : index
          %139 = arith.index_cast %138 : index to i64
          %140 = llvm.getelementptr %83[%139] : (!llvm.ptr, i64) -> !llvm.ptr, i8
          %141 = llvm.load %140 : !llvm.ptr -> i32
          %142 = llvm.getelementptr %140[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
          %143 = llvm.load %142 : !llvm.ptr -> f64
          %144 = llvm.call @printf(%136, %137, %141, %143) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32, i32, f64) -> i32
        }
        %130 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %131 = llvm.mlir.addressof @str32 : !llvm.ptr
        %132 = llvm.getelementptr %131[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
        %133 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
          %134 = llvm.load %130 : !llvm.ptr -> i32
          %135 = arith.cmpi slt, %arg2, %134 : i32
          scf.condition(%135) %arg2 : i32
        } do {
        ^bb0(%arg2: i32):
          %134 = llvm.getelementptr %23[%arg2] : (!llvm.ptr, i32) -> !llvm.ptr, f64
          %135 = llvm.load %134 : !llvm.ptr -> f64
          %136 = llvm.call @printf(%132, %arg2, %135) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32, f64) -> i32
          %137 = arith.addi %arg2, %c1_i32 : i32
          scf.yield %137 : i32
        }
        memref.dealloc %84 : memref<?x!llvm.struct<(i32, f64)>>
      }
      %cast_9 = memref.cast %alloca_2 : memref<1x!llvm.struct<(i64, array<24 x i8>)>> to memref<?x!llvm.struct<(i64, array<24 x i8>)>>
      %68 = func.call @pthread_barrier_destroy(%cast_9) : (memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32
      memref.dealloc %42 : memref<?xi64>
      memref.dealloc %49 : memref<?x!llvm.struct<(i32, i32, i32, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>, memref<?xf64>, memref<?xf64>, f64, f64, memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?xf64>, memref<?xf64>, i32, i32, i32)>>
      memref.dealloc %54 : memref<?xf64>
      memref.dealloc %24 : memref<?xf64>
      memref.dealloc %31 : memref<?xf64>
      %69 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %70 = llvm.getelementptr %69[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %71 = llvm.load %70 : !llvm.ptr -> memref<?xi32>
      memref.dealloc %71 : memref<?xi32>
      %72 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %73 = llvm.getelementptr %72[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %74 = llvm.load %73 : !llvm.ptr -> memref<?xi32>
      memref.dealloc %74 : memref<?xi32>
      %75 = "polygeist.memref2pointer"(%alloca_3) : (memref<1x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
      %76 = llvm.getelementptr %75[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
      %77 = llvm.load %76 : !llvm.ptr -> memref<?xi32>
      memref.dealloc %77 : memref<?xi32>
    }
    return %17 : i32
  }
  func.func private @strncpy(memref<?xi8>, memref<?xi8>, i64) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @getopt_long(i32, memref<?xmemref<?xi8>>, memref<?xi8>, memref<?x!llvm.struct<(memref<?xi8>, i32, memref<?xi32>, i32)>>, memref<?xi32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atof(memref<?xi8>) -> f64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @strtoul(memref<?xi8>, memref<?xmemref<?xi8>>, i32) -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @usage(%arg0: memref<?xi8>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %2 = "polygeist.memref2pointer"(%1) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %3 = llvm.mlir.addressof @str33 : !llvm.ptr
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<617 x i8>
    %5 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %6 = llvm.call @fprintf(%2, %4, %5) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @read_graph_file(%arg0: memref<?xi8>, %arg1: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c-1_i64 = arith.constant -1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c1_i32 = arith.constant 1 : i32
    %alloca = memref.alloca() : memref<1xi32>
    %0 = llvm.mlir.undef : i32
    affine.store %0, %alloca[0] : memref<1xi32>
    %alloca_0 = memref.alloca() : memref<1xi32>
    affine.store %0, %alloca_0[0] : memref<1xi32>
    %1 = llvm.mlir.undef : i64
    %alloca_1 = memref.alloca() : memref<1xi64>
    affine.store %1, %alloca_1[0] : memref<1xi64>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi8>>
    %alloca_3 = memref.alloca() : memref<1x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>
    %2 = llvm.mlir.addressof @str34 : !llvm.ptr
    %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
    %4 = call @fopen(%arg0, %3) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %5 = "polygeist.memref2pointer"(%4) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = llvm.icmp "eq" %5, %6 : !llvm.ptr
    scf.if %7 {
      %11 = llvm.mlir.addressof @stderr : !llvm.ptr
      %12 = llvm.load %11 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
      %13 = "polygeist.memref2pointer"(%12) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
      %14 = llvm.mlir.addressof @str35 : !llvm.ptr
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<25 x i8>
      %16 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
      %17 = func.call @__errno_location() : () -> memref<?xi32>
      %18 = affine.load %17[0] : memref<?xi32>
      %19 = func.call @strerror(%18) : (i32) -> memref<?xi8>
      %20 = "polygeist.memref2pointer"(%19) : (memref<?xi8>) -> !llvm.ptr
      %21 = llvm.call @fprintf(%13, %15, %16, %20) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %cast = memref.cast %alloca_3 : memref<1x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>> to memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>
    call @el_init(%cast) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> ()
    %8 = "polygeist.pointer2memref"(%6) : (!llvm.ptr) -> memref<?xi8>
    affine.store %8, %alloca_2[0] : memref<1xmemref<?xi8>>
    affine.store %c0_i64, %alloca_1[0] : memref<1xi64>
    %cast_4 = memref.cast %alloca_2 : memref<1xmemref<?xi8>> to memref<?xmemref<?xi8>>
    %cast_5 = memref.cast %alloca_1 : memref<1xi64> to memref<?xi64>
    scf.while : () -> () {
      %11 = func.call @getline(%cast_4, %cast_5, %4) : (memref<?xmemref<?xi8>>, memref<?xi64>, memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i64
      %12 = arith.cmpi ne, %11, %c-1_i64 : i64
      %13 = arith.cmpi ne, %11, %c0_i64 : i64
      %14 = arith.andi %12, %13 : i1
      scf.if %14 {
        %15 = affine.load %alloca_2[0] : memref<1xmemref<?xi8>>
        %16 = "polygeist.memref2pointer"(%15) : (memref<?xi8>) -> !llvm.ptr
        %17 = llvm.mlir.addressof @str36 : !llvm.ptr
        %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
        %19 = "polygeist.memref2pointer"(%alloca_0) : (memref<1xi32>) -> !llvm.ptr
        %20 = "polygeist.memref2pointer"(%alloca) : (memref<1xi32>) -> !llvm.ptr
        %21 = llvm.call @__isoc99_sscanf(%16, %18, %19, %20) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
        %22 = arith.cmpi eq, %21, %c2_i32 : i32
        scf.if %22 {
          %23 = affine.load %alloca_0[0] : memref<1xi32>
          %24 = arith.cmpi slt, %23, %c0_i32 : i32
          %25 = scf.if %24 -> (i1) {
            scf.yield %true : i1
          } else {
            %27 = affine.load %alloca[0] : memref<1xi32>
            %28 = arith.cmpi slt, %27, %c0_i32 : i32
            scf.yield %28 : i1
          }
          %26 = arith.xori %25, %true : i1
          scf.if %26 {
            %27 = affine.load %alloca[0] : memref<1xi32>
            func.call @el_push(%cast, %23, %27) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>, i32, i32) -> ()
          }
        }
      }
      scf.condition(%12)
    } do {
      scf.yield
    }
    %9 = affine.load %alloca_2[0] : memref<1xmemref<?xi8>>
    memref.dealloc %9 : memref<?xi8>
    %10 = call @fclose(%4) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32
    call @build_csr_from_edges(%cast, %arg1) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> ()
    call @el_free(%cast) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> ()
    return
  }
  func.func private @make_synthetic_graph(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i32 = arith.constant 1 : i32
    %alloca = memref.alloca() : memref<1x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>
    %cast = memref.cast %alloca : memref<1x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>> to memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>
    call @el_init(%cast) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> ()
    call @srand(%arg2) : (i32) -> ()
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg4 = %c0 to %0 step %c1 {
      %1 = arith.index_cast %arg4 : index to i32
      %2 = arith.index_cast %arg1 : i32 to index
      scf.for %arg5 = %c0 to %2 step %c1 {
        %3 = func.call @rand() : () -> i32
        %4 = arith.remsi %3, %arg0 : i32
        %5 = arith.cmpi eq, %4, %1 : i32
        %6 = scf.if %5 -> (i32) {
          %7 = arith.addi %4, %c1_i32 : i32
          %8 = arith.remsi %7, %arg0 : i32
          scf.yield %8 : i32
        } else {
          scf.yield %4 : i32
        }
        func.call @el_push(%cast, %6, %1) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>, i32, i32) -> ()
      }
    }
    call @build_csr_from_edges(%cast, %arg3) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>, memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> ()
    call @el_free(%cast) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> ()
    return
  }
  func.func private @xmalloc(%arg0: i64) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = call @malloc(%arg0) : (i64) -> memref<?xi8>
    %1 = "polygeist.memref2pointer"(%0) : (memref<?xi8>) -> !llvm.ptr
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = llvm.icmp "eq" %1, %2 : !llvm.ptr
    scf.if %3 {
      %4 = llvm.mlir.addressof @str37 : !llvm.ptr
      %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr) -> memref<?xi8>
      func.call @die(%5) : (memref<?xi8>) -> ()
    }
    return %0 : memref<?xi8>
  }
  func.func private @pthread_barrier_init(memref<?x!llvm.struct<(i64, array<24 x i8>)>>, memref<?x!llvm.struct<(i32)>>, i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @die(%arg0: memref<?xi8>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c1_i32 = arith.constant 1 : i32
    call @perror(%arg0) : (memref<?xi8>) -> ()
    call @exit(%c1_i32) : (i32) -> ()
    return
  }
  func.func private @pthread_create(memref<?xi64>, memref<?x!llvm.struct<(i64, array<48 x i8>)>>, memref<?x!llvm.func<memref<?xi8> (memref<?xi8>)>>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @now_sec() -> f64 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+09 : f64
    %c1_i32 = arith.constant 1 : i32
    %alloca = memref.alloca() : memref<1x2xi64>
    %cast = memref.cast %alloca : memref<1x2xi64> to memref<?x2xi64>
    %0 = call @clock_gettime(%c1_i32, %cast) : (i32, memref<?x2xi64>) -> i32
    %1 = affine.load %alloca[0, 0] : memref<1x2xi64>
    %2 = arith.sitofp %1 : i64 to f64
    %3 = affine.load %alloca[0, 1] : memref<1x2xi64>
    %4 = arith.sitofp %3 : i64 to f64
    %5 = arith.divf %4, %cst : f64
    %6 = arith.addf %2, %5 : f64
    return %6 : f64
  }
  func.func private @pthread_join(i64, memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @qsort(memref<?xi8>, i64, i64, memref<?x!llvm.func<i32 (memref<?xi8>, memref<?xi8>)>>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @compare_pagerank(%arg0: memref<?xi8>, %arg1: memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %false = arith.constant false
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.mlir.undef : i32
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %2 = llvm.getelementptr %1[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
    %3 = llvm.load %2 : !llvm.ptr -> f64
    %4 = "polygeist.memref2pointer"(%arg1) : (memref<?xi8>) -> !llvm.ptr
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
    %6 = llvm.load %5 : !llvm.ptr -> f64
    %7 = arith.cmpf olt, %3, %6 : f64
    %8 = arith.select %7, %c1_i32, %0 : i32
    %9:2 = scf.if %7 -> (i1, i32) {
      scf.yield %false, %8 : i1, i32
    } else {
      %11 = arith.cmpf ogt, %3, %6 : f64
      %12 = arith.xori %11, %true : i1
      %13 = arith.select %11, %c-1_i32, %8 : i32
      scf.yield %12, %13 : i1, i32
    }
    %10 = arith.select %9#0, %c0_i32, %9#1 : i32
    return %10 : i32
  }
  func.func private @pthread_barrier_destroy(memref<?x!llvm.struct<(i64, array<24 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fopen(memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @strerror(i32) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @__errno_location() -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @el_init(%arg0: memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> !llvm.ptr
    %1 = llvm.getelementptr %0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi32>
    llvm.store %3, %1 : memref<?xi32>, !llvm.ptr
    %4 = llvm.load %1 : !llvm.ptr -> memref<?xi32>
    llvm.store %4, %0 : memref<?xi32>, !llvm.ptr
    %5 = llvm.getelementptr %0[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    llvm.store %c0_i32, %5 : i32, !llvm.ptr
    %6 = llvm.getelementptr %0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    llvm.store %c0_i32, %6 : i32, !llvm.ptr
    return
  }
  func.func private @getline(memref<?xmemref<?xi8>>, memref<?xi64>, memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @el_push(%arg0: memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>, %arg1: i32, %arg2: i32) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %true = arith.constant true
    %c4_i64 = arith.constant 4 : i64
    %c1_i32 = arith.constant 1 : i32
    %c4096_i32 = arith.constant 4096 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> !llvm.ptr
    %1 = llvm.getelementptr %0[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %2 = llvm.load %1 : !llvm.ptr -> i32
    %3 = llvm.getelementptr %0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %4 = llvm.load %3 : !llvm.ptr -> i32
    %5 = arith.cmpi eq, %2, %4 : i32
    scf.if %5 {
      %15 = llvm.load %3 : !llvm.ptr -> i32
      %16 = arith.cmpi ne, %15, %c0_i32 : i32
      %17 = scf.if %16 -> (i32) {
        %38 = llvm.load %3 : !llvm.ptr -> i32
        %39 = arith.muli %38, %c2_i32 : i32
        scf.yield %39 : i32
      } else {
        scf.yield %c4096_i32 : i32
      }
      %18 = llvm.load %0 : !llvm.ptr -> memref<?xi32>
      %19 = "polygeist.memref2pointer"(%18) : (memref<?xi32>) -> !llvm.ptr
      %20 = "polygeist.pointer2memref"(%19) : (!llvm.ptr) -> memref<?xi8>
      %21 = arith.extsi %17 : i32 to i64
      %22 = arith.muli %21, %c4_i64 : i64
      %23 = func.call @realloc(%20, %22) : (memref<?xi8>, i64) -> memref<?xi8>
      %24 = "polygeist.memref2pointer"(%23) : (memref<?xi8>) -> !llvm.ptr
      %25 = "polygeist.pointer2memref"(%24) : (!llvm.ptr) -> memref<?xi32>
      llvm.store %25, %0 : memref<?xi32>, !llvm.ptr
      %26 = llvm.getelementptr %0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
      %27 = llvm.load %26 : !llvm.ptr -> memref<?xi32>
      %28 = "polygeist.memref2pointer"(%27) : (memref<?xi32>) -> !llvm.ptr
      %29 = "polygeist.pointer2memref"(%28) : (!llvm.ptr) -> memref<?xi8>
      %30 = func.call @realloc(%29, %22) : (memref<?xi8>, i64) -> memref<?xi8>
      %31 = "polygeist.memref2pointer"(%30) : (memref<?xi8>) -> !llvm.ptr
      %32 = "polygeist.pointer2memref"(%31) : (!llvm.ptr) -> memref<?xi32>
      llvm.store %32, %26 : memref<?xi32>, !llvm.ptr
      %33 = llvm.load %0 : !llvm.ptr -> memref<?xi32>
      %34 = "polygeist.memref2pointer"(%33) : (memref<?xi32>) -> !llvm.ptr
      %35 = llvm.mlir.zero : !llvm.ptr
      %36 = llvm.icmp "eq" %34, %35 : !llvm.ptr
      %37 = scf.if %36 -> (i1) {
        scf.yield %true : i1
      } else {
        %38 = llvm.load %26 : !llvm.ptr -> memref<?xi32>
        %39 = "polygeist.memref2pointer"(%38) : (memref<?xi32>) -> !llvm.ptr
        %40 = llvm.icmp "eq" %39, %35 : !llvm.ptr
        scf.yield %40 : i1
      }
      scf.if %37 {
        %38 = llvm.mlir.addressof @str38 : !llvm.ptr
        %39 = "polygeist.pointer2memref"(%38) : (!llvm.ptr) -> memref<?xi8>
        func.call @die(%39) : (memref<?xi8>) -> ()
      }
      llvm.store %17, %3 : i32, !llvm.ptr
    }
    %6 = llvm.load %0 : !llvm.ptr -> memref<?xi32>
    %7 = llvm.load %1 : !llvm.ptr -> i32
    %8 = arith.index_cast %7 : i32 to index
    affine.store %arg1, %6[symbol(%8)] : memref<?xi32>
    %9 = llvm.getelementptr %0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %10 = llvm.load %9 : !llvm.ptr -> memref<?xi32>
    %11 = llvm.load %1 : !llvm.ptr -> i32
    %12 = arith.index_cast %11 : i32 to index
    affine.store %arg2, %10[symbol(%12)] : memref<?xi32>
    %13 = llvm.load %1 : !llvm.ptr -> i32
    %14 = arith.addi %13, %c1_i32 : i32
    llvm.store %14, %1 : i32, !llvm.ptr
    return
  }
  func.func private @fclose(memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @build_csr_from_edges(%arg0: memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>, %arg1: memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %true = arith.constant true
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1_i32 = arith.constant -1 : i32
    %0 = llvm.mlir.undef : i32
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> !llvm.ptr
    %2 = llvm.getelementptr %1[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %3 = llvm.load %2 : !llvm.ptr -> i32
    %4 = llvm.getelementptr %1[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %5 = arith.index_cast %3 : i32 to index
    %6 = scf.for %arg2 = %c0 to %5 step %c1 iter_args(%arg3 = %c-1_i32) -> (i32) {
      %76 = llvm.load %1 : !llvm.ptr -> memref<?xi32>
      %77 = memref.load %76[%arg2] : memref<?xi32>
      %78 = arith.cmpi sgt, %77, %arg3 : i32
      %79 = scf.if %78 -> (i32) {
        %84 = llvm.load %1 : !llvm.ptr -> memref<?xi32>
        %85 = memref.load %84[%arg2] : memref<?xi32>
        scf.yield %85 : i32
      } else {
        scf.yield %arg3 : i32
      }
      %80 = llvm.load %4 : !llvm.ptr -> memref<?xi32>
      %81 = memref.load %80[%arg2] : memref<?xi32>
      %82 = arith.cmpi sgt, %81, %79 : i32
      %83 = scf.if %82 -> (i32) {
        %84 = llvm.load %4 : !llvm.ptr -> memref<?xi32>
        %85 = memref.load %84[%arg2] : memref<?xi32>
        scf.yield %85 : i32
      } else {
        scf.yield %79 : i32
      }
      scf.yield %83 : i32
    }
    %7 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %8 = arith.cmpi sge, %6, %c0_i32 : i32
    %9 = scf.if %8 -> (i32) {
      %76 = arith.addi %6, %c1_i32 : i32
      scf.yield %76 : i32
    } else {
      scf.yield %c0_i32 : i32
    }
    llvm.store %9, %7 : i32, !llvm.ptr
    %10 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %11 = llvm.getelementptr %10[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %12 = llvm.load %2 : !llvm.ptr -> i32
    llvm.store %12, %11 : i32, !llvm.ptr
    %13 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %14 = llvm.getelementptr %13[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %15 = llvm.load %13 : !llvm.ptr -> i32
    %16 = arith.addi %15, %c1_i32 : i32
    %17 = arith.extsi %16 : i32 to i64
    %18 = arith.muli %17, %c4_i64 : i64
    %19 = call @xmalloc(%18) : (i64) -> memref<?xi8>
    %20 = "polygeist.memref2pointer"(%19) : (memref<?xi8>) -> !llvm.ptr
    %21 = "polygeist.pointer2memref"(%20) : (!llvm.ptr) -> memref<?xi32>
    llvm.store %21, %14 : memref<?xi32>, !llvm.ptr
    %22 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %23 = llvm.getelementptr %22[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %24 = llvm.getelementptr %22[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %25 = llvm.load %24 : !llvm.ptr -> i32
    %26 = arith.extsi %25 : i32 to i64
    %27 = arith.muli %26, %c4_i64 : i64
    %28 = call @xmalloc(%27) : (i64) -> memref<?xi8>
    %29 = "polygeist.memref2pointer"(%28) : (memref<?xi8>) -> !llvm.ptr
    %30 = "polygeist.pointer2memref"(%29) : (!llvm.ptr) -> memref<?xi32>
    llvm.store %30, %23 : memref<?xi32>, !llvm.ptr
    %31 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %32 = llvm.getelementptr %31[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %33 = llvm.load %31 : !llvm.ptr -> i32
    %34 = arith.index_cast %33 : i32 to index
    %35 = arith.muli %34, %c4 : index
    %36 = arith.divui %35, %c4 : index
    %alloc = memref.alloc(%36) : memref<?xi32>
    scf.for %arg2 = %c0 to %36 step %c1 {
      memref.store %c0_i32, %alloc[%arg2] : memref<?xi32>
    }
    llvm.store %alloc, %32 : memref<?xi32>, !llvm.ptr
    %37 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %38 = llvm.getelementptr %37[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %39 = llvm.load %38 : !llvm.ptr -> memref<?xi32>
    %40 = "polygeist.memref2pointer"(%39) : (memref<?xi32>) -> !llvm.ptr
    %41 = llvm.mlir.zero : !llvm.ptr
    %42 = llvm.icmp "eq" %40, %41 : !llvm.ptr
    scf.if %42 {
      %76 = llvm.mlir.addressof @str39 : !llvm.ptr
      %77 = "polygeist.pointer2memref"(%76) : (!llvm.ptr) -> memref<?xi8>
      func.call @die(%77) : (memref<?xi8>) -> ()
    }
    %43 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %44 = llvm.load %43 : !llvm.ptr -> i32
    %45 = arith.index_cast %44 : i32 to index
    %46 = arith.muli %45, %c4 : index
    %47 = arith.divui %46, %c4 : index
    %alloc_0 = memref.alloc(%47) : memref<?xi32>
    scf.for %arg2 = %c0 to %47 step %c1 {
      memref.store %c0_i32, %alloc_0[%arg2] : memref<?xi32>
    }
    %48 = "polygeist.memref2pointer"(%alloc_0) : (memref<?xi32>) -> !llvm.ptr
    %49 = llvm.mlir.zero : !llvm.ptr
    %50 = llvm.icmp "eq" %48, %49 : !llvm.ptr
    scf.if %50 {
      %76 = llvm.mlir.addressof @str39 : !llvm.ptr
      %77 = "polygeist.pointer2memref"(%76) : (!llvm.ptr) -> memref<?xi8>
      func.call @die(%77) : (memref<?xi8>) -> ()
    }
    %51 = llvm.getelementptr %1[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %52 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %76 = llvm.load %2 : !llvm.ptr -> i32
      %77 = arith.cmpi slt, %arg2, %76 : i32
      scf.condition(%77) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %76 = llvm.load %1 : !llvm.ptr -> memref<?xi32>
      %77 = arith.index_cast %arg2 : i32 to index
      %78 = memref.load %76[%77] : memref<?xi32>
      %79 = llvm.load %51 : !llvm.ptr -> memref<?xi32>
      %80 = memref.load %79[%77] : memref<?xi32>
      %81 = arith.cmpi slt, %78, %c0_i32 : i32
      %82 = scf.if %81 -> (i1) {
        scf.yield %true : i1
      } else {
        %85 = arith.cmpi slt, %80, %c0_i32 : i32
        scf.yield %85 : i1
      }
      %83 = arith.xori %82, %true : i1
      scf.if %83 {
        %85 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %86 = llvm.load %85 : !llvm.ptr -> i32
        %87 = arith.cmpi sge, %78, %86 : i32
        %88 = scf.if %87 -> (i1) {
          scf.yield %true : i1
        } else {
          %90 = llvm.load %85 : !llvm.ptr -> i32
          %91 = arith.cmpi sge, %80, %90 : i32
          scf.yield %91 : i1
        }
        %89 = arith.xori %88, %true : i1
        scf.if %89 {
          %90 = arith.index_cast %80 : i32 to index
          %91 = memref.load %alloc_0[%90] : memref<?xi32>
          %92 = arith.addi %91, %c1_i32 : i32
          memref.store %92, %alloc_0[%90] : memref<?xi32>
          %93 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
          %94 = llvm.getelementptr %93[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
          %95 = llvm.load %94 : !llvm.ptr -> memref<?xi32>
          %96 = arith.index_cast %78 : i32 to index
          %97 = memref.load %95[%96] : memref<?xi32>
          %98 = arith.addi %97, %c1_i32 : i32
          memref.store %98, %95[%96] : memref<?xi32>
        }
      }
      %84 = arith.addi %arg2, %c1_i32 : i32
      scf.yield %84 : i32
    }
    %53 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %54 = llvm.getelementptr %53[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %55 = llvm.load %54 : !llvm.ptr -> memref<?xi32>
    affine.store %c0_i32, %55[0] : memref<?xi32>
    %56 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %57 = llvm.getelementptr %56[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %58 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %76 = llvm.load %56 : !llvm.ptr -> i32
      %77 = arith.cmpi slt, %arg2, %76 : i32
      scf.condition(%77) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %76 = llvm.load %57 : !llvm.ptr -> memref<?xi32>
      %77 = arith.addi %arg2, %c1_i32 : i32
      %78 = arith.index_cast %77 : i32 to index
      %79 = arith.index_cast %arg2 : i32 to index
      %80 = memref.load %76[%79] : memref<?xi32>
      %81 = memref.load %alloc_0[%79] : memref<?xi32>
      %82 = arith.addi %80, %81 : i32
      memref.store %82, %76[%78] : memref<?xi32>
      %83 = arith.addi %arg2, %c1_i32 : i32
      scf.yield %83 : i32
    }
    %59 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %60 = llvm.load %59 : !llvm.ptr -> i32
    %61 = arith.extsi %60 : i32 to i64
    %62 = arith.muli %61, %c4_i64 : i64
    %63 = call @xmalloc(%62) : (i64) -> memref<?xi8>
    %64 = "polygeist.memref2pointer"(%63) : (memref<?xi8>) -> !llvm.ptr
    %65 = "polygeist.pointer2memref"(%64) : (!llvm.ptr) -> memref<?xi32>
    %66 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
    %67 = llvm.getelementptr %66[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
    %68 = llvm.load %67 : !llvm.ptr -> memref<?xi32>
    %69 = "polygeist.memref2pointer"(%68) : (memref<?xi32>) -> !llvm.ptr
    %70 = llvm.load %66 : !llvm.ptr -> i32
    %71 = arith.extsi %70 : i32 to i64
    %72 = arith.muli %71, %c4_i64 : i64
    %73 = arith.index_cast %72 : i64 to index
    scf.for %arg2 = %c0 to %73 step %c1 {
      %76 = arith.index_cast %arg2 : index to i32
      %77 = llvm.getelementptr %69[%76] : (!llvm.ptr, i32) -> !llvm.ptr, i8
      %78 = llvm.load %77 : !llvm.ptr -> i8
      %79 = llvm.getelementptr %64[%76] : (!llvm.ptr, i32) -> !llvm.ptr, i8
      llvm.store %78, %79 : i8, !llvm.ptr
    }
    %74 = llvm.getelementptr %1[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %75:2 = scf.while (%arg2 = %0, %arg3 = %c0_i32) : (i32, i32) -> (i32, i32) {
      %76 = llvm.load %2 : !llvm.ptr -> i32
      %77 = arith.cmpi slt, %arg3, %76 : i32
      scf.condition(%77) %arg2, %arg3 : i32, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32):
      %76 = llvm.load %1 : !llvm.ptr -> memref<?xi32>
      %77 = arith.index_cast %arg3 : i32 to index
      %78 = memref.load %76[%77] : memref<?xi32>
      %79 = llvm.load %74 : !llvm.ptr -> memref<?xi32>
      %80 = memref.load %79[%77] : memref<?xi32>
      %81 = arith.cmpi slt, %78, %c0_i32 : i32
      %82 = scf.if %81 -> (i1) {
        scf.yield %true : i1
      } else {
        %85 = arith.cmpi slt, %80, %c0_i32 : i32
        scf.yield %85 : i1
      }
      %83 = scf.if %82 -> (i32) {
        scf.yield %arg2 : i32
      } else {
        %85 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
        %86 = llvm.load %85 : !llvm.ptr -> i32
        %87 = arith.cmpi sge, %78, %86 : i32
        %88 = scf.if %87 -> (i1) {
          scf.yield %true : i1
        } else {
          %90 = llvm.load %85 : !llvm.ptr -> i32
          %91 = arith.cmpi sge, %80, %90 : i32
          scf.yield %91 : i1
        }
        %89 = scf.if %88 -> (i32) {
          scf.yield %arg2 : i32
        } else {
          %90 = llvm.getelementptr %64[%80] : (!llvm.ptr, i32) -> !llvm.ptr, i32
          %91 = llvm.load %90 : !llvm.ptr -> i32
          %92 = arith.addi %91, %c1_i32 : i32
          %93 = llvm.getelementptr %64[%80] : (!llvm.ptr, i32) -> !llvm.ptr, i32
          llvm.store %92, %93 : i32, !llvm.ptr
          %94 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> !llvm.ptr
          %95 = llvm.getelementptr %94[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, i32, memref<?xi32>, memref<?xi32>, memref<?xi32>)>
          %96 = llvm.load %95 : !llvm.ptr -> memref<?xi32>
          %97 = arith.index_cast %91 : i32 to index
          memref.store %78, %96[%97] : memref<?xi32>
          scf.yield %91 : i32
        }
        scf.yield %89 : i32
      }
      %84 = arith.addi %arg3, %c1_i32 : i32
      scf.yield %83, %84 : i32, i32
    }
    memref.dealloc %65 : memref<?xi32>
    memref.dealloc %alloc_0 : memref<?xi32>
    return
  }
  func.func private @el_free(%arg0: memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>>) -> !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> memref<?xi32>
    memref.dealloc %1 : memref<?xi32>
    %2 = llvm.getelementptr %0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %3 = llvm.load %2 : !llvm.ptr -> memref<?xi32>
    memref.dealloc %3 : memref<?xi32>
    %4 = llvm.mlir.zero : !llvm.ptr
    %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr) -> memref<?xi32>
    llvm.store %5, %2 : memref<?xi32>, !llvm.ptr
    %6 = llvm.load %2 : !llvm.ptr -> memref<?xi32>
    llvm.store %6, %0 : memref<?xi32>, !llvm.ptr
    %7 = llvm.getelementptr %0[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    %8 = llvm.getelementptr %0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(memref<?xi32>, memref<?xi32>, i32, i32)>
    llvm.store %c0_i32, %8 : i32, !llvm.ptr
    %9 = llvm.load %8 : !llvm.ptr -> i32
    llvm.store %9, %7 : i32, !llvm.ptr
    return
  }
  func.func private @srand(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @malloc(i64) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @perror(memref<?xi8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @clock_gettime(i32, memref<?x2xi64>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @realloc(memref<?xi8>, i64) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
}
