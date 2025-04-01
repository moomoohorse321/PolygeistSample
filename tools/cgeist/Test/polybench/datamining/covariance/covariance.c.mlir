#map = affine_map<(d0) -> (d0)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str12("Error return from gettimeofday: %d\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("%0.6f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  memref.global @polybench_t_end : memref<1xf64> = uninitialized
  memref.global @polybench_t_start : memref<1xf64> = uninitialized
  llvm.mlir.global internal constant @str10("void polybench_flush_cache()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("/home/hao/Polygeist/tools/cgeist/Test/polybench/utilities/polybench.c\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("tmp <= 10.0\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("cov\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 3.100000e+01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %cst_0 = arith.constant 3.200000e+01 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 2.800000e+01 : f64
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c28_i32 = arith.constant 28 : i32
    %alloc = memref.alloc() : memref<32x28xf64>
    %alloc_3 = memref.alloc() : memref<28x28xf64>
    %alloc_4 = memref.alloc() : memref<28xf64>
    scf.for %arg2 = %c0 to %c32 step %c1 {
      %10 = arith.index_cast %arg2 : index to i32
      %11 = arith.sitofp %10 : i32 to f64
      scf.for %arg3 = %c0 to %c28 step %c1 {
        %12 = arith.index_cast %arg3 : index to i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.mulf %11, %13 : f64
        %15 = arith.divf %14, %cst_2 : f64
        memref.store %15, %alloc[%arg2, %arg3] : memref<32x28xf64>
      }
    }
    %0 = memref.get_global @polybench_t_start : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    affine.store %1, %0[0] : memref<1xf64>
    %cast = memref.cast %alloc_3 : memref<28x28xf64> to memref<?x28xf64>
    affine.for %arg2 = 0 to 28 {
      affine.store %cst_1, %alloc_4[%arg2] : memref<28xf64>
      %10 = arith.index_cast %arg2 : index to i32
      %11 = arith.sitofp %10 : i32 to f64
      affine.for %arg3 = 0 to 32 {
        %14 = arith.index_cast %arg3 : index to i32
        %15 = arith.sitofp %14 : i32 to f64
        %16 = arith.mulf %15, %11 : f64
        %17 = arith.divf %16, %cst_2 : f64
        %18 = affine.load %alloc_4[%arg2] : memref<28xf64>
        %19 = arith.addf %18, %17 : f64
        affine.store %19, %alloc_4[%arg2] : memref<28xf64>
      }
      %12 = affine.load %alloc_4[%arg2] : memref<28xf64>
      %13 = arith.divf %12, %cst_0 : f64
      affine.store %13, %alloc_4[%arg2] : memref<28xf64>
    }
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 28 {
        %10 = affine.load %alloc_4[%arg3] : memref<28xf64>
        %11 = affine.load %alloc[%arg2, %arg3] : memref<32x28xf64>
        %12 = arith.subf %11, %10 : f64
        affine.store %12, %alloc[%arg2, %arg3] : memref<32x28xf64>
      }
    }
    affine.for %arg2 = 0 to 28 {
      affine.for %arg3 = #map(%arg2) to 28 {
        affine.store %cst_1, %alloc_3[%arg2, %arg3] : memref<28x28xf64>
        affine.for %arg4 = 0 to 32 {
          %12 = affine.load %alloc[%arg4, %arg2] : memref<32x28xf64>
          %13 = affine.load %alloc[%arg4, %arg3] : memref<32x28xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %alloc_3[%arg2, %arg3] : memref<28x28xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %alloc_3[%arg2, %arg3] : memref<28x28xf64>
        }
        %10 = affine.load %alloc_3[%arg2, %arg3] : memref<28x28xf64>
        %11 = arith.divf %10, %cst : f64
        affine.store %11, %alloc_3[%arg2, %arg3] : memref<28x28xf64>
        affine.store %11, %alloc_3[%arg3, %arg2] : memref<28x28xf64>
      }
    }
    %2 = memref.get_global @polybench_t_end : memref<1xf64>
    %3 = call @rtclock() : () -> f64
    affine.store %3, %2[0] : memref<1xf64>
    %4 = llvm.mlir.addressof @str11 : !llvm.ptr
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
    %6 = affine.load %0[0] : memref<1xf64>
    %7 = arith.subf %3, %6 : f64
    %8 = llvm.call @printf(%5, %7) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %9 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %9 {
      %10 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %11 = llvm.mlir.addressof @str0 : !llvm.ptr
      %12 = "polygeist.pointer2memref"(%11) : (!llvm.ptr) -> memref<?xi8>
      %13 = func.call @strcmp(%10, %12) : (memref<?xi8>, memref<?xi8>) -> i32
      %14 = arith.cmpi eq, %13, %c0_i32 : i32
      scf.if %14 {
        func.call @print_array(%c28_i32, %cast) : (i32, memref<?x28xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<32x28xf64>
    memref.dealloc %alloc_3 : memref<28x28xf64>
    memref.dealloc %alloc_4 : memref<28xf64>
    return %c0_i32 : i32
  }
  func.func @polybench_timer_start() attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = memref.get_global @polybench_t_start : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    affine.store %1, %0[0] : memref<1xf64>
    return
  }
  func.func @polybench_timer_stop() attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = memref.get_global @polybench_t_end : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    affine.store %1, %0[0] : memref<1xf64>
    return
  }
  func.func @polybench_timer_print() attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.addressof @str11 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
    %2 = memref.get_global @polybench_t_end : memref<1xf64>
    %3 = affine.load %2[0] : memref<1xf64>
    %4 = memref.get_global @polybench_t_start : memref<1xf64>
    %5 = affine.load %4[0] : memref<1xf64>
    %6 = arith.subf %3, %5 : f64
    %7 = llvm.call @printf(%1, %6) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: memref<?x28xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c20_i32 = arith.constant 20 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %2 = "polygeist.memref2pointer"(%1) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %3 = llvm.mlir.addressof @str1 : !llvm.ptr
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %5 = llvm.call @fprintf(%2, %4) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %6 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %7 = "polygeist.memref2pointer"(%6) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %8 = llvm.mlir.addressof @str2 : !llvm.ptr
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<15 x i8>
    %10 = llvm.mlir.addressof @str3 : !llvm.ptr
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x i8>
    %12 = llvm.call @fprintf(%7, %9, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %13 = arith.index_cast %arg0 : i32 to index
    %14 = llvm.mlir.addressof @str5 : !llvm.ptr
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
    %16 = llvm.mlir.addressof @str4 : !llvm.ptr
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
    scf.for %arg2 = %c0 to %13 step %c1 {
      %28 = arith.index_cast %arg2 : index to i32
      %29 = arith.muli %28, %arg0 : i32
      scf.for %arg3 = %c0 to %13 step %c1 {
        %30 = arith.index_cast %arg3 : index to i32
        %31 = arith.addi %29, %30 : i32
        %32 = arith.remsi %31, %c20_i32 : i32
        %33 = arith.cmpi eq, %32, %c0_i32 : i32
        scf.if %33 {
          %38 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %39 = "polygeist.memref2pointer"(%38) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %40 = llvm.call @fprintf(%39, %17) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %34 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %35 = "polygeist.memref2pointer"(%34) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %36 = memref.load %arg1[%arg2, %arg3] : memref<?x28xf64>
        %37 = llvm.call @fprintf(%35, %15, %36) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
      }
    }
    %18 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %19 = "polygeist.memref2pointer"(%18) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %20 = llvm.mlir.addressof @str6 : !llvm.ptr
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %22 = llvm.call @fprintf(%19, %21, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %23 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %24 = "polygeist.memref2pointer"(%23) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %25 = llvm.mlir.addressof @str7 : !llvm.ptr
    %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %27 = llvm.call @fprintf(%24, %26) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    return
  }
  func.func @polybench_flush_cache() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c4194560 = arith.constant 4194560 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c125_i32 = arith.constant 125 : i32
    %cst_0 = arith.constant 1.000000e+01 : f64
    %0 = scf.for %arg0 = %c0 to %c4194560 step %c1 iter_args(%arg1 = %cst) -> (f64) {
      %2 = arith.addf %arg1, %cst : f64
      scf.yield %2 : f64
    }
    %1 = arith.cmpf ole, %0, %cst_0 : f64
    scf.if %1 {
    } else {
      %2 = llvm.mlir.addressof @str8 : !llvm.ptr
      %3 = llvm.mlir.addressof @str9 : !llvm.ptr
      %4 = llvm.mlir.addressof @str10 : !llvm.ptr
      %5 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %6 = "polygeist.pointer2memref"(%3) : (!llvm.ptr) -> memref<?xi8>
      %7 = "polygeist.pointer2memref"(%4) : (!llvm.ptr) -> memref<?xi8>
      func.call @__assert_fail(%5, %6, %c125_i32, %7) : (memref<?xi8>, memref<?xi8>, i32, memref<?xi8>) -> ()
    }
    return
  }
  func.func private @__assert_fail(memref<?xi8>, memref<?xi8>, i32, memref<?xi8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @polybench_prepare_instruments() attributes {llvm.linkage = #llvm.linkage<external>} {
    return
  }
  func.func private @rtclock() -> f64 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 9.9999999999999995E-7 : f64
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<1x2xi64>
    %cast = memref.cast %alloca : memref<1x2xi64> to memref<?x2xi64>
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = "polygeist.pointer2memref"(%0) : (!llvm.ptr) -> memref<?xi8>
    %2 = call @gettimeofday(%cast, %1) : (memref<?x2xi64>, memref<?xi8>) -> i32
    %3 = arith.cmpi ne, %2, %c0_i32 : i32
    scf.if %3 {
      %10 = llvm.mlir.addressof @str12 : !llvm.ptr
      %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<35 x i8>
      %12 = llvm.call @printf(%11, %2) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
    }
    %4 = affine.load %alloca[0, 0] : memref<1x2xi64>
    %5 = arith.sitofp %4 : i64 to f64
    %6 = affine.load %alloca[0, 1] : memref<1x2xi64>
    %7 = arith.sitofp %6 : i64 to f64
    %8 = arith.mulf %7, %cst : f64
    %9 = arith.addf %5, %8 : f64
    return %9 : f64
  }
  func.func private @gettimeofday(memref<?x2xi64>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
