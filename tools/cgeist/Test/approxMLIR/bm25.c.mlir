module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str17("An error occurred during ranking.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str16("Rank %d: Doc %d (Score: %.4f) - \22%s\22\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("Ranking documents:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str14("Query: \22%s\22\0A\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str13("quick brown fox\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str12("Quick brown dogs jump over lazy foxes\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("BM25 is a ranking function used by search engines\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str10("Exploring the world of information retrieval and search engines\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("Brown foxes are quick\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("The lazy dog sat on the mat\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("The quick brown fox jumps over the lazy dog\00") {addr_space = 0 : i32}
  memref.global @B : memref<1xf64> = dense<7.500000e-01>
  memref.global @K1 : memref<1xf64> = dense<1.500000e+00>
  llvm.mlir.global internal constant @str6("Warning: Exceeded maximum unique query terms (100).\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("Warning: Could not allocate memory for processed term '%s'. Skipping.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4(" .,;:!?\22'\0A\09()[]{}<>\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Error duplicating query.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Error allocating memory for scores.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Error duplicating document %d.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Error allocating memory for preprocessing.\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  func.func @compare_tokens(%arg0: memref<?xi8>, %arg1: memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = call @strcasecmp(%arg0, %arg1) : (memref<?xi8>, memref<?xi8>) -> i32
    return %0 : i32
  }
  func.func private @strcasecmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @count_and_lower_words(%arg0: memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %true = arith.constant true
    %c1_i32 = arith.constant 1 : i32
    %c8_i32 = arith.constant 8 : i32
    %c0_i8 = arith.constant 0 : i8
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %2 = llvm.icmp "eq" %1, %0 : !llvm.ptr
    %3 = scf.if %2 -> (i1) {
      scf.yield %true : i1
    } else {
      %5 = affine.load %arg0[0] : memref<?xi8>
      %6 = arith.extsi %5 : i8 to i32
      %7 = arith.cmpi eq, %6, %c0_i32 : i32
      scf.yield %7 : i1
    }
    %4 = scf.if %3 -> (i32) {
      scf.yield %c0_i32 : i32
    } else {
      %5:3 = scf.while (%arg1 = %c0_i32, %arg2 = %c0_i32, %arg3 = %arg0) : (i32, i32, memref<?xi8>) -> (i32, i32, memref<?xi8>) {
        %6 = affine.load %arg3[0] : memref<?xi8>
        %7 = arith.cmpi ne, %6, %c0_i8 : i8
        scf.condition(%7) %arg2, %arg1, %arg3 : i32, i32, memref<?xi8>
      } do {
      ^bb0(%arg1: i32, %arg2: i32, %arg3: memref<?xi8>):
        %6 = affine.load %arg3[0] : memref<?xi8>
        %7 = arith.extui %6 : i8 to i32
        %8 = func.call @tolower(%7) : (i32) -> i32
        %9 = arith.trunci %8 : i32 to i8
        affine.store %9, %arg3[0] : memref<?xi8>
        %10 = func.call @__ctype_b_loc() : () -> memref<?xmemref<?xi16>>
        %11 = affine.load %10[0] : memref<?xmemref<?xi16>>
        %12 = affine.load %arg3[0] : memref<?xi8>
        %13 = arith.extui %12 : i8 to i32
        %14 = arith.index_cast %13 : i32 to index
        %15 = memref.load %11[%14] : memref<?xi16>
        %16 = arith.extui %15 : i16 to i32
        %17 = arith.andi %16, %c8_i32 : i32
        %18 = arith.cmpi ne, %17, %c0_i32 : i32
        %19 = arith.cmpi eq, %arg2, %c0_i32 : i32
        %20 = arith.select %19, %c1_i32, %arg2 : i32
        %21 = arith.andi %18, %19 : i1
        %22 = arith.select %18, %20, %c0_i32 : i32
        %23 = scf.if %21 -> (i32) {
          %25 = arith.addi %arg1, %c1_i32 : i32
          scf.yield %25 : i32
        } else {
          scf.yield %arg1 : i32
        }
        %24 = "polygeist.subindex"(%arg3, %c1) : (memref<?xi8>, index) -> memref<?xi8>
        scf.yield %22, %23, %24 : i32, i32, memref<?xi8>
      }
      scf.yield %5#0 : i32
    }
    return %4 : i32
  }
  func.func private @tolower(i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @__ctype_b_loc() -> memref<?xmemref<?xi16>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @calculate_tf(%arg0: memref<?xi8>, %arg1: memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %true = arith.constant true
    %c1_i32 = arith.constant 1 : i32
    %c8_i32 = arith.constant 8 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %2 = llvm.icmp "eq" %1, %0 : !llvm.ptr
    %3 = scf.if %2 -> (i1) {
      scf.yield %true : i1
    } else {
      %5 = "polygeist.memref2pointer"(%arg1) : (memref<?xi8>) -> !llvm.ptr
      %6 = llvm.icmp "eq" %5, %0 : !llvm.ptr
      scf.yield %6 : i1
    }
    %4 = scf.if %3 -> (i32) {
      scf.yield %c0_i32 : i32
    } else {
      %5 = func.call @strlen(%1) : (!llvm.ptr) -> i64
      %6 = "polygeist.memref2pointer"(%arg1) : (memref<?xi8>) -> !llvm.ptr
      %7 = arith.index_cast %5 : i64 to index
      %8:2 = scf.while (%arg2 = %c0_i32, %arg3 = %arg1) : (i32, memref<?xi8>) -> (i32, memref<?xi8>) {
        %9 = func.call @strstr(%arg3, %arg0) : (memref<?xi8>, memref<?xi8>) -> memref<?xi8>
        %10 = "polygeist.memref2pointer"(%9) : (memref<?xi8>) -> !llvm.ptr
        %11 = llvm.icmp "ne" %10, %0 : !llvm.ptr
        scf.condition(%11) %arg2, %9 : i32, memref<?xi8>
      } do {
      ^bb0(%arg2: i32, %arg3: memref<?xi8>):
        %9 = "polygeist.memref2pointer"(%arg3) : (memref<?xi8>) -> !llvm.ptr
        %10 = llvm.icmp "eq" %9, %6 : !llvm.ptr
        %11 = scf.if %10 -> (i1) {
          scf.yield %true : i1
        } else {
          %19 = func.call @__ctype_b_loc() : () -> memref<?xmemref<?xi16>>
          %20 = affine.load %19[0] : memref<?xmemref<?xi16>>
          %21 = llvm.getelementptr %9[-1] : (!llvm.ptr) -> !llvm.ptr, i8
          %22 = llvm.load %21 : !llvm.ptr -> i8
          %23 = arith.extui %22 : i8 to i32
          %24 = arith.index_cast %23 : i32 to index
          %25 = memref.load %20[%24] : memref<?xi16>
          %26 = arith.extui %25 : i16 to i32
          %27 = arith.andi %26, %c8_i32 : i32
          %28 = arith.cmpi eq, %27, %c0_i32 : i32
          scf.yield %28 : i1
        }
        %12 = memref.load %arg3[%7] : memref<?xi8>
        %13 = arith.extsi %12 : i8 to i32
        %14 = arith.cmpi eq, %13, %c0_i32 : i32
        %15 = scf.if %14 -> (i1) {
          scf.yield %true : i1
        } else {
          %19 = func.call @__ctype_b_loc() : () -> memref<?xmemref<?xi16>>
          %20 = affine.load %19[0] : memref<?xmemref<?xi16>>
          %21 = memref.load %arg3[%7] : memref<?xi8>
          %22 = arith.extui %21 : i8 to i32
          %23 = arith.index_cast %22 : i32 to index
          %24 = memref.load %20[%23] : memref<?xi16>
          %25 = arith.extui %24 : i16 to i32
          %26 = arith.andi %25, %c8_i32 : i32
          %27 = arith.cmpi eq, %26, %c0_i32 : i32
          scf.yield %27 : i1
        }
        %16 = arith.andi %11, %15 : i1
        %17 = scf.if %16 -> (i32) {
          %19 = arith.addi %arg2, %c1_i32 : i32
          scf.yield %19 : i32
        } else {
          scf.yield %arg2 : i32
        }
        %18 = "polygeist.subindex"(%arg3, %7) : (memref<?xi8>, index) -> memref<?xi8>
        scf.yield %17, %18 : i32, memref<?xi8>
      }
      scf.yield %8#0 : i32
    }
    return %4 : i32
  }
  func.func private @strlen(!llvm.ptr) -> i64
  func.func private @strstr(memref<?xi8>, memref<?xi8>) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @calculate_df(%arg0: memref<?xi8>, %arg1: memref<?xmemref<?xi8>>, %arg2: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %c1_i32 = arith.constant 1 : i32
    %c8_i32 = arith.constant 8 : i32
    %c0_i8 = arith.constant 0 : i8
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %3 = llvm.icmp "eq" %2, %1 : !llvm.ptr
    %4 = scf.if %3 -> (i1) {
      scf.yield %true : i1
    } else {
      %7 = "polygeist.memref2pointer"(%arg1) : (memref<?xmemref<?xi8>>) -> !llvm.ptr
      %8 = llvm.icmp "eq" %7, %1 : !llvm.ptr
      scf.yield %8 : i1
    }
    %5 = arith.select %4, %c0_i32, %0 : i32
    %6 = scf.if %4 -> (i32) {
      scf.yield %5 : i32
    } else {
      %7 = func.call @strdup(%arg0) : (memref<?xi8>) -> memref<?xi8>
      %8 = "polygeist.memref2pointer"(%7) : (memref<?xi8>) -> !llvm.ptr
      %9 = llvm.icmp "eq" %8, %1 : !llvm.ptr
      %10 = scf.if %9 -> (i32) {
        scf.yield %5 : i32
      } else {
        %11 = scf.while (%arg3 = %7) : (memref<?xi8>) -> memref<?xi8> {
          %14 = affine.load %arg3[0] : memref<?xi8>
          %15 = arith.cmpi ne, %14, %c0_i8 : i8
          scf.condition(%15) %arg3 : memref<?xi8>
        } do {
        ^bb0(%arg3: memref<?xi8>):
          %14 = affine.load %arg3[0] : memref<?xi8>
          %15 = arith.extui %14 : i8 to i32
          %16 = func.call @tolower(%15) : (i32) -> i32
          %17 = arith.trunci %16 : i32 to i8
          affine.store %17, %arg3[0] : memref<?xi8>
          %18 = "polygeist.subindex"(%arg3, %c1) : (memref<?xi8>, index) -> memref<?xi8>
          scf.yield %18 : memref<?xi8>
        }
        %12 = arith.index_cast %arg2 : i32 to index
        %13:3 = scf.for %arg3 = %c0 to %12 step %c1 iter_args(%arg4 = %0, %arg5 = %0, %arg6 = %c0_i32) -> (i32, i32, i32) {
          %14 = memref.load %arg1[%arg3] : memref<?xmemref<?xi8>>
          %15 = func.call @strdup(%14) : (memref<?xi8>) -> memref<?xi8>
          %16 = "polygeist.memref2pointer"(%15) : (memref<?xi8>) -> !llvm.ptr
          %17 = llvm.icmp "eq" %16, %1 : !llvm.ptr
          %18:3 = scf.if %17 -> (i32, i32, i32) {
            scf.yield %arg4, %arg5, %arg6 : i32, i32, i32
          } else {
            %19 = scf.while (%arg7 = %15) : (memref<?xi8>) -> memref<?xi8> {
              %25 = affine.load %arg7[0] : memref<?xi8>
              %26 = arith.cmpi ne, %25, %c0_i8 : i8
              scf.condition(%26) %arg7 : memref<?xi8>
            } do {
            ^bb0(%arg7: memref<?xi8>):
              %25 = affine.load %arg7[0] : memref<?xi8>
              %26 = arith.extui %25 : i8 to i32
              %27 = func.call @tolower(%26) : (i32) -> i32
              %28 = arith.trunci %27 : i32 to i8
              affine.store %28, %arg7[0] : memref<?xi8>
              %29 = "polygeist.subindex"(%arg7, %c1) : (memref<?xi8>, index) -> memref<?xi8>
              scf.yield %29 : memref<?xi8>
            }
            %20 = func.call @strlen(%8) : (!llvm.ptr) -> i64
            %21 = arith.index_cast %20 : i64 to index
            %22:4 = scf.while (%arg7 = %arg4, %arg8 = %arg5, %arg9 = %c0_i32, %arg10 = %true, %arg11 = %15) : (i32, i32, i32, i1, memref<?xi8>) -> (i32, i32, i32, memref<?xi8>) {
              %25 = func.call @strstr(%arg11, %7) : (memref<?xi8>, memref<?xi8>) -> memref<?xi8>
              %26 = "polygeist.memref2pointer"(%25) : (memref<?xi8>) -> !llvm.ptr
              %27 = llvm.icmp "ne" %26, %1 : !llvm.ptr
              %28 = arith.andi %27, %arg10 : i1
              scf.condition(%28) %arg7, %arg8, %arg9, %25 : i32, i32, i32, memref<?xi8>
            } do {
            ^bb0(%arg7: i32, %arg8: i32, %arg9: i32, %arg10: memref<?xi8>):
              %25 = "polygeist.memref2pointer"(%arg10) : (memref<?xi8>) -> !llvm.ptr
              %26 = llvm.icmp "eq" %25, %16 : !llvm.ptr
              %27 = scf.if %26 -> (i1) {
                scf.yield %true : i1
              } else {
                %38 = func.call @__ctype_b_loc() : () -> memref<?xmemref<?xi16>>
                %39 = affine.load %38[0] : memref<?xmemref<?xi16>>
                %40 = llvm.getelementptr %25[-1] : (!llvm.ptr) -> !llvm.ptr, i8
                %41 = llvm.load %40 : !llvm.ptr -> i8
                %42 = arith.extui %41 : i8 to i32
                %43 = arith.index_cast %42 : i32 to index
                %44 = memref.load %39[%43] : memref<?xi16>
                %45 = arith.extui %44 : i16 to i32
                %46 = arith.andi %45, %c8_i32 : i32
                %47 = arith.cmpi eq, %46, %c0_i32 : i32
                scf.yield %47 : i1
              }
              %28 = arith.extsi %27 : i1 to i32
              %29 = memref.load %arg10[%21] : memref<?xi8>
              %30 = arith.extsi %29 : i8 to i32
              %31 = arith.cmpi eq, %30, %c0_i32 : i32
              %32 = scf.if %31 -> (i1) {
                scf.yield %true : i1
              } else {
                %38 = func.call @__ctype_b_loc() : () -> memref<?xmemref<?xi16>>
                %39 = affine.load %38[0] : memref<?xmemref<?xi16>>
                %40 = memref.load %arg10[%21] : memref<?xi8>
                %41 = arith.extui %40 : i8 to i32
                %42 = arith.index_cast %41 : i32 to index
                %43 = memref.load %39[%42] : memref<?xi16>
                %44 = arith.extui %43 : i16 to i32
                %45 = arith.andi %44, %c8_i32 : i32
                %46 = arith.cmpi eq, %45, %c0_i32 : i32
                scf.yield %46 : i1
              }
              %33 = arith.extsi %32 : i1 to i32
              %34 = arith.andi %27, %32 : i1
              %35 = arith.select %34, %c1_i32, %arg9 : i32
              %36 = arith.xori %34, %true : i1
              %37 = scf.if %34 -> (memref<?xi8>) {
                scf.yield %arg10 : memref<?xi8>
              } else {
                %38 = "polygeist.subindex"(%arg10, %21) : (memref<?xi8>, index) -> memref<?xi8>
                scf.yield %38 : memref<?xi8>
              }
              scf.yield %33, %28, %35, %36, %37 : i32, i32, i32, i1, memref<?xi8>
            }
            %23 = arith.cmpi ne, %22#2, %c0_i32 : i32
            %24 = scf.if %23 -> (i32) {
              %25 = arith.addi %arg6, %c1_i32 : i32
              scf.yield %25 : i32
            } else {
              scf.yield %arg6 : i32
            }
            memref.dealloc %15 : memref<?xi8>
            scf.yield %22#0, %22#1, %24 : i32, i32, i32
          }
          scf.yield %18#0, %18#1, %18#2 : i32, i32, i32
        }
        memref.dealloc %7 : memref<?xi8>
        scf.yield %13#2 : i32
      }
      scf.yield %10 : i32
    }
    return %6 : i32
  }
  func.func private @strdup(memref<?xi8>) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @calculate_idf(%arg0: i32, %arg1: i32) -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 5.000000e-01 : f64
    %0 = arith.sitofp %arg1 : i32 to f64
    %1 = arith.sitofp %arg0 : i32 to f64
    %2 = arith.subf %0, %1 : f64
    %3 = arith.addf %2, %cst_1 : f64
    %4 = arith.addf %1, %cst_1 : f64
    %5 = arith.divf %3, %4 : f64
    %6 = arith.addf %5, %cst_0 : f64
    %7 = math.log %6 : f64
    %8 = arith.cmpf ogt, %7, %cst : f64
    %9 = arith.select %8, %7, %cst : f64
    return %9 : f64
  }
  func.func @compare_scores(%arg0: memref<?xi8>, %arg1: memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %false = arith.constant false
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.mlir.undef : i32
    %1 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %2 = "polygeist.memref2pointer"(%arg1) : (memref<?xi8>) -> !llvm.ptr
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
    %4 = llvm.load %3 : !llvm.ptr -> f64
    %5 = llvm.getelementptr %1[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
    %6 = llvm.load %5 : !llvm.ptr -> f64
    %7 = arith.cmpf ogt, %4, %6 : f64
    %8 = arith.select %7, %c1_i32, %0 : i32
    %9:2 = scf.if %7 -> (i1, i32) {
      scf.yield %false, %8 : i1, i32
    } else {
      %11 = llvm.load %3 : !llvm.ptr -> f64
      %12 = llvm.load %5 : !llvm.ptr -> f64
      %13 = arith.cmpf olt, %11, %12 : f64
      %14 = arith.xori %13, %true : i1
      %15 = arith.select %13, %c-1_i32, %8 : i32
      scf.yield %14, %15 : i1, i32
    }
    %10 = arith.select %9#0, %c0_i32, %9#1 : i32
    return %10 : i32
  }
  func.func @rank_documents_bm25(%arg0: memref<?xi8>, %arg1: memref<?xmemref<?xi8>>, %arg2: i32) -> memref<?x!llvm.struct<(i32, f64)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %false = arith.constant false
    %c8_i64 = arith.constant 8 : i64
    %c16_i64 = arith.constant 16 : i64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %c0_i8 = arith.constant 0 : i8
    %c100_i32 = arith.constant 100 : i32
    %c0_i64 = arith.constant 0 : i64
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c1_i32 = arith.constant 1 : i32
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<100xmemref<?xi8>>
    %alloca_2 = memref.alloca() : memref<20xi8>
    %alloca_3 = memref.alloca() : memref<1xmemref<?xi8>>
    %alloca_4 = memref.alloca() : memref<memref<?x!llvm.struct<(i32, f64)>>>
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr
    %4 = llvm.icmp "eq" %3, %2 : !llvm.ptr
    %5 = scf.if %4 -> (i1) {
      scf.yield %true : i1
    } else {
      %8 = "polygeist.memref2pointer"(%arg1) : (memref<?xmemref<?xi8>>) -> !llvm.ptr
      %9 = llvm.icmp "eq" %8, %2 : !llvm.ptr
      scf.yield %9 : i1
    }
    %6 = scf.if %5 -> (i1) {
      scf.yield %true : i1
    } else {
      %8 = arith.cmpi sle, %arg2, %c0_i32 : i32
      scf.yield %8 : i1
    }
    scf.if %6 {
      %8 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, f64)>>
      affine.store %8, %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
    } else {
      %8 = arith.extsi %arg2 : i32 to i64
      %9 = arith.muli %8, %c8_i64 : i64
      %10 = arith.index_cast %9 : i64 to index
      %11 = arith.divui %10, %c8 : index
      %alloc = memref.alloc(%11) : memref<?xf64>
      %12 = "polygeist.typeSize"() <{source = memref<?xi8>}> : () -> index
      %13 = arith.index_cast %12 : index to i64
      %14 = arith.muli %8, %13 : i64
      %15 = arith.index_cast %14 : i64 to index
      %16 = arith.divui %15, %12 : index
      %alloc_5 = memref.alloc(%16) : memref<?xmemref<?xi8>>
      %17 = "polygeist.memref2pointer"(%alloc) : (memref<?xf64>) -> !llvm.ptr
      %18 = llvm.icmp "eq" %17, %2 : !llvm.ptr
      %19 = scf.if %18 -> (i1) {
        scf.yield %true : i1
      } else {
        %20 = "polygeist.memref2pointer"(%alloc_5) : (memref<?xmemref<?xi8>>) -> !llvm.ptr
        %21 = llvm.icmp "eq" %20, %2 : !llvm.ptr
        scf.yield %21 : i1
      }
      scf.if %19 {
        %20 = llvm.mlir.addressof @stderr : !llvm.ptr
        %21 = llvm.load %20 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %22 = "polygeist.memref2pointer"(%21) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %23 = llvm.mlir.addressof @str0 : !llvm.ptr
        %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<44 x i8>
        %25 = llvm.call @fprintf(%22, %24) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        memref.dealloc %alloc : memref<?xf64>
        memref.dealloc %alloc_5 : memref<?xmemref<?xi8>>
        %26 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, f64)>>
        affine.store %26, %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
      } else {
        %20 = arith.cmpi sgt, %arg2, %c0_i32 : i32
        %21:2 = scf.if %20 -> (f64, i1) {
          %22 = arith.index_cast %arg2 : i32 to index
          %23 = llvm.mlir.addressof @stderr : !llvm.ptr
          %24 = llvm.mlir.addressof @str1 : !llvm.ptr
          %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i8>
          %26 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, f64)>>
          %27:3 = scf.for %arg3 = %c0 to %22 step %c1 iter_args(%arg4 = %cst_1, %arg5 = %true, %arg6 = %true) -> (f64, i1, i1) {
            %28:3 = scf.if %arg6 -> (f64, i1, i1) {
              %29 = arith.index_cast %arg3 : index to i32
              %30 = memref.load %arg1[%arg3] : memref<?xmemref<?xi8>>
              %31 = func.call @strdup(%30) : (memref<?xi8>) -> memref<?xi8>
              %32 = "polygeist.memref2pointer"(%31) : (memref<?xi8>) -> !llvm.ptr
              %33 = llvm.icmp "eq" %32, %2 : !llvm.ptr
              %34 = arith.xori %33, %true : i1
              %35 = arith.andi %34, %arg5 : i1
              %36 = scf.if %33 -> (f64) {
                %37 = llvm.load %23 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
                %38 = "polygeist.memref2pointer"(%37) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
                %39 = llvm.call @fprintf(%38, %25, %29) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, i32) -> i32
                scf.for %arg7 = %c0 to %arg3 step %c1 {
                  %40 = memref.load %alloc_5[%arg7] : memref<?xmemref<?xi8>>
                  memref.dealloc %40 : memref<?xi8>
                }
                memref.dealloc %alloc_5 : memref<?xmemref<?xi8>>
                memref.dealloc %alloc : memref<?xf64>
                affine.store %26, %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
                scf.yield %arg4 : f64
              } else {
                %37 = func.call @count_and_lower_words(%31) : (memref<?xi8>) -> i32
                %38 = arith.sitofp %37 : i32 to f64
                memref.store %38, %alloc[%arg3] : memref<?xf64>
                %39 = memref.load %alloc[%arg3] : memref<?xf64>
                %40 = arith.addf %arg4, %39 : f64
                memref.store %31, %alloc_5[%arg3] : memref<?xmemref<?xi8>>
                scf.yield %40 : f64
              }
              scf.yield %36, %35, %34 : f64, i1, i1
            } else {
              scf.yield %arg4, %arg5, %false : f64, i1, i1
            }
            scf.yield %28#0, %28#1, %28#2 : f64, i1, i1
          }
          scf.yield %27#0, %27#1 : f64, i1
        } else {
          scf.yield %cst_1, %true : f64, i1
        }
        scf.if %21#1 {
          %22 = arith.sitofp %arg2 : i32 to f64
          %23 = arith.divf %21#0, %22 : f64
          %24 = arith.muli %8, %c16_i64 : i64
          %25 = arith.index_cast %24 : i64 to index
          %26 = arith.divui %25, %c16 : index
          %alloc_6 = memref.alloc(%26) : memref<?x!llvm.struct<(i32, f64)>>
          %27 = "polygeist.memref2pointer"(%alloc_6) : (memref<?x!llvm.struct<(i32, f64)>>) -> !llvm.ptr
          %28 = llvm.icmp "eq" %27, %2 : !llvm.ptr
          scf.if %28 {
            %29 = llvm.mlir.addressof @stderr : !llvm.ptr
            %30 = llvm.load %29 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
            %31 = "polygeist.memref2pointer"(%30) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
            %32 = llvm.mlir.addressof @str2 : !llvm.ptr
            %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<37 x i8>
            %34 = llvm.call @fprintf(%31, %33) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            %35 = arith.index_cast %arg2 : i32 to index
            scf.for %arg3 = %c0 to %35 step %c1 {
              %37 = memref.load %alloc_5[%arg3] : memref<?xmemref<?xi8>>
              memref.dealloc %37 : memref<?xi8>
            }
            memref.dealloc %alloc_5 : memref<?xmemref<?xi8>>
            memref.dealloc %alloc : memref<?xf64>
            %36 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, f64)>>
            affine.store %36, %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
          } else {
            %29 = arith.index_cast %arg2 : i32 to index
            scf.for %arg3 = %c0 to %29 step %c1 {
              %33 = arith.index_cast %arg3 : index to i32
              %34 = arith.muli %arg3, %c16 : index
              %35 = arith.index_cast %34 : index to i64
              %36 = llvm.getelementptr %27[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i8
              llvm.store %33, %36 : i32, !llvm.ptr
              %37 = llvm.getelementptr %36[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
              llvm.store %cst_1, %37 : f64, !llvm.ptr
            }
            %30 = func.call @strdup(%arg0) : (memref<?xi8>) -> memref<?xi8>
            %31 = "polygeist.memref2pointer"(%30) : (memref<?xi8>) -> !llvm.ptr
            %32 = llvm.icmp "eq" %31, %2 : !llvm.ptr
            scf.if %32 {
              %33 = llvm.mlir.addressof @stderr : !llvm.ptr
              %34 = llvm.load %33 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
              %35 = "polygeist.memref2pointer"(%34) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
              %36 = llvm.mlir.addressof @str3 : !llvm.ptr
              %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<26 x i8>
              %38 = llvm.call @fprintf(%35, %37) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
              scf.for %arg3 = %c0 to %29 step %c1 {
                %40 = memref.load %alloc_5[%arg3] : memref<?xmemref<?xi8>>
                memref.dealloc %40 : memref<?xi8>
              }
              memref.dealloc %alloc_5 : memref<?xmemref<?xi8>>
              memref.dealloc %alloc : memref<?xf64>
              memref.dealloc %alloc_6 : memref<?x!llvm.struct<(i32, f64)>>
              %39 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?x!llvm.struct<(i32, f64)>>
              affine.store %39, %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
            } else {
              affine.store %30, %alloca_3[0] : memref<1xmemref<?xi8>>
              %33 = llvm.mlir.addressof @str4 : !llvm.ptr
              %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %35 = llvm.load %34 : !llvm.ptr -> i8
              affine.store %35, %alloca_2[0] : memref<20xi8>
              %36 = llvm.getelementptr %33[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %37 = llvm.load %36 : !llvm.ptr -> i8
              affine.store %37, %alloca_2[1] : memref<20xi8>
              %38 = llvm.getelementptr %33[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %39 = llvm.load %38 : !llvm.ptr -> i8
              affine.store %39, %alloca_2[2] : memref<20xi8>
              %40 = llvm.getelementptr %33[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %41 = llvm.load %40 : !llvm.ptr -> i8
              affine.store %41, %alloca_2[3] : memref<20xi8>
              %42 = llvm.getelementptr %33[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %43 = llvm.load %42 : !llvm.ptr -> i8
              affine.store %43, %alloca_2[4] : memref<20xi8>
              %44 = llvm.getelementptr %33[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %45 = llvm.load %44 : !llvm.ptr -> i8
              affine.store %45, %alloca_2[5] : memref<20xi8>
              %46 = llvm.getelementptr %33[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %47 = llvm.load %46 : !llvm.ptr -> i8
              affine.store %47, %alloca_2[6] : memref<20xi8>
              %48 = llvm.getelementptr %33[0, 7] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %49 = llvm.load %48 : !llvm.ptr -> i8
              affine.store %49, %alloca_2[7] : memref<20xi8>
              %50 = llvm.getelementptr %33[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %51 = llvm.load %50 : !llvm.ptr -> i8
              affine.store %51, %alloca_2[8] : memref<20xi8>
              %52 = llvm.getelementptr %33[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %53 = llvm.load %52 : !llvm.ptr -> i8
              affine.store %53, %alloca_2[9] : memref<20xi8>
              %54 = llvm.getelementptr %33[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %55 = llvm.load %54 : !llvm.ptr -> i8
              affine.store %55, %alloca_2[10] : memref<20xi8>
              %56 = llvm.getelementptr %33[0, 11] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %57 = llvm.load %56 : !llvm.ptr -> i8
              affine.store %57, %alloca_2[11] : memref<20xi8>
              %58 = llvm.getelementptr %33[0, 12] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %59 = llvm.load %58 : !llvm.ptr -> i8
              affine.store %59, %alloca_2[12] : memref<20xi8>
              %60 = llvm.getelementptr %33[0, 13] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %61 = llvm.load %60 : !llvm.ptr -> i8
              affine.store %61, %alloca_2[13] : memref<20xi8>
              %62 = llvm.getelementptr %33[0, 14] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %63 = llvm.load %62 : !llvm.ptr -> i8
              affine.store %63, %alloca_2[14] : memref<20xi8>
              %64 = llvm.getelementptr %33[0, 15] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %65 = llvm.load %64 : !llvm.ptr -> i8
              affine.store %65, %alloca_2[15] : memref<20xi8>
              %66 = llvm.getelementptr %33[0, 16] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %67 = llvm.load %66 : !llvm.ptr -> i8
              affine.store %67, %alloca_2[16] : memref<20xi8>
              %68 = llvm.getelementptr %33[0, 17] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %69 = llvm.load %68 : !llvm.ptr -> i8
              affine.store %69, %alloca_2[17] : memref<20xi8>
              %70 = llvm.getelementptr %33[0, 18] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %71 = llvm.load %70 : !llvm.ptr -> i8
              affine.store %71, %alloca_2[18] : memref<20xi8>
              %72 = llvm.getelementptr %33[0, 19] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
              %73 = llvm.load %72 : !llvm.ptr -> i8
              affine.store %73, %alloca_2[19] : memref<20xi8>
              %cast = memref.cast %alloca_2 : memref<20xi8> to memref<?xi8>
              %cast_7 = memref.cast %alloca_3 : memref<1xmemref<?xi8>> to memref<?xmemref<?xi8>>
              %74:10 = scf.while (%arg3 = %1, %arg4 = %1, %arg5 = %1, %arg6 = %0, %arg7 = %0, %arg8 = %1, %arg9 = %0, %arg10 = %0, %arg11 = %0, %arg12 = %c0_i32, %arg13 = %true) : (f64, f64, f64, i32, i32, f64, i32, i32, i32, i32, i1) -> (i32, f64, f64, f64, i32, i32, f64, i32, i32, i32) {
                scf.condition(%arg13) %arg12, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11 : i32, f64, f64, f64, i32, i32, f64, i32, i32, i32
              } do {
              ^bb0(%arg3: i32, %arg4: f64, %arg5: f64, %arg6: f64, %arg7: i32, %arg8: i32, %arg9: f64, %arg10: i32, %arg11: i32, %arg12: i32):
                %76 = affine.load %alloca_3[0] : memref<1xmemref<?xi8>>
                %77 = func.call @strtok_r(%76, %cast, %cast_7) : (memref<?xi8>, memref<?xi8>, memref<?xmemref<?xi8>>) -> memref<?xi8>
                %78 = "polygeist.memref2pointer"(%77) : (memref<?xi8>) -> !llvm.ptr
                %79 = llvm.icmp "eq" %78, %2 : !llvm.ptr
                %80 = arith.xori %79, %true : i1
                %81:3 = scf.if %79 -> (i32, i32, i1) {
                  scf.yield %arg11, %arg12, %false : i32, i32, i1
                } else {
                  %91 = func.call @strlen(%78) : (!llvm.ptr) -> i64
                  %92 = arith.cmpi ne, %91, %c0_i64 : i64
                  %93 = arith.cmpi sgt, %arg3, %c0_i32 : i32
                  %94:3 = scf.if %92 -> (i32, i32, i1) {
                    %95:3 = scf.if %93 -> (i32, i32, i1) {
                      %96 = arith.index_cast %arg3 : i32 to index
                      %97:3 = scf.for %arg13 = %c0 to %96 step %c1 iter_args(%arg14 = %c0_i32, %arg15 = %c0_i32, %arg16 = %true) -> (i32, i32, i1) {
                        %99:3 = scf.if %arg16 -> (i32, i32, i1) {
                          %100 = arith.index_cast %arg14 : i32 to index
                          %101 = memref.load %alloca[%100] : memref<100xmemref<?xi8>>
                          %102 = func.call @strcasecmp(%77, %101) : (memref<?xi8>, memref<?xi8>) -> i32
                          %103 = arith.cmpi eq, %102, %c0_i32 : i32
                          %104 = arith.select %103, %c1_i32, %arg15 : i32
                          %105 = arith.cmpi ne, %102, %c0_i32 : i32
                          %106 = scf.if %105 -> (i32) {
                            %107 = arith.addi %arg14, %c1_i32 : i32
                            scf.yield %107 : i32
                          } else {
                            scf.yield %arg14 : i32
                          }
                          scf.yield %106, %104, %105 : i32, i32, i1
                        } else {
                          scf.yield %arg14, %arg15, %false : i32, i32, i1
                        }
                        scf.yield %99#0, %99#1, %99#2 : i32, i32, i1
                      }
                      %98 = arith.cmpi eq, %97#1, %c0_i32 : i32
                      scf.yield %97#0, %97#1, %98 : i32, i32, i1
                    } else {
                      scf.yield %c0_i32, %c0_i32, %true : i32, i32, i1
                    }
                    scf.yield %95#0, %95#1, %95#2 : i32, i32, i1
                  } else {
                    scf.yield %arg11, %arg12, %false : i32, i32, i1
                  }
                  scf.yield %94#0, %94#1, %94#2 : i32, i32, i1
                }
                %82 = arith.cmpi slt, %arg3, %c100_i32 : i32
                %83 = arith.andi %82, %81#2 : i1
                %84 = arith.andi %82, %80 : i1
                %85 = arith.xori %81#2, %true : i1
                %86 = arith.andi %81#2, %84 : i1
                %87 = arith.andi %85, %80 : i1
                %88 = arith.ori %86, %87 : i1
                %89 = scf.if %81#2 -> (i32) {
                  %91 = scf.if %82 -> (i32) {
                    %92 = arith.index_cast %arg3 : i32 to index
                    %93 = func.call @strdup(%77) : (memref<?xi8>) -> memref<?xi8>
                    memref.store %93, %alloca[%92] : memref<100xmemref<?xi8>>
                    %94 = "polygeist.memref2pointer"(%93) : (memref<?xi8>) -> !llvm.ptr
                    %95 = llvm.icmp "ne" %94, %2 : !llvm.ptr
                    %96 = scf.if %95 -> (i32) {
                      %97 = arith.addi %arg3, %c1_i32 : i32
                      scf.yield %97 : i32
                    } else {
                      %97 = llvm.mlir.addressof @stderr : !llvm.ptr
                      %98 = llvm.load %97 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
                      %99 = "polygeist.memref2pointer"(%98) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
                      %100 = llvm.mlir.addressof @str5 : !llvm.ptr
                      %101 = llvm.getelementptr %100[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<71 x i8>
                      %102 = llvm.call @fprintf(%99, %101, %78) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
                      scf.yield %arg3 : i32
                    }
                    scf.yield %96 : i32
                  } else {
                    %92 = llvm.mlir.addressof @stderr : !llvm.ptr
                    %93 = llvm.load %92 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
                    %94 = "polygeist.memref2pointer"(%93) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
                    %95 = llvm.mlir.addressof @str6 : !llvm.ptr
                    %96 = llvm.getelementptr %95[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<53 x i8>
                    %97 = llvm.call @fprintf(%94, %96) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                    scf.yield %arg3 : i32
                  }
                  scf.yield %91 : i32
                } else {
                  scf.yield %arg3 : i32
                }
                %90:7 = scf.if %83 -> (i32, f64, f64, f64, f64, i32, i32) {
                  %91 = func.call @calculate_df(%77, %arg1, %arg2) : (memref<?xi8>, memref<?xmemref<?xi8>>, i32) -> i32
                  %92 = arith.cmpi ne, %91, %c0_i32 : i32
                  %93 = arith.select %92, %arg2, %arg8 : i32
                  %94:5 = scf.if %92 -> (f64, f64, f64, f64, i32) {
                    %95 = arith.sitofp %91 : i32 to f64
                    %96 = arith.subf %22, %95 : f64
                    %97 = arith.addf %96, %cst : f64
                    %98 = arith.addf %95, %cst : f64
                    %99 = arith.divf %97, %98 : f64
                    %100 = arith.addf %99, %cst_0 : f64
                    %101 = math.log %100 : f64
                    %102 = arith.cmpf ogt, %101, %cst_1 : f64
                    %103 = arith.select %102, %101, %cst_1 : f64
                    %104 = memref.get_global @K1 : memref<1xf64>
                    %105 = memref.get_global @B : memref<1xf64>
                    %106:4 = scf.for %arg13 = %c0 to %29 step %c1 iter_args(%arg14 = %arg4, %arg15 = %arg5, %arg16 = %arg6, %arg17 = %arg7) -> (f64, f64, f64, i32) {
                      %107 = func.call @strdup(%77) : (memref<?xi8>) -> memref<?xi8>
                      %108 = "polygeist.memref2pointer"(%107) : (memref<?xi8>) -> !llvm.ptr
                      %109 = llvm.icmp "eq" %108, %2 : !llvm.ptr
                      %110:4 = scf.if %109 -> (i32, f64, f64, f64) {
                        scf.yield %arg17, %arg16, %arg15, %arg14 : i32, f64, f64, f64
                      } else {
                        %111 = scf.while (%arg18 = %107) : (memref<?xi8>) -> memref<?xi8> {
                          %134 = affine.load %arg18[0] : memref<?xi8>
                          %135 = arith.cmpi ne, %134, %c0_i8 : i8
                          scf.condition(%135) %arg18 : memref<?xi8>
                        } do {
                        ^bb0(%arg18: memref<?xi8>):
                          %134 = affine.load %arg18[0] : memref<?xi8>
                          %135 = arith.extui %134 : i8 to i32
                          %136 = func.call @tolower(%135) : (i32) -> i32
                          %137 = arith.trunci %136 : i32 to i8
                          affine.store %137, %arg18[0] : memref<?xi8>
                          %138 = "polygeist.subindex"(%arg18, %c1) : (memref<?xi8>, index) -> memref<?xi8>
                          scf.yield %138 : memref<?xi8>
                        }
                        %112 = memref.load %alloc_5[%arg13] : memref<?xmemref<?xi8>>
                        %113 = func.call @calculate_tf(%107, %112) : (memref<?xi8>, memref<?xi8>) -> i32
                        memref.dealloc %107 : memref<?xi8>
                        %114 = arith.sitofp %113 : i32 to f64
                        %115 = affine.load %104[0] : memref<1xf64>
                        %116 = arith.addf %115, %cst_0 : f64
                        %117 = arith.mulf %114, %116 : f64
                        %118 = affine.load %105[0] : memref<1xf64>
                        %119 = arith.subf %cst_0, %118 : f64
                        %120 = memref.load %alloc[%arg13] : memref<?xf64>
                        %121 = arith.divf %120, %23 : f64
                        %122 = arith.mulf %118, %121 : f64
                        %123 = arith.addf %119, %122 : f64
                        %124 = arith.mulf %115, %123 : f64
                        %125 = arith.addf %114, %124 : f64
                        %126 = arith.divf %117, %125 : f64
                        %127 = arith.mulf %103, %126 : f64
                        %128 = arith.muli %arg13, %c16 : index
                        %129 = arith.index_cast %128 : index to i64
                        %130 = llvm.getelementptr %27[%129] : (!llvm.ptr, i64) -> !llvm.ptr, i8
                        %131 = llvm.getelementptr %130[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
                        %132 = llvm.load %131 : !llvm.ptr -> f64
                        %133 = arith.addf %132, %127 : f64
                        llvm.store %133, %131 : f64, !llvm.ptr
                        scf.yield %113, %117, %125, %127 : i32, f64, f64, f64
                      }
                      scf.yield %110#3, %110#2, %110#1, %110#0 : f64, f64, f64, i32
                    }
                    scf.yield %103, %106#0, %106#1, %106#2, %106#3 : f64, f64, f64, f64, i32
                  } else {
                    scf.yield %arg9, %arg4, %arg5, %arg6, %arg7 : f64, f64, f64, f64, i32
                  }
                  scf.yield %91, %94#0, %94#1, %94#2, %94#3, %94#4, %93 : i32, f64, f64, f64, f64, i32, i32
                } else {
                  scf.yield %arg10, %arg9, %arg4, %arg5, %arg6, %arg7, %arg8 : i32, f64, f64, f64, f64, i32, i32
                }
                scf.yield %90#2, %90#3, %90#4, %90#5, %90#6, %90#1, %90#0, %81#0, %81#1, %89, %88 : f64, f64, f64, i32, i32, f64, i32, i32, i32, i32, i1
              }
              memref.dealloc %30 : memref<?xi8>
              scf.for %arg3 = %c0 to %29 step %c1 {
                %76 = memref.load %alloc_5[%arg3] : memref<?xmemref<?xi8>>
                memref.dealloc %76 : memref<?xi8>
              }
              memref.dealloc %alloc_5 : memref<?xmemref<?xi8>>
              memref.dealloc %alloc : memref<?xf64>
              %75 = arith.index_cast %74#0 : i32 to index
              scf.for %arg3 = %c0 to %75 step %c1 {
                %76 = memref.load %alloca[%arg3] : memref<100xmemref<?xi8>>
                memref.dealloc %76 : memref<?xi8>
              }
              affine.store %alloc_6, %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
            }
          }
        }
      }
    }
    %7 = affine.load %alloca_4[] : memref<memref<?x!llvm.struct<(i32, f64)>>>
    return %7 : memref<?x!llvm.struct<(i32, f64)>>
  }
  func.func private @strtok_r(memref<?xi8>, memref<?xi8>, memref<?xmemref<?xi8>>) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c6 = arith.constant 6 : index
    %alloca = memref.alloca() : memref<6xmemref<?xi8>>
    %0 = llvm.mlir.addressof @str7 : !llvm.ptr
    %1 = "polygeist.pointer2memref"(%0) : (!llvm.ptr) -> memref<?xi8>
    affine.store %1, %alloca[0] : memref<6xmemref<?xi8>>
    %2 = llvm.mlir.addressof @str8 : !llvm.ptr
    %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
    affine.store %3, %alloca[1] : memref<6xmemref<?xi8>>
    %4 = llvm.mlir.addressof @str9 : !llvm.ptr
    %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr) -> memref<?xi8>
    affine.store %5, %alloca[2] : memref<6xmemref<?xi8>>
    %6 = llvm.mlir.addressof @str10 : !llvm.ptr
    %7 = "polygeist.pointer2memref"(%6) : (!llvm.ptr) -> memref<?xi8>
    affine.store %7, %alloca[3] : memref<6xmemref<?xi8>>
    %8 = llvm.mlir.addressof @str11 : !llvm.ptr
    %9 = "polygeist.pointer2memref"(%8) : (!llvm.ptr) -> memref<?xi8>
    affine.store %9, %alloca[4] : memref<6xmemref<?xi8>>
    %10 = llvm.mlir.addressof @str12 : !llvm.ptr
    %11 = "polygeist.pointer2memref"(%10) : (!llvm.ptr) -> memref<?xi8>
    affine.store %11, %alloca[5] : memref<6xmemref<?xi8>>
    %12 = "polygeist.typeSize"() <{source = memref<?xi8>}> : () -> index
    %13 = arith.muli %12, %c6 : index
    %14 = arith.index_cast %13 : index to i64
    %15 = arith.index_cast %12 : index to i64
    %16 = arith.divui %14, %15 : i64
    %17 = arith.trunci %16 : i64 to i32
    %18 = llvm.mlir.addressof @str13 : !llvm.ptr
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
    %20 = llvm.mlir.addressof @str14 : !llvm.ptr
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<14 x i8>
    %22 = llvm.call @printf(%21, %19) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %23 = llvm.mlir.addressof @str15 : !llvm.ptr
    %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<20 x i8>
    %25 = llvm.call @printf(%24) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %cast = memref.cast %alloca : memref<6xmemref<?xi8>> to memref<?xmemref<?xi8>>
    %26 = "polygeist.pointer2memref"(%18) : (!llvm.ptr) -> memref<?xi8>
    %27 = call @rank_documents_bm25(%26, %cast, %17) : (memref<?xi8>, memref<?xmemref<?xi8>>, i32) -> memref<?x!llvm.struct<(i32, f64)>>
    %28 = "polygeist.memref2pointer"(%27) : (memref<?x!llvm.struct<(i32, f64)>>) -> !llvm.ptr
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.icmp "ne" %28, %29 : !llvm.ptr
    scf.if %30 {
      %31 = arith.index_cast %17 : i32 to index
      %32 = llvm.mlir.addressof @str16 : !llvm.ptr
      %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<38 x i8>
      scf.for %arg0 = %c0 to %31 step %c1 {
        %34 = arith.index_cast %arg0 : index to i32
        %35 = arith.muli %arg0, %c16 : index
        %36 = arith.index_cast %35 : index to i64
        %37 = llvm.getelementptr %28[%36] : (!llvm.ptr, i64) -> !llvm.ptr, i8
        %38 = llvm.load %37 : !llvm.ptr -> i32
        %39 = arith.addi %34, %c1_i32 : i32
        %40 = llvm.getelementptr %37[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(i32, f64)>
        %41 = llvm.load %40 : !llvm.ptr -> f64
        %42 = arith.index_cast %38 : i32 to index
        %43 = memref.load %alloca[%42] : memref<6xmemref<?xi8>>
        %44 = "polygeist.memref2pointer"(%43) : (memref<?xi8>) -> !llvm.ptr
        %45 = llvm.call @printf(%33, %39, %38, %41, %44) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32, i32, f64, !llvm.ptr) -> i32
      }
      memref.dealloc %27 : memref<?x!llvm.struct<(i32, f64)>>
    } else {
      %31 = llvm.mlir.addressof @str17 : !llvm.ptr
      %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<35 x i8>
      %33 = llvm.call @printf(%32) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    }
    return %c0_i32 : i32
  }
}
