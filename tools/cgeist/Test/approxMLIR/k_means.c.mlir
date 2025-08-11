#set = affine_set<()[s0] : (s0 - 1 >= 0)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str31("\0AK-means completed in %.3f seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str30("standard\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str29("parallel\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str28("  Version: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str27("  Max iterations: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str26("  Clusters: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str25("  Dimensions: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str24("  Points: %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str23("Running K-means with:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str22("  -h               : Show this help message\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str21("  -p               : Use parallel version of k-means\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str20("  -i max_iterations: Maximum number of iterations (default: 20)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str19("  -k clusters      : Number of clusters (default: 5)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str18("  -d dimensions    : Dimensionality of data (default: 2)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str17("  -n num_points    : Number of data points (default: 1000)\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str16("Usage: %s [-n num_points] [-d dimensions] [-k clusters] [-i max_iterations] [-p]\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("-h\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str14("-p\00") {addr_space = 0 : i32}
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
  func.func @distance(%arg0: memref<?xf64>, %arg1: memref<?xf64>, %arg2: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = scf.for %arg3 = %c0 to %0 step %c1 iter_args(%arg4 = %cst) -> (f64) {
      %3 = memref.load %arg0[%arg3] : memref<?xf64>
      %4 = memref.load %arg1[%arg3] : memref<?xf64>
      %5 = arith.subf %3, %4 : f64
      %6 = arith.mulf %5, %5 : f64
      %7 = arith.addf %arg4, %6 : f64
      scf.yield %7 : f64
    }
    %2 = math.sqrt %1 : f64
    return %2 : f64
  }
  func.func @kmeans_kernel(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.7976931348623157E+308 : f64
    %c8_i64 = arith.constant 8 : i64
    %c8 = arith.constant 8 : index
    %c4_i64 = arith.constant 4 : i64
    %c4 = arith.constant 4 : index
    %0 = arith.index_cast %arg3 : i32 to index
    %1 = arith.index_cast %arg5 : i32 to index
    %2 = arith.index_cast %arg4 : i32 to index
    %3 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %3, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<i32>
    %4 = llvm.mlir.undef : i32
    affine.store %4, %alloca_1[] : memref<i32>
    %alloca_2 = memref.alloca() : memref<f64>
    affine.store %3, %alloca_2[] : memref<f64>
    %5 = arith.extsi %arg5 : i32 to i64
    %6 = arith.muli %5, %c4_i64 : i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = arith.divui %7, %c4 : index
    %alloc = memref.alloc(%8) : memref<?xi32>
    %9 = "polygeist.typeSize"() <{source = memref<?xf64>}> : () -> index
    %10 = arith.index_cast %9 : index to i64
    %11 = arith.muli %5, %10 : i64
    %12 = arith.index_cast %11 : i64 to index
    %13 = arith.divui %12, %9 : index
    %alloc_3 = memref.alloc(%13) : memref<?xmemref<?xf64>>
    %14 = arith.index_cast %arg5 : i32 to index
    scf.for %arg7 = %c0 to %14 step %c1 {
      %17 = arith.extsi %arg4 : i32 to i64
      %18 = arith.muli %17, %c8_i64 : i64
      %19 = arith.index_cast %18 : i64 to index
      %20 = arith.divui %19, %c8 : index
      %alloc_4 = memref.alloc(%20) : memref<?xf64>
      memref.store %alloc_4, %alloc_3[%arg7] : memref<?xmemref<?xf64>>
    }
    %15 = arith.index_cast %arg6 : i32 to index
    affine.for %arg7 = 0 to %15 {
      affine.for %arg8 = 0 to %1 {
        affine.store %c0_i32, %alloc[%arg8] : memref<?xi32>
        affine.if #set()[%2] {
          %17 = affine.load %alloc_3[%arg8] : memref<?xmemref<?xf64>>
          affine.for %arg9 = 0 to %2 {
            affine.store %cst, %17[%arg9] : memref<?xf64>
          }
        }
      }
      affine.for %arg8 = 0 to %0 {
        affine.store %cst_0, %alloca_2[] : memref<f64>
        affine.store %c0_i32, %alloca_1[] : memref<i32>
        affine.for %arg9 = 0 to %1 {
          %22 = arith.index_cast %arg9 : index to i32
          affine.store %cst, %alloca[] : memref<f64>
          affine.if #set()[%2] {
            %26 = affine.load %arg0[%arg8] : memref<?xmemref<?xf64>>
            %27 = affine.load %arg1[%arg9] : memref<?xmemref<?xf64>>
            affine.for %arg10 = 0 to %2 {
              %28 = affine.load %26[%arg10] : memref<?xf64>
              %29 = affine.load %27[%arg10] : memref<?xf64>
              %30 = arith.subf %28, %29 : f64
              %31 = arith.mulf %30, %30 : f64
              %32 = affine.load %alloca[] : memref<f64>
              %33 = arith.addf %32, %31 : f64
              affine.store %33, %alloca[] : memref<f64>
            }
          }
          %23 = affine.load %alloca[] : memref<f64>
          %24 = affine.load %alloca_2[] : memref<f64>
          %25 = arith.cmpf olt, %23, %24 : f64
          scf.if %25 {
            affine.store %23, %alloca_2[] : memref<f64>
            affine.store %22, %alloca_1[] : memref<i32>
          }
        }
        %17 = affine.load %alloca_1[] : memref<i32>
        affine.store %17, %arg2[%arg8] : memref<?xi32>
        %18 = arith.index_cast %17 : i32 to index
        %19 = memref.load %alloc[%18] : memref<?xi32>
        %20 = arith.addi %19, %c1_i32 : i32
        memref.store %20, %alloc[%18] : memref<?xi32>
        %21 = arith.index_cast %17 : i32 to index
        affine.if #set()[%2] {
          %22 = memref.load %alloc_3[%21] : memref<?xmemref<?xf64>>
          affine.for %arg9 = 0 to %2 {
            %23 = affine.load %arg0[%arg8] : memref<?xmemref<?xf64>>
            %24 = affine.load %23[%arg9] : memref<?xf64>
            %25 = affine.load %22[%arg9] : memref<?xf64>
            %26 = arith.addf %25, %24 : f64
            affine.store %26, %22[%arg9] : memref<?xf64>
          }
        }
      }
      affine.for %arg8 = 0 to %1 {
        %17 = affine.load %alloc[%arg8] : memref<?xi32>
        %18 = arith.cmpi sgt, %17, %c0_i32 : i32
        scf.if %18 {
          %19 = arith.sitofp %17 : i32 to f64
          affine.if #set()[%2] {
            %20 = affine.load %alloc_3[%arg8] : memref<?xmemref<?xf64>>
            affine.for %arg9 = 0 to %2 {
              %21 = affine.load %arg1[%arg8] : memref<?xmemref<?xf64>>
              %22 = affine.load %20[%arg9] : memref<?xf64>
              %23 = arith.divf %22, %19 : f64
              affine.store %23, %21[%arg9] : memref<?xf64>
            }
          }
        }
      }
    }
    %16 = arith.index_cast %arg5 : i32 to index
    scf.for %arg7 = %c0 to %16 step %c1 {
      %17 = memref.load %alloc_3[%arg7] : memref<?xmemref<?xf64>>
      memref.dealloc %17 : memref<?xf64>
    }
    memref.dealloc %alloc_3 : memref<?xmemref<?xf64>>
    memref.dealloc %alloc : memref<?xi32>
    return
  }
  func.func @kmeans_parallel(%arg0: memref<?xmemref<?xf64>>, %arg1: memref<?xmemref<?xf64>>, %arg2: memref<?xi32>, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.7976931348623157E+308 : f64
    %c0_i32 = arith.constant 0 : i32
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg3 : i32 to index
    %1 = arith.index_cast %arg4 : i32 to index
    %2 = llvm.mlir.undef : i32
    %3 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %3, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<i32>
    affine.store %2, %alloca_1[] : memref<i32>
    %alloca_2 = memref.alloca() : memref<f64>
    affine.store %3, %alloca_2[] : memref<f64>
    %4 = arith.index_cast %arg6 : i32 to index
    %5 = arith.index_cast %arg5 : i32 to index
    %alloca_3 = memref.alloca(%5) : memref<?xi32>
    affine.for %arg7 = 0 to %4 {
      affine.for %arg8 = 0 to %0 {
        affine.store %cst, %alloca_2[] : memref<f64>
        affine.store %c0_i32, %alloca_1[] : memref<i32>
        affine.for %arg9 = 0 to %5 {
          %7 = arith.index_cast %arg9 : index to i32
          affine.store %cst_0, %alloca[] : memref<f64>
          affine.if #set()[%1] {
            %11 = affine.load %arg0[%arg8] : memref<?xmemref<?xf64>>
            %12 = affine.load %arg1[%arg9] : memref<?xmemref<?xf64>>
            affine.for %arg10 = 0 to %1 {
              %13 = affine.load %11[%arg10] : memref<?xf64>
              %14 = affine.load %12[%arg10] : memref<?xf64>
              %15 = arith.subf %13, %14 : f64
              %16 = arith.mulf %15, %15 : f64
              %17 = affine.load %alloca[] : memref<f64>
              %18 = arith.addf %17, %16 : f64
              affine.store %18, %alloca[] : memref<f64>
            }
          }
          %8 = affine.load %alloca[] : memref<f64>
          %9 = affine.load %alloca_2[] : memref<f64>
          %10 = arith.cmpf olt, %8, %9 : f64
          scf.if %10 {
            affine.store %8, %alloca_2[] : memref<f64>
            affine.store %7, %alloca_1[] : memref<i32>
          }
        }
        %6 = affine.load %alloca_1[] : memref<i32>
        affine.store %6, %arg2[%arg8] : memref<?xi32>
      }
      affine.for %arg8 = 0 to %5 {
        affine.for %arg9 = 0 to %1 {
          %6 = affine.load %arg1[%arg8] : memref<?xmemref<?xf64>>
          affine.store %cst_0, %6[%arg9] : memref<?xf64>
        }
      }
      affine.for %arg8 = 0 to %5 {
        affine.store %c0_i32, %alloca_3[%arg8] : memref<?xi32>
      }
      affine.for %arg8 = 0 to %0 {
        %6 = affine.load %arg2[%arg8] : memref<?xi32>
        %7 = arith.index_cast %6 : i32 to index
        %8 = memref.load %alloca_3[%7] : memref<?xi32>
        %9 = arith.addi %8, %c1_i32 : i32
        memref.store %9, %alloca_3[%7] : memref<?xi32>
        %10 = arith.index_cast %6 : i32 to index
        affine.for %arg9 = 0 to %1 {
          %11 = memref.load %arg1[%10] : memref<?xmemref<?xf64>>
          %12 = affine.load %arg0[%arg8] : memref<?xmemref<?xf64>>
          %13 = affine.load %12[%arg9] : memref<?xf64>
          %14 = affine.load %11[%arg9] : memref<?xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %11[%arg9] : memref<?xf64>
        }
      }
      affine.for %arg8 = 0 to %5 {
        %6 = affine.load %alloca_3[%arg8] : memref<?xi32>
        %7 = arith.cmpi sgt, %6, %c0_i32 : i32
        scf.if %7 {
          %8 = arith.sitofp %6 : i32 to f64
          affine.for %arg9 = 0 to %1 {
            %9 = affine.load %arg1[%arg8] : memref<?xmemref<?xf64>>
            %10 = affine.load %9[%arg9] : memref<?xf64>
            %11 = arith.divf %10, %8 : f64
            affine.store %11, %9[%arg9] : memref<?xf64>
          }
        }
      }
    }
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
    %c0_i32 = arith.constant 0 : i32
    %c8 = arith.constant 8 : index
    %c8_i64 = arith.constant 8 : i64
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %cst = arith.constant 1.000000e+06 : f64
    %false = arith.constant false
    %c1_i32 = arith.constant 1 : i32
    %c20_i32 = arith.constant 20 : i32
    %c5_i32 = arith.constant 5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %0 = llvm.mlir.undef : i32
    %1:8 = scf.while (%arg2 = %c1_i32, %arg3 = %c0_i32, %arg4 = %c20_i32, %arg5 = %c5_i32, %arg6 = %c2_i32, %arg7 = %c1000_i32, %arg8 = %true, %arg9 = %0, %arg10 = %true) : (i32, i32, i32, i32, i32, i32, i1, i32, i1) -> (i32, i32, i32, i32, i32, i1, i32, i32) {
      %4 = arith.cmpi slt, %arg2, %arg0 : i32
      %5 = arith.andi %4, %arg10 : i1
      scf.condition(%5) %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg2 : i32, i32, i32, i32, i32, i1, i32, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i1, %arg8: i32, %arg9: i32):
      %4 = arith.index_cast %arg9 : i32 to index
      %5 = memref.load %arg1[%4] : memref<?xmemref<?xi8>>
      %6 = llvm.mlir.addressof @str10 : !llvm.ptr
      %7 = "polygeist.pointer2memref"(%6) : (!llvm.ptr) -> memref<?xi8>
      %8 = func.call @strcmp(%5, %7) : (memref<?xi8>, memref<?xi8>) -> i32
      %9 = arith.cmpi eq, %8, %c0_i32 : i32
      %10 = scf.if %9 -> (i1) {
        %13 = arith.addi %arg9, %c1_i32 : i32
        %14 = arith.cmpi slt, %13, %arg0 : i32
        scf.yield %14 : i1
      } else {
        scf.yield %false : i1
      }
      %11:9 = scf.if %10 -> (i32, i32, i32, i32, i32, i32, i1, i32, i1) {
        %13 = arith.addi %arg9, %c1_i32 : i32
        %14 = arith.index_cast %13 : i32 to index
        %15 = memref.load %arg1[%14] : memref<?xmemref<?xi8>>
        %16 = func.call @atoi(%15) : (memref<?xi8>) -> i32
        %17 = arith.addi %arg9, %c1_i32 : i32
        scf.yield %17, %arg2, %arg3, %arg4, %arg5, %16, %arg7, %arg8, %true : i32, i32, i32, i32, i32, i32, i1, i32, i1
      } else {
        %13 = memref.load %arg1[%4] : memref<?xmemref<?xi8>>
        %14 = llvm.mlir.addressof @str11 : !llvm.ptr
        %15 = "polygeist.pointer2memref"(%14) : (!llvm.ptr) -> memref<?xi8>
        %16 = func.call @strcmp(%13, %15) : (memref<?xi8>, memref<?xi8>) -> i32
        %17 = arith.cmpi eq, %16, %c0_i32 : i32
        %18 = scf.if %17 -> (i1) {
          %20 = arith.addi %arg9, %c1_i32 : i32
          %21 = arith.cmpi slt, %20, %arg0 : i32
          scf.yield %21 : i1
        } else {
          scf.yield %false : i1
        }
        %19:8 = scf.if %18 -> (i32, i32, i32, i32, i32, i1, i32, i1) {
          %20 = arith.addi %arg9, %c1_i32 : i32
          %21 = arith.index_cast %20 : i32 to index
          %22 = memref.load %arg1[%21] : memref<?xmemref<?xi8>>
          %23 = func.call @atoi(%22) : (memref<?xi8>) -> i32
          %24 = arith.addi %arg9, %c1_i32 : i32
          scf.yield %24, %arg2, %arg3, %arg4, %23, %arg7, %arg8, %true : i32, i32, i32, i32, i32, i1, i32, i1
        } else {
          %20 = memref.load %arg1[%4] : memref<?xmemref<?xi8>>
          %21 = llvm.mlir.addressof @str12 : !llvm.ptr
          %22 = "polygeist.pointer2memref"(%21) : (!llvm.ptr) -> memref<?xi8>
          %23 = func.call @strcmp(%20, %22) : (memref<?xi8>, memref<?xi8>) -> i32
          %24 = arith.cmpi eq, %23, %c0_i32 : i32
          %25 = scf.if %24 -> (i1) {
            %27 = arith.addi %arg9, %c1_i32 : i32
            %28 = arith.cmpi slt, %27, %arg0 : i32
            scf.yield %28 : i1
          } else {
            scf.yield %false : i1
          }
          %26:7 = scf.if %25 -> (i32, i32, i32, i32, i1, i32, i1) {
            %27 = arith.addi %arg9, %c1_i32 : i32
            %28 = arith.index_cast %27 : i32 to index
            %29 = memref.load %arg1[%28] : memref<?xmemref<?xi8>>
            %30 = func.call @atoi(%29) : (memref<?xi8>) -> i32
            %31 = arith.addi %arg9, %c1_i32 : i32
            scf.yield %31, %arg2, %arg3, %30, %arg7, %arg8, %true : i32, i32, i32, i32, i1, i32, i1
          } else {
            %27 = memref.load %arg1[%4] : memref<?xmemref<?xi8>>
            %28 = llvm.mlir.addressof @str13 : !llvm.ptr
            %29 = "polygeist.pointer2memref"(%28) : (!llvm.ptr) -> memref<?xi8>
            %30 = func.call @strcmp(%27, %29) : (memref<?xi8>, memref<?xi8>) -> i32
            %31 = arith.cmpi eq, %30, %c0_i32 : i32
            %32 = scf.if %31 -> (i1) {
              %34 = arith.addi %arg9, %c1_i32 : i32
              %35 = arith.cmpi slt, %34, %arg0 : i32
              scf.yield %35 : i1
            } else {
              scf.yield %false : i1
            }
            %33:6 = scf.if %32 -> (i32, i32, i32, i1, i32, i1) {
              %34 = arith.addi %arg9, %c1_i32 : i32
              %35 = arith.index_cast %34 : i32 to index
              %36 = memref.load %arg1[%35] : memref<?xmemref<?xi8>>
              %37 = func.call @atoi(%36) : (memref<?xi8>) -> i32
              %38 = arith.addi %arg9, %c1_i32 : i32
              scf.yield %38, %arg2, %37, %arg7, %arg8, %true : i32, i32, i32, i1, i32, i1
            } else {
              %34 = memref.load %arg1[%4] : memref<?xmemref<?xi8>>
              %35 = llvm.mlir.addressof @str14 : !llvm.ptr
              %36 = "polygeist.pointer2memref"(%35) : (!llvm.ptr) -> memref<?xi8>
              %37 = func.call @strcmp(%34, %36) : (memref<?xi8>, memref<?xi8>) -> i32
              %38 = arith.cmpi eq, %37, %c0_i32 : i32
              %39 = arith.select %38, %c1_i32, %arg2 : i32
              %40:3 = scf.if %38 -> (i1, i32, i1) {
                scf.yield %arg7, %arg8, %true : i1, i32, i1
              } else {
                %41 = memref.load %arg1[%4] : memref<?xmemref<?xi8>>
                %42 = llvm.mlir.addressof @str15 : !llvm.ptr
                %43 = "polygeist.pointer2memref"(%42) : (!llvm.ptr) -> memref<?xi8>
                %44 = func.call @strcmp(%41, %43) : (memref<?xi8>, memref<?xi8>) -> i32
                %45 = arith.cmpi eq, %44, %c0_i32 : i32
                %46 = arith.cmpi ne, %44, %c0_i32 : i32
                %47 = arith.andi %46, %arg7 : i1
                %48 = arith.select %45, %c0_i32, %arg8 : i32
                %49 = arith.cmpi ne, %44, %c0_i32 : i32
                scf.if %45 {
                  %50 = llvm.mlir.addressof @str16 : !llvm.ptr
                  %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<82 x i8>
                  %52 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
                  %53 = "polygeist.memref2pointer"(%52) : (memref<?xi8>) -> !llvm.ptr
                  %54 = llvm.call @printf(%51, %53) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                  %55 = llvm.mlir.addressof @str17 : !llvm.ptr
                  %56 = llvm.getelementptr %55[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<60 x i8>
                  %57 = llvm.call @printf(%56) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                  %58 = llvm.mlir.addressof @str18 : !llvm.ptr
                  %59 = llvm.getelementptr %58[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<58 x i8>
                  %60 = llvm.call @printf(%59) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                  %61 = llvm.mlir.addressof @str19 : !llvm.ptr
                  %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<54 x i8>
                  %63 = llvm.call @printf(%62) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                  %64 = llvm.mlir.addressof @str20 : !llvm.ptr
                  %65 = llvm.getelementptr %64[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<65 x i8>
                  %66 = llvm.call @printf(%65) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                  %67 = llvm.mlir.addressof @str21 : !llvm.ptr
                  %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<54 x i8>
                  %69 = llvm.call @printf(%68) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                  %70 = llvm.mlir.addressof @str22 : !llvm.ptr
                  %71 = llvm.getelementptr %70[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<45 x i8>
                  %72 = llvm.call @printf(%71) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
                }
                scf.yield %47, %48, %49 : i1, i32, i1
              }
              scf.yield %arg9, %39, %arg3, %40#0, %40#1, %40#2 : i32, i32, i32, i1, i32, i1
            }
            scf.yield %33#0, %33#1, %33#2, %arg4, %33#3, %33#4, %33#5 : i32, i32, i32, i32, i1, i32, i1
          }
          scf.yield %26#0, %26#1, %26#2, %26#3, %arg5, %26#4, %26#5, %26#6 : i32, i32, i32, i32, i32, i1, i32, i1
        }
        scf.yield %19#0, %19#1, %19#2, %19#3, %19#4, %arg6, %19#5, %19#6, %19#7 : i32, i32, i32, i32, i32, i32, i1, i32, i1
      }
      %12 = scf.if %11#8 -> (i32) {
        %13 = arith.addi %11#0, %c1_i32 : i32
        scf.yield %13 : i32
      } else {
        scf.yield %arg9 : i32
      }
      scf.yield %12, %11#1, %11#2, %11#3, %11#4, %11#5, %11#6, %11#7, %11#8 : i32, i32, i32, i32, i32, i32, i1, i32, i1
    }
    %2 = arith.cmpi ne, %1#0, %c0_i32 : i32
    %3 = arith.select %1#5, %c0_i32, %1#6 : i32
    scf.if %1#5 {
      %4 = llvm.mlir.addressof @str23 : !llvm.ptr
      %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
      %6 = llvm.call @printf(%5) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
      %7 = llvm.mlir.addressof @str24 : !llvm.ptr
      %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<14 x i8>
      %9 = llvm.call @printf(%8, %1#4) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %10 = llvm.mlir.addressof @str25 : !llvm.ptr
      %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<18 x i8>
      %12 = llvm.call @printf(%11, %1#3) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %13 = llvm.mlir.addressof @str26 : !llvm.ptr
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
      %15 = llvm.call @printf(%14, %1#2) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %16 = llvm.mlir.addressof @str27 : !llvm.ptr
      %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
      %18 = llvm.call @printf(%17, %1#1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
      %19 = llvm.mlir.addressof @str28 : !llvm.ptr
      %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<15 x i8>
      %21 = scf.if %2 -> (!llvm.ptr) {
        %52 = llvm.mlir.addressof @str29 : !llvm.ptr
        %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x i8>
        scf.yield %53 : !llvm.ptr
      } else {
        %52 = llvm.mlir.addressof @str30 : !llvm.ptr
        %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x i8>
        scf.yield %53 : !llvm.ptr
      }
      %22 = llvm.call @printf(%20, %21) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      %23 = "polygeist.typeSize"() <{source = memref<?xf64>}> : () -> index
      %24 = arith.extsi %1#4 : i32 to i64
      %25 = arith.index_cast %23 : index to i64
      %26 = arith.muli %24, %25 : i64
      %27 = arith.index_cast %26 : i64 to index
      %28 = arith.divui %27, %23 : index
      %alloc = memref.alloc(%28) : memref<?xmemref<?xf64>>
      %29 = arith.index_cast %1#4 : i32 to index
      scf.for %arg2 = %c0 to %29 step %c1 {
        %52 = arith.extsi %1#3 : i32 to i64
        %53 = arith.muli %52, %c8_i64 : i64
        %54 = arith.index_cast %53 : i64 to index
        %55 = arith.divui %54, %c8 : index
        %alloc_2 = memref.alloc(%55) : memref<?xf64>
        memref.store %alloc_2, %alloc[%arg2] : memref<?xmemref<?xf64>>
      }
      %30 = "polygeist.typeSize"() <{source = memref<?xf64>}> : () -> index
      %31 = arith.extsi %1#2 : i32 to i64
      %32 = arith.index_cast %30 : index to i64
      %33 = arith.muli %31, %32 : i64
      %34 = arith.index_cast %33 : i64 to index
      %35 = arith.divui %34, %30 : index
      %alloc_0 = memref.alloc(%35) : memref<?xmemref<?xf64>>
      %36 = arith.index_cast %1#2 : i32 to index
      scf.for %arg2 = %c0 to %36 step %c1 {
        %52 = arith.extsi %1#3 : i32 to i64
        %53 = arith.muli %52, %c8_i64 : i64
        %54 = arith.index_cast %53 : i64 to index
        %55 = arith.divui %54, %c8 : index
        %alloc_2 = memref.alloc(%55) : memref<?xf64>
        memref.store %alloc_2, %alloc_0[%arg2] : memref<?xmemref<?xf64>>
      }
      %37 = arith.extsi %1#4 : i32 to i64
      %38 = arith.muli %37, %c4_i64 : i64
      %39 = arith.index_cast %38 : i64 to index
      %40 = arith.divui %39, %c4 : index
      %alloc_1 = memref.alloc(%40) : memref<?xi32>
      func.call @generate_random_data(%alloc, %alloc_0, %1#4, %1#3, %1#2) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, i32, i32, i32) -> ()
      %41 = func.call @clock() : () -> i64
      %42 = arith.cmpi ne, %1#0, %c0_i32 : i32
      scf.if %42 {
        func.call @kmeans_parallel(%alloc, %alloc_0, %alloc_1, %1#4, %1#3, %1#2, %1#1) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32, i32, i32) -> ()
      } else {
        func.call @kmeans_kernel(%alloc, %alloc_0, %alloc_1, %1#4, %1#3, %1#2, %1#1) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32, i32, i32) -> ()
      }
      %43 = func.call @clock() : () -> i64
      %44 = arith.subi %43, %41 : i64
      %45 = arith.sitofp %44 : i64 to f64
      %46 = arith.divf %45, %cst : f64
      %47 = llvm.mlir.addressof @str31 : !llvm.ptr
      %48 = llvm.getelementptr %47[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<36 x i8>
      %49 = llvm.call @printf(%48, %46) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
      func.call @print_results(%alloc, %alloc_0, %alloc_1, %1#4, %1#3, %1#2) : (memref<?xmemref<?xf64>>, memref<?xmemref<?xf64>>, memref<?xi32>, i32, i32, i32) -> ()
      %50 = arith.index_cast %1#4 : i32 to index
      scf.for %arg2 = %c0 to %50 step %c1 {
        %52 = memref.load %alloc[%arg2] : memref<?xmemref<?xf64>>
        memref.dealloc %52 : memref<?xf64>
      }
      memref.dealloc %alloc : memref<?xmemref<?xf64>>
      %51 = arith.index_cast %1#2 : i32 to index
      scf.for %arg2 = %c0 to %51 step %c1 {
        %52 = memref.load %alloc_0[%arg2] : memref<?xmemref<?xf64>>
        memref.dealloc %52 : memref<?xf64>
      }
      memref.dealloc %alloc_0 : memref<?xmemref<?xf64>>
      memref.dealloc %alloc_1 : memref<?xi32>
    }
    return %3 : i32
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @clock() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
}
