// RUN: cgeist %stdinclude %s -import-mlir -o %s.exec

module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("Base function result: %d\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @base(%arg0: i32, %arg1: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2 = arith.constant 2 : index
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %0 = arith.cmpi sge, %arg1, %c2_i32 : i32
    %1 = arith.select %0, %c1_i32, %c0_i32 : i32
    %2 = arith.index_cast %1 : i32 to index
    %3 = scf.index_switch %2 -> i32 
    case 0 {
      %4 = arith.index_cast %arg0 : i32 to index
      %5 = scf.for %arg2 = %c1 to %4 step %c1 iter_args(%arg3 = %c0_i32) -> (i32) {
        %6 = arith.index_cast %arg2 : index to i32
        %7 = arith.muli %6, %arg1 : i32
        %8 = arith.addi %arg3, %7 : i32
        scf.yield %8 : i32
      }
      scf.yield %5 : i32
    }
    case 1 {
      %4 = arith.index_cast %arg0 : i32 to index
      %5 = scf.for %arg2 = %c1 to %4 step %c2 iter_args(%arg3 = %c0_i32) -> (i32) {
        %6 = arith.index_cast %arg2 : index to i32
        %7 = arith.muli %6, %arg1 : i32
        %8 = arith.addi %arg3, %7 : i32
        scf.yield %8 : i32
      }
      scf.yield %5 : i32
    }
    default {
      %4 = arith.index_cast %arg0 : i32 to index
      %5 = scf.for %arg2 = %c1 to %4 step %c2 iter_args(%arg3 = %c0_i32) -> (i32) {
        %6 = arith.index_cast %arg2 : index to i32
        %7 = arith.muli %6, %arg1 : i32
        %8 = arith.addi %arg3, %7 : i32
        scf.yield %8 : i32
      }
      scf.yield %5 : i32
    }
    return %3 : i32
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c5_i32 = arith.constant 5 : i32
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<26 x i8>
    %2 = call @base(%c5_i32, %c2_i32) : (i32, i32) -> i32
    %3 = llvm.call @printf(%1, %2) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
    return %c0_i32 : i32
  }
}

