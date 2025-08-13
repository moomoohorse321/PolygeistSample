module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
// ApproxMLIR Annotation Operations for K-means Clustering
// Each function has exactly ONE error knob annotation

// Error knob 1: Distance calculation loop (loop perforation on dimensions)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "compute_squared_distance",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 100>,
    thresholds_lowers = array<i32: 2>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 50>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 2: Find nearest centroid (loop perforation - check fewer centroids)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "find_nearest_centroid",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 10>,
    thresholds_lowers = array<i32: 2>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 5>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 3: Accumulate point dimensions (loop perforation)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "accumulate_point_to_centroid",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 100>,
    thresholds_lowers = array<i32: 2>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 50>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 4: Assign points to clusters (loop perforation - process fewer points)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "assign_points_to_clusters",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 1000>,
    thresholds_lowers = array<i32: 100>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 500>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 5: Update single centroid dimensions (loop perforation)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "update_single_centroid",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 100>,
    thresholds_lowers = array<i32: 2>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 50>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 6: Update all centroids (loop perforation on centroids)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "update_centroids",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 10>,
    thresholds_lowers = array<i32: 1>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 5>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 7: Reset single centroid (loop perforation on dimensions)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "reset_single_centroid",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 100>,
    thresholds_lowers = array<i32: 2>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 50>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 8: Reset all centroid sums (loop perforation on centroids)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "reset_centroid_sums",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 10>,
    thresholds_lowers = array<i32: 1>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 5>,
    decisions = array<i32: 1, 2>
}> : () -> ()

// Error knob 9: K-means iteration (function substitution with approximate version)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "kmeans_iteration",
    transform_type = "func_substitute",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 20>,
    thresholds_lowers = array<i32: 1>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 10>,
    decisions = array<i32: 0, 1>
}> : () -> ()

// Mark kmeans_iteration for conversion to call (required for func_substitute)
"approxMLIR.util.annotation.convert_to_call"() <{func_name = "kmeans_iteration"}> : () -> ()

// Error knob 10: Main k-means loop (loop perforation - skip iterations)
"approxMLIR.util.annotation.decision_tree"() <{
    func_name = "kmeans_main_loop",
    transform_type = "loop_perforate",
    num_thresholds = 1 : i32,
    thresholds_uppers = array<i32: 50>,
    thresholds_lowers = array<i32: 5>,
    decision_values = array<i32: 0, 1>,
    thresholds = array<i32: 25>,
    decisions = array<i32: 1, 3>
}> : () -> ()
  llvm.mlir.global internal constant @str26("\0AK-means completed in %.3f seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str25("  Max iterations: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str24("  Clusters: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str23("  Dimensions: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str22("  Points: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str21("Running K-means with:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str20("  -h               : Show this help message\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str19("  -i max_iterations: Maximum number of iterations (default: 20)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str18("  -k clusters      : Number of clusters (default: 5)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str17("  -d dimensions    : Dimensionality of data (default: 2)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str16("  -n num_points    : Number of data points (default: 1000)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("Usage: %s [-n num_points] [-d dimensions] [-k clusters] [-i max_iterations]\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str14("-h\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str13("-i\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str12("-k\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("-d\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str10("-n\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("  Point %d: (\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("Cluster %d samples:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("\0ASample points from each cluster:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("Cluster %d: %d points\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("\0ACluster sizes:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4(")\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3(", \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("%.2f\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Centroid %d: (\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Final centroids:\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  memref.global "private" @"approx_kmeans_iteration@static@iter_count@init" : memref<1xi1> = dense<true>
  memref.global "private" @"approx_kmeans_iteration@static@iter_count" : memref<1xi32> = uninitialized
  func.func @compute_squared_distance(%arg0: memref<?xf64>, %arg1: memref<?xf64>, %arg2: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = scf.for %arg3 = %c0 to %0 step %c1 iter_args(%arg4 = %cst) -> (f64) {
      %2 = memref.load %arg0[%arg3] : memref<?xf64>
      %3 = memref.load %arg1[%arg3] : memref<?xf64>
      %4 = arith.subf %2, %3 : f64
      %5 = arith.mulf %4, %4 : f64
      %6 = arith.addf %arg4, %5 : f64
      scf.yield %6 : f64
    }
    return %1 : f64
  }
  func.func @distance(%arg0: memref<?xf64>, %arg1: memref<?xf64>, %arg2: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = call @compute_squared_distance(%arg0, %arg1, %arg2) : (memref<?xf64>, memref<?xf64>, i32) -> f64
    %1 = math.sqrt %0 : f64
    return %1 : f64
  }
  func.func @find_nearest_centroid(%arg0: memref<?xf64>, %arg1: memref<?xmemref<?xf64>>, %arg2: i32, %arg3: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 1.7976931348623157E+308 : f64
    %0 = arith.index_cast %arg3 : i32 to index
    %1:2 = scf.for %arg4 = %c0 to %0 step %c1 iter_args(%arg5 = %c0_i32, %arg6 = %cst) -> (i32, f64) {
      %2 = arith.index_cast %arg4 : index to i32
      %3 = memref.load %arg1[%arg4] : memref<?xmemref<?xf64>>
      %4 = func.call @compute_squared_distance(%arg0, %3, %arg2) : (memref<?xf64>, memref<?xf64>, i32) -> f64
      %5 = arith.cmpf olt, %4, %arg6 : f64
      %6 = arith.select %5, %2, %arg5 : i32
      %7 = arith.select %5, %4, %arg6 : f64
      scf.yield %6, %7 : i32, f64
    }
    return %1#0 : i32
  }
  func.func @accumulate_point_to_centroid(%arg0: memref<?xf64>, %arg1: memref<?xf64>, %arg2: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = arith.index_cast %arg2 : i32 to index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %1 = memref.load %arg0[%arg3] : memref<?xf64>
      %2 = memref.load %arg1[%arg3] : memref<?xf64>
      %3 = arith.addf %2, %1 : f64
      memref.store %3, %arg1[%arg3] : memref<?xf64>
    }
    return
  }
  func.func @assign_points_to_clusters(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: memref<?xi32>, %arg4: memref<?xmemref<?xf64>>, %arg5: i32, %arg6: i32, %arg7: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg5 : i32 to index
    scf.for %arg8 = %c0 to %0 step %c1 {
      %1 = memref.load %arg0[%arg8] : memref<?xmemref<?xf64>>
      %2 = func.call @find_nearest_centroid(%1, %arg1, %arg6, %arg7) : (memref<?xf64>, memref<?xmemref<?xf64>>, i32, i32) -> i32
      memref.store %2, %arg2[%arg8] : memref<?xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = memref.load %arg3[%3] : memref<?xi32>
      %5 = arith.addi %4, %c1_i32 : i32
      memref.store %5, %arg3[%3] : memref<?xi32>
      %6 = memref.load %arg0[%arg8] : memref<?xmemref<?xf64>>
      %7 = memref.load %arg4[%3] : memref<?xmemref<?xf64>>
      func.call @accumulate_point_to_centroid(%6, %7, %arg6) : (memref<?xf64>, memref<?xf64>, i32) -> ()
    }
    return
  }
  func.func @update_single_centroid(%arg0: memref<?xf64>, %arg1: memref<?xf64>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = arith.index_cast %arg3 : i32 to index
    scf.for %arg4 = %c0 to %0 step %c1 {
      %1 = memref.load %arg1[%arg4] : memref<?xf64>
      %2 = arith.sitofp %arg2 : i32 to f64
      %3 = arith.divf %1, %2 : f64
      memref.store %3, %arg0[%arg4] : memref<?xf64>
    }
    return
  }
  func.func @update_centroids(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg3 : i32 to index
    scf.for %arg5 = %c0 to %0 step %c1 {
      %1 = memref.load %arg2[%arg5] : memref<?xi32>
      %2 = arith.cmpi sgt, %1, %c0_i32 : i32
      scf.if %2 {
        %3 = memref.load %arg0[%arg5] : memref<?xmemref<?xf64>>
        %4 = memref.load %arg1[%arg5] : memref<?xmemref<?xf64>>
        %5 = memref.load %arg2[%arg5] : memref<?xi32>
        func.call @update_single_centroid(%3, %4, %5, %arg4) : (memref<?xf64>, memref<?xf64>, i32, i32) -> ()
      }
    }
    return
  }
  func.func @reset_single_centroid(%arg0: memref<?xf64>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    scf.for %arg2 = %c0 to %0 step %c1 {
      memref.store %cst, %arg0[%arg2] : memref<?xf64>
    }
    return
  }
  func.func @reset_centroid_sums(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg2 : i32 to index
    scf.for %arg4 = %c0 to %0 step %c1 {
      memref.store %c0_i32, %arg1[%arg4] : memref<?xi32>
      %1 = memref.load %arg0[%arg4] : memref<?xmemref<?xf64>>
      func.call @reset_single_centroid(%1, %arg3) : (memref<?xf64>, i32) -> ()
    }
    return
  }
  func.func @kmeans_iteration(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: memref<?xi32>, %arg4: memref<?xmemref<?xf64>>, %arg5: i32, %arg6: i32, %arg7: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    call @reset_centroid_sums(%arg4, %arg3, %arg7, %arg6) : (memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32) -> ()
    call @assign_points_to_clusters(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, memref<?xi32>, memref<?xmemref<?xf64>>, i32, i32, i32) -> ()
    call @update_centroids(%arg1, %arg4, %arg3, %arg7, %arg6) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32) -> ()
    return
  }
  func.func @approx_kmeans_iteration(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: memref<?xi32>, %arg4: memref<?xmemref<?xf64>>, %arg5: i32, %arg6: i32, %arg7: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %false = arith.constant false
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.get_global @"approx_kmeans_iteration@static@iter_count" : memref<1xi32>
    %1 = memref.get_global @"approx_kmeans_iteration@static@iter_count@init" : memref<1xi1>
    %2 = affine.load %1[0] : memref<1xi1>
    scf.if %2 {
      affine.store %false, %1[0] : memref<1xi1>
      affine.store %c0_i32, %0[0] : memref<1xi32>
    }
    %3 = affine.load %0[0] : memref<1xi32>
    %4 = arith.remsi %3, %c2_i32 : i32
    %5 = arith.cmpi eq, %4, %c1_i32 : i32
    scf.if %5 {
      func.call @reset_centroid_sums(%arg4, %arg3, %arg7, %arg6) : (memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32) -> ()
    }
    %6 = affine.load %0[0] : memref<1xi32>
    %7 = arith.addi %6, %c1_i32 : i32
    affine.store %7, %0[0] : memref<1xi32>
    call @assign_points_to_clusters(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, memref<?xi32>, memref<?xmemref<?xf64>>, i32, i32, i32) -> ()
    call @update_centroids(%arg1, %arg4, %arg3, %arg7, %arg6) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32) -> ()
    return
  }
  func.func @kmeans_main_loop(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: memref<?xi32>, %arg4: memref<?xmemref<?xf64>>, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = arith.index_cast %arg8 : i32 to index
    scf.for %arg9 = %c0 to %0 step %c1 {
      func.call @kmeans_iteration(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, memref<?xi32>, memref<?xmemref<?xf64>>, i32, i32, i32) -> ()
    }
    return
  }
  func.func @kmeans_kernel(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %c8 = arith.constant 8 : index
    %c8_i64 = arith.constant 8 : i64
    %0 = arith.extsi %arg5 : i32 to i64
    %1 = arith.muli %0, %c4_i64 : i64
    %2 = arith.index_cast %1 : i64 to index
    %3 = arith.divui %2, %c4 : index
    %alloc = memref.alloc(%3) : memref<?xi32>
    %4 = "polygeist.typeSize"() <{source = memref<?xf64>}> : () -> index
    %5 = arith.index_cast %4 : index to i64
    %6 = arith.muli %0, %5 : i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = arith.divui %7, %4 : index
    %alloc_0 = memref.alloc(%8) : memref<?xmemref<?xf64>>
    %9 = arith.index_cast %arg5 : i32 to index
    scf.for %arg7 = %c0 to %9 step %c1 {
      %11 = arith.extsi %arg4 : i32 to i64
      %12 = arith.muli %11, %c8_i64 : i64
      %13 = arith.index_cast %12 : i64 to index
      %14 = arith.divui %13, %c8 : index
      %alloc_1 = memref.alloc(%14) : memref<?xf64>
      memref.store %alloc_1, %alloc_0[%arg7] : memref<?xmemref<?xf64>>
    }
    call @kmeans_main_loop(%arg0, %arg1, %arg2, %alloc, %alloc_0, %arg3, %arg4, %arg5, %arg6) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, memref<?xi32>, memref<?xmemref<?xf64>>, i32, i32, i32, i32) -> ()
    %10 = arith.index_cast %arg5 : i32 to index
    scf.for %arg7 = %c0 to %10 step %c1 {
      %11 = memref.load %alloc_0[%arg7] : memref<?xmemref<?xf64>>
      memref.dealloc %11 : memref<?xf64>
    }
    memref.dealloc %alloc_0 : memref<?xmemref<?xf64>>
    memref.dealloc %alloc : memref<?xi32>
    return
  }
  func.func @generate_random_data(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: i32, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 1.000000e+02 : f64
    %cst_0 = arith.constant 0x41DFFFFFFFC00000 : f64
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = "polygeist.pointer2memref"(%0) : (!llvm.ptr) -> memref<?xi64>
    %2 = call @time(%1) : (memref<?xi64>) -> i64
    %3 = arith.trunci %2 : i64 to i32
    call @srand(%3) : (i32) -> ()
    %4 = arith.index_cast %arg2 : i32 to index
    scf.for %arg5 = %c0 to %4 step %c1 {
      %6 = arith.index_cast %arg3 : i32 to index
      scf.for %arg6 = %c0 to %6 step %c1 {
        %7 = memref.load %arg0[%arg5] : memref<?xmemref<?xf64>>
        %8 = func.call @rand() : () -> i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.divf %9, %cst_0 : f64
        %11 = arith.mulf %10, %cst : f64
        memref.store %11, %7[%arg6] : memref<?xf64>
      }
    }
    %5 = arith.index_cast %arg4 : i32 to index
    scf.for %arg5 = %c0 to %5 step %c1 {
      %6 = func.call @rand() : () -> i32
      %7 = arith.remsi %6, %arg2 : i32
      %8 = arith.index_cast %arg3 : i32 to index
      scf.for %arg6 = %c0 to %8 step %c1 {
        %9 = memref.load %arg1[%arg5] : memref<?xmemref<?xf64>>
        %10 = arith.index_cast %7 : i32 to index
        %11 = memref.load %arg0[%10] : memref<?xmemref<?xf64>>
        %12 = memref.load %11[%arg6] : memref<?xf64>
        memref.store %12, %9[%arg6] : memref<?xf64>
      }
    }
    return
  }
  func.func private @srand(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @time(memref<?xi64>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @print_results(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: i32, %arg4: i32, %arg5: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c-1_i32 = arith.constant -1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.addressof @str0 : !llvm.ptr
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<18 x i8>
    %3 = llvm.call @printf(%2) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %4 = arith.index_cast %arg5 : i32 to index
    scf.for %arg6 = %c0 to %4 step %c1 {
      %17 = arith.index_cast %arg6 : index to i32
      %18 = llvm.mlir.addressof @str1 : !llvm.ptr
      %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<15 x i8>
      %20 = llvm.call @printf(%19, %17) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %21 = arith.index_cast %arg4 : i32 to index
      scf.for %arg7 = %c0 to %21 step %c1 {
        %25 = arith.index_cast %arg7 : index to i32
        %26 = llvm.mlir.addressof @str2 : !llvm.ptr
        %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x i8>
        %28 = memref.load %arg1[%arg6] : memref<?xmemref<?xf64>>
        %29 = memref.load %28[%arg7] : memref<?xf64>
        %30 = llvm.call @printf(%27, %29) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
        %31 = arith.addi %arg4, %c-1_i32 : i32
        %32 = arith.cmpi slt, %25, %31 : i32
        scf.if %32 {
          %33 = llvm.mlir.addressof @str3 : !llvm.ptr
          %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
          %35 = llvm.call @printf(%34) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
        }
      }
      %22 = llvm.mlir.addressof @str4 : !llvm.ptr
      %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
      %24 = llvm.call @printf(%23) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    }
    %5 = arith.index_cast %arg5 : i32 to index
    %alloca = memref.alloca(%5) : memref<?xi32>
    %6 = arith.index_cast %arg5 : i32 to index
    scf.for %arg6 = %c0 to %6 step %c1 {
      memref.store %c0_i32, %alloca[%arg6] : memref<?xi32>
    }
    %7 = arith.index_cast %arg3 : i32 to index
    scf.for %arg6 = %c0 to %7 step %c1 {
      %17 = memref.load %arg2[%arg6] : memref<?xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = memref.load %alloca[%18] : memref<?xi32>
      %20 = arith.addi %19, %c1_i32 : i32
      memref.store %20, %alloca[%18] : memref<?xi32>
    }
    %8 = llvm.mlir.addressof @str5 : !llvm.ptr
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %10 = llvm.call @printf(%9) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %11 = arith.index_cast %arg5 : i32 to index
    scf.for %arg6 = %c0 to %11 step %c1 {
      %17 = arith.index_cast %arg6 : index to i32
      %18 = llvm.mlir.addressof @str6 : !llvm.ptr
      %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
      %20 = memref.load %alloca[%arg6] : memref<?xi32>
      %21 = llvm.call @printf(%19, %17, %20) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32, i32) -> i32
    }
    %12 = llvm.mlir.addressof @str7 : !llvm.ptr
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<35 x i8>
    %14 = llvm.call @printf(%13) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %15 = arith.index_cast %arg5 : i32 to index
    %16 = scf.for %arg6 = %c0 to %15 step %c1 iter_args(%arg7 = %0) -> (i32) {
      %17 = arith.index_cast %arg6 : index to i32
      %18 = llvm.mlir.addressof @str8 : !llvm.ptr
      %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<21 x i8>
      %20 = llvm.call @printf(%19, %17) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %21:3 = scf.while (%arg8 = %arg7, %arg9 = %c0_i32, %arg10 = %c0_i32) : (i32, i32, i32) -> (i32, i32, i32) {
        %22 = arith.cmpi slt, %arg9, %arg3 : i32
        %23 = arith.cmpi slt, %arg10, %c3_i32 : i32
        %24 = arith.andi %22, %23 : i1
        scf.condition(%24) %arg8, %arg9, %arg10 : i32, i32, i32
      } do {
      ^bb0(%arg8: i32, %arg9: i32, %arg10: i32):
        %22 = arith.index_cast %arg9 : i32 to index
        %23 = memref.load %arg2[%22] : memref<?xi32>
        %24 = arith.cmpi eq, %23, %17 : i32
        %25 = arith.select %24, %arg4, %arg8 : i32
        %26 = scf.if %24 -> (i32) {
          %28 = llvm.mlir.addressof @str9 : !llvm.ptr
          %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<14 x i8>
          %30 = llvm.call @printf(%29, %arg9) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
          %31 = arith.index_cast %arg4 : i32 to index
          scf.for %arg11 = %c0 to %31 step %c1 {
            %36 = arith.index_cast %arg11 : index to i32
            %37 = llvm.mlir.addressof @str2 : !llvm.ptr
            %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x i8>
            %39 = memref.load %arg0[%22] : memref<?xmemref<?xf64>>
            %40 = memref.load %39[%arg11] : memref<?xf64>
            %41 = llvm.call @printf(%38, %40) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
            %42 = arith.addi %arg4, %c-1_i32 : i32
            %43 = arith.cmpi slt, %36, %42 : i32
            scf.if %43 {
              %44 = llvm.mlir.addressof @str3 : !llvm.ptr
              %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
              %46 = llvm.call @printf(%45) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
            }
          }
          %32 = llvm.mlir.addressof @str4 : !llvm.ptr
          %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
          %34 = llvm.call @printf(%33) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
          %35 = arith.addi %arg10, %c1_i32 : i32
          scf.yield %35 : i32
        } else {
          scf.yield %arg10 : i32
        }
        %27 = arith.addi %arg9, %c1_i32 : i32
        scf.yield %25, %27, %26 : i32, i32, i32
      }
      scf.yield %21#0 : i32
    }
    return
  }
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %true = arith.constant true
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c8_i64 = arith.constant 8 : i64
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %cst = arith.constant 1.000000e+06 : f64
    %false = arith.constant false
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c20_i32 = arith.constant 20 : i32
    %c5_i32 = arith.constant 5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %0 = llvm.mlir.undef : i32
    %1:7 = scf.while (%arg2 = %c1_i32, %arg3 = %c20_i32, %arg4 = %c5_i32, %arg5 = %c2_i32, %arg6 = %c1000_i32, %arg7 = %true, %arg8 = %0, %arg9 = %true) : (i32, i32, i32, i32, i32, i1, i32, i1) -> (i32, i32, i32, i32, i1, i32, i32) {
      %3 = arith.cmpi slt, %arg2, %arg0 : i32
      %4 = arith.andi %3, %arg9 : i1
      scf.condition(%4) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg2 : i32, i32, i32, i32, i1, i32, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i1, %arg7: i32, %arg8: i32):
      %3 = arith.index_cast %arg8 : i32 to index
      %4 = memref.load %arg1[%3] : memref<?xmemref<?xi8>>
      %5 = llvm.mlir.addressof @str10 : !llvm.ptr
      %6 = "polygeist.pointer2memref"(%5) : (!llvm.ptr) -> memref<?xi8>
      %7 = func.call @strcmp(%4, %6) : (memref<?xi8>, memref<?xi8>) -> i32
      %8 = arith.cmpi eq, %7, %c0_i32 : i32
      %9 = scf.if %8 -> (i1) {
        %12 = arith.addi %arg8, %c1_i32 : i32
        %13 = arith.cmpi slt, %12, %arg0 : i32
        scf.yield %13 : i1
      } else {
        scf.yield %false : i1
      }
      %10:8 = scf.if %9 -> (i32, i32, i32, i32, i32, i1, i32, i1) {
        %12 = arith.addi %arg8, %c1_i32 : i32
        %13 = arith.index_cast %12 : i32 to index
        %14 = memref.load %arg1[%13] : memref<?xmemref<?xi8>>
        %15 = func.call @atoi(%14) : (memref<?xi8>) -> i32
        %16 = arith.addi %arg8, %c1_i32 : i32
        scf.yield %16, %arg2, %arg3, %arg4, %15, %arg6, %arg7, %true : i32, i32, i32, i32, i32, i1, i32, i1
      } else {
        %12 = memref.load %arg1[%3] : memref<?xmemref<?xi8>>
        %13 = llvm.mlir.addressof @str11 : !llvm.ptr
        %14 = "polygeist.pointer2memref"(%13) : (!llvm.ptr) -> memref<?xi8>
        %15 = func.call @strcmp(%12, %14) : (memref<?xi8>, memref<?xi8>) -> i32
        %16 = arith.cmpi eq, %15, %c0_i32 : i32
        %17 = scf.if %16 -> (i1) {
          %19 = arith.addi %arg8, %c1_i32 : i32
          %20 = arith.cmpi slt, %19, %arg0 : i32
          scf.yield %20 : i1
        } else {
          scf.yield %false : i1
        }
        %18:7 = scf.if %17 -> (i32, i32, i32, i32, i1, i32, i1) {
          %19 = arith.addi %arg8, %c1_i32 : i32
          %20 = arith.index_cast %19 : i32 to index
          %21 = memref.load %arg1[%20] : memref<?xmemref<?xi8>>
          %22 = func.call @atoi(%21) : (memref<?xi8>) -> i32
          %23 = arith.addi %arg8, %c1_i32 : i32
          scf.yield %23, %arg2, %arg3, %22, %arg6, %arg7, %true : i32, i32, i32, i32, i1, i32, i1
        } else {
          %19 = memref.load %arg1[%3] : memref<?xmemref<?xi8>>
          %20 = llvm.mlir.addressof @str12 : !llvm.ptr
          %21 = "polygeist.pointer2memref"(%20) : (!llvm.ptr) -> memref<?xi8>
          %22 = func.call @strcmp(%19, %21) : (memref<?xi8>, memref<?xi8>) -> i32
          %23 = arith.cmpi eq, %22, %c0_i32 : i32
          %24 = scf.if %23 -> (i1) {
            %26 = arith.addi %arg8, %c1_i32 : i32
            %27 = arith.cmpi slt, %26, %arg0 : i32
            scf.yield %27 : i1
          } else {
            scf.yield %false : i1
          }
          %25:6 = scf.if %24 -> (i32, i32, i32, i1, i32, i1) {
            %26 = arith.addi %arg8, %c1_i32 : i32
            %27 = arith.index_cast %26 : i32 to index
            %28 = memref.load %arg1[%27] : memref<?xmemref<?xi8>>
            %29 = func.call @atoi(%28) : (memref<?xi8>) -> i32
            %30 = arith.addi %arg8, %c1_i32 : i32
            scf.yield %30, %arg2, %29, %arg6, %arg7, %true : i32, i32, i32, i1, i32, i1
          } else {
            %26 = memref.load %arg1[%3] : memref<?xmemref<?xi8>>
            %27 = llvm.mlir.addressof @str13 : !llvm.ptr
            %28 = "polygeist.pointer2memref"(%27) : (!llvm.ptr) -> memref<?xi8>
            %29 = func.call @strcmp(%26, %28) : (memref<?xi8>, memref<?xi8>) -> i32
            %30 = arith.cmpi eq, %29, %c0_i32 : i32
            %31 = scf.if %30 -> (i1) {
              %33 = arith.addi %arg8, %c1_i32 : i32
              %34 = arith.cmpi slt, %33, %arg0 : i32
              scf.yield %34 : i1
            } else {
              scf.yield %false : i1
            }
            %32:5 = scf.if %31 -> (i32, i32, i1, i32, i1) {
              %33 = arith.addi %arg8, %c1_i32 : i32
              %34 = arith.index_cast %33 : i32 to index
              %35 = memref.load %arg1[%34] : memref<?xmemref<?xi8>>
              %36 = func.call @atoi(%35) : (memref<?xi8>) -> i32
              %37 = arith.addi %arg8, %c1_i32 : i32
              scf.yield %37, %36, %arg6, %arg7, %true : i32, i32, i1, i32, i1
            } else {
              %33 = memref.load %arg1[%3] : memref<?xmemref<?xi8>>
              %34 = llvm.mlir.addressof @str14 : !llvm.ptr
              %35 = "polygeist.pointer2memref"(%34) : (!llvm.ptr) -> memref<?xi8>
              %36 = func.call @strcmp(%33, %35) : (memref<?xi8>, memref<?xi8>) -> i32
              %37 = arith.cmpi eq, %36, %c0_i32 : i32
              %38 = arith.cmpi ne, %36, %c0_i32 : i32
              %39 = arith.andi %38, %arg6 : i1
              %40 = arith.select %37, %c0_i32, %arg7 : i32
              %41 = arith.cmpi ne, %36, %c0_i32 : i32
              scf.if %37 {
                %42 = llvm.mlir.addressof @str15 : !llvm.ptr
                %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<77 x i8>
                %44 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
                %45 = "polygeist.memref2pointer"(%44) : (memref<?xi8>) -> !llvm.ptr
                %46 = llvm.call @printf(%43, %45) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                %47 = llvm.mlir.addressof @str16 : !llvm.ptr
                %48 = llvm.getelementptr %47[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<60 x i8>
                %49 = llvm.call @printf(%48) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                %50 = llvm.mlir.addressof @str17 : !llvm.ptr
                %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<58 x i8>
                %52 = llvm.call @printf(%51) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                %53 = llvm.mlir.addressof @str18 : !llvm.ptr
                %54 = llvm.getelementptr %53[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<54 x i8>
                %55 = llvm.call @printf(%54) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                %56 = llvm.mlir.addressof @str19 : !llvm.ptr
                %57 = llvm.getelementptr %56[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<65 x i8>
                %58 = llvm.call @printf(%57) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                %59 = llvm.mlir.addressof @str20 : !llvm.ptr
                %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<45 x i8>
                %61 = llvm.call @printf(%60) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
              }
              scf.yield %arg8, %arg2, %39, %40, %41 : i32, i32, i1, i32, i1
            }
            scf.yield %32#0, %32#1, %arg3, %32#2, %32#3, %32#4 : i32, i32, i32, i1, i32, i1
          }
          scf.yield %25#0, %25#1, %25#2, %arg4, %25#3, %25#4, %25#5 : i32, i32, i32, i32, i1, i32, i1
        }
        scf.yield %18#0, %18#1, %18#2, %18#3, %arg5, %18#4, %18#5, %18#6 : i32, i32, i32, i32, i32, i1, i32, i1
      }
      %11 = scf.if %10#7 -> (i32) {
        %12 = arith.addi %10#0, %c1_i32 : i32
        scf.yield %12 : i32
      } else {
        scf.yield %arg8 : i32
      }
      scf.yield %11, %10#1, %10#2, %10#3, %10#4, %10#5, %10#6, %10#7 : i32, i32, i32, i32, i32, i1, i32, i1
    }
    %2 = arith.select %1#4, %c0_i32, %1#5 : i32
    scf.if %1#4 {
      %3 = llvm.mlir.addressof @str21 : !llvm.ptr
      %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
      %5 = llvm.call @printf(%4) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
      %6 = llvm.mlir.addressof @str22 : !llvm.ptr
      %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<14 x i8>
      %8 = llvm.call @printf(%7, %1#3) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %9 = llvm.mlir.addressof @str23 : !llvm.ptr
      %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<18 x i8>
      %11 = llvm.call @printf(%10, %1#2) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %12 = llvm.mlir.addressof @str24 : !llvm.ptr
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
      %14 = llvm.call @printf(%13, %1#1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %15 = llvm.mlir.addressof @str25 : !llvm.ptr
      %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
      %17 = llvm.call @printf(%16, %1#0) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %18 = "polygeist.typeSize"() <{source = memref<?xf64>}> : () -> index
      %19 = arith.extsi %1#3 : i32 to i64
      %20 = arith.index_cast %18 : index to i64
      %21 = arith.muli %19, %20 : i64
      %22 = arith.index_cast %21 : i64 to index
      %23 = arith.divui %22, %18 : index
      %alloc = memref.alloc(%23) : memref<?xmemref<?xf64>>
      %24 = arith.index_cast %1#3 : i32 to index
      scf.for %arg2 = %c0 to %24 step %c1 {
        %46 = arith.extsi %1#2 : i32 to i64
        %47 = arith.muli %46, %c8_i64 : i64
        %48 = arith.index_cast %47 : i64 to index
        %49 = arith.divui %48, %c8 : index
        %alloc_2 = memref.alloc(%49) : memref<?xf64>
        memref.store %alloc_2, %alloc[%arg2] : memref<?xmemref<?xf64>>
      }
      %25 = "polygeist.typeSize"() <{source = memref<?xf64>}> : () -> index
      %26 = arith.extsi %1#1 : i32 to i64
      %27 = arith.index_cast %25 : index to i64
      %28 = arith.muli %26, %27 : i64
      %29 = arith.index_cast %28 : i64 to index
      %30 = arith.divui %29, %25 : index
      %alloc_0 = memref.alloc(%30) : memref<?xmemref<?xf64>>
      %31 = arith.index_cast %1#1 : i32 to index
      scf.for %arg2 = %c0 to %31 step %c1 {
        %46 = arith.extsi %1#2 : i32 to i64
        %47 = arith.muli %46, %c8_i64 : i64
        %48 = arith.index_cast %47 : i64 to index
        %49 = arith.divui %48, %c8 : index
        %alloc_2 = memref.alloc(%49) : memref<?xf64>
        memref.store %alloc_2, %alloc_0[%arg2] : memref<?xmemref<?xf64>>
      }
      %32 = arith.extsi %1#3 : i32 to i64
      %33 = arith.muli %32, %c4_i64 : i64
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.divui %34, %c4 : index
      %alloc_1 = memref.alloc(%35) : memref<?xi32>
      func.call @generate_random_data(%alloc, %alloc_0, %1#3, %1#2, %1#1) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, i32, i32, i32) -> ()
      %36 = func.call @clock() : () -> i64
      func.call @kmeans_kernel(%alloc, %alloc_0, %alloc_1, %1#3, %1#2, %1#1, %1#0) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32, i32, i32) -> ()
      %37 = func.call @clock() : () -> i64
      %38 = arith.subi %37, %36 : i64
      %39 = arith.sitofp %38 : i64 to f64
      %40 = arith.divf %39, %cst : f64
      %41 = llvm.mlir.addressof @str26 : !llvm.ptr
      %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<36 x i8>
      %43 = llvm.call @printf(%42, %40) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
      func.call @print_results(%alloc, %alloc_0, %alloc_1, %1#3, %1#2, %1#1) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32, i32) -> ()
      %44 = arith.index_cast %1#3 : i32 to index
      scf.for %arg2 = %c0 to %44 step %c1 {
        %46 = memref.load %alloc[%arg2] : memref<?xmemref<?xf64>>
        memref.dealloc %46 : memref<?xf64>
      }
      memref.dealloc %alloc : memref<?xmemref<?xf64>>
      %45 = arith.index_cast %1#1 : i32 to index
      scf.for %arg2 = %c0 to %45 step %c1 {
        %46 = memref.load %alloc_0[%arg2] : memref<?xmemref<?xf64>>
        memref.dealloc %46 : memref<?xf64>
      }
      memref.dealloc %alloc_0 : memref<?xmemref<?xf64>>
      memref.dealloc %alloc_1 : memref<?xi32>
    }
    return %2 : i32
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @clock() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
}
