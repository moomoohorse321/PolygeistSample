module {
  func.func @decision_tree(%arg0: i32, %arg1: i32, %arg2: tensor<3xf32>, %arg3: tensor<3xf32>, %arg4: tensor<3xi32>, %arg5: tensor<3xf32>, %arg6: tensor<3xi32>) {
    return
  }
  func.func @knob_start() {
    return
  }
  func.func @knob_end() {
    return
  }
  func.func @main(%arg0: index) {
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %alloc = memref.alloc(%arg0) : memref<?xf32>
    %alloca = memref.alloca() : memref<16x16xf32>
    affine.for %arg1 = 0 to 16 {
      %0 = affine.load %alloca[%arg1, 0] : memref<16x16xf32>
      %alloca_0 = memref.alloca() : memref<f32>
      affine.store %0, %alloca_0[] : memref<f32>
      %1 = arith.index_cast %arg1 : index to i32
      %2 = arith.cmpi sge, %1, %c0_i32 : i32
      %3 = arith.cmpi slt, %1, %c2_i32 : i32
      %4 = arith.andi %2, %3 : i1
      %5 = arith.cmpi sge, %1, %c3_i32 : i32
      %6 = arith.cmpi slt, %1, %c4_i32 : i32
      %7 = arith.andi %5, %6 : i1
      scf.if %4 {
        "approxMLIR.transform"() <{knob_val = 0 : i32, transform_type = "loop_perforate"}> : () -> ()
        affine.for %arg2 = 1 to 16 {
          %9 = affine.load %alloca[%arg1, %arg2] : memref<16x16xf32>
          %10 = affine.load %alloca_0[] : memref<f32>
          %11 = arith.cmpf ogt, %9, %10 : f32
          %12 = arith.select %11, %9, %10 : f32
          affine.store %12, %alloca_0[] : memref<f32>
        }
      } else {
        scf.if %7 {
          "approxMLIR.transform"() <{knob_val = 1 : i32, transform_type = "loop_perforate"}> : () -> ()
          affine.for %arg2 = 1 to 16 {
            %9 = affine.load %alloca[%arg1, %arg2] : memref<16x16xf32>
            %10 = affine.load %alloca_0[] : memref<f32>
            %11 = arith.cmpf ogt, %9, %10 : f32
            %12 = arith.select %11, %9, %10 : f32
            affine.store %12, %alloca_0[] : memref<f32>
          }
        }
      }
      %8 = affine.load %alloca_0[] : memref<f32>
      affine.store %8, %alloc[%arg1] : memref<?xf32>
    }
    return
  }
}

