; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str12 = internal constant [35 x i8] c"Error return from gettimeofday: %d\00"
@str11 = internal constant [7 x i8] c"%0.6f\0A\00"
@polybench_t_end = global [1 x double] undef
@polybench_t_start = global [1 x double] undef
@str10 = internal constant [29 x i8] c"void polybench_flush_cache()\00"
@str9 = internal constant [70 x i8] c"/home/hao/Polygeist/tools/cgeist/Test/polybench/utilities/polybench.c\00"
@str8 = internal constant [12 x i8] c"tmp <= 10.0\00"
@str7 = internal constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00"
@str6 = internal constant [17 x i8] c"\0Aend   dump: %s\0A\00"
@str5 = internal constant [8 x i8] c"%0.2lf \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [4 x i8] c"cov\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global ptr
@str0 = internal constant [1 x i8] zeroinitializer

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64) #0

declare void @free(ptr) #1

declare i32 @printf(ptr, ...) #1

declare i32 @fprintf(ptr, ptr, ...) #1

define i32 @main(i32 %0, ptr %1) #1 {
  %3 = call noalias noundef ptr @malloc(i64 7168)
  %4 = call noalias noundef ptr @malloc(i64 6272)
  %5 = call noalias noundef ptr @malloc(i64 224)
  br label %6

6:                                                ; preds = %22, %2
  %7 = phi i64 [ 0, %2 ], [ %23, %22 ]
  %8 = icmp slt i64 %7, 32
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = trunc i64 %7 to i32
  %11 = sitofp i32 %10 to double
  br label %12

12:                                               ; preds = %15, %9
  %13 = phi i64 [ 0, %9 ], [ %21, %15 ]
  %14 = icmp slt i64 %13, 28
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = trunc i64 %13 to i32
  %17 = sitofp i32 %16 to double
  %18 = fmul double %11, %17
  %19 = fdiv double %18, 2.800000e+01
  %20 = getelementptr [28 x double], ptr %3, i64 %7, i64 %13
  store double %19, ptr %20, align 8
  %21 = add i64 %13, 1
  br label %12

22:                                               ; preds = %12
  %23 = add i64 %7, 1
  br label %6

24:                                               ; preds = %6
  %25 = call double @rtclock()
  store double %25, ptr @polybench_t_start, align 8
  br label %26

26:                                               ; preds = %46, %24
  %27 = phi i64 [ 0, %24 ], [ %51, %46 ]
  %28 = icmp slt i64 %27, 28
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = getelementptr double, ptr %5, i64 %27
  store double 0.000000e+00, ptr %30, align 8
  %31 = trunc i64 %27 to i32
  %32 = sitofp i32 %31 to double
  br label %33

33:                                               ; preds = %36, %29
  %34 = phi i64 [ 0, %29 ], [ %45, %36 ]
  %35 = icmp slt i64 %34, 32
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = trunc i64 %34 to i32
  %38 = sitofp i32 %37 to double
  %39 = fmul double %38, %32
  %40 = fdiv double %39, 2.800000e+01
  %41 = getelementptr double, ptr %5, i64 %27
  %42 = load double, ptr %41, align 8
  %43 = fadd double %42, %40
  %44 = getelementptr double, ptr %5, i64 %27
  store double %43, ptr %44, align 8
  %45 = add i64 %34, 1
  br label %33

46:                                               ; preds = %33
  %47 = getelementptr double, ptr %5, i64 %27
  %48 = load double, ptr %47, align 8
  %49 = fdiv double %48, 3.200000e+01
  %50 = getelementptr double, ptr %5, i64 %27
  store double %49, ptr %50, align 8
  %51 = add i64 %27, 1
  br label %26

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %68, %52
  %54 = phi i64 [ 0, %52 ], [ %69, %68 ]
  %55 = icmp slt i64 %54, 32
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ 0, %56 ], [ %67, %60 ]
  %59 = icmp slt i64 %58, 28
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = getelementptr double, ptr %5, i64 %58
  %62 = load double, ptr %61, align 8
  %63 = getelementptr [28 x double], ptr %3, i64 %54, i64 %58
  %64 = load double, ptr %63, align 8
  %65 = fsub double %64, %62
  %66 = getelementptr [28 x double], ptr %3, i64 %54, i64 %58
  store double %65, ptr %66, align 8
  %67 = add i64 %58, 1
  br label %57

68:                                               ; preds = %57
  %69 = add i64 %54, 1
  br label %53

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %101, %70
  %72 = phi i64 [ 0, %70 ], [ %102, %101 ]
  %73 = icmp slt i64 %72, 28
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %94, %74
  %76 = phi i64 [ %72, %74 ], [ %100, %94 ]
  %77 = icmp slt i64 %76, 28
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = getelementptr [28 x double], ptr %4, i64 %72, i64 %76
  store double 0.000000e+00, ptr %79, align 8
  br label %80

80:                                               ; preds = %83, %78
  %81 = phi i64 [ 0, %78 ], [ %93, %83 ]
  %82 = icmp slt i64 %81, 32
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = getelementptr [28 x double], ptr %3, i64 %81, i64 %72
  %85 = load double, ptr %84, align 8
  %86 = getelementptr [28 x double], ptr %3, i64 %81, i64 %76
  %87 = load double, ptr %86, align 8
  %88 = fmul double %85, %87
  %89 = getelementptr [28 x double], ptr %4, i64 %72, i64 %76
  %90 = load double, ptr %89, align 8
  %91 = fadd double %90, %88
  %92 = getelementptr [28 x double], ptr %4, i64 %72, i64 %76
  store double %91, ptr %92, align 8
  %93 = add i64 %81, 1
  br label %80

94:                                               ; preds = %80
  %95 = getelementptr [28 x double], ptr %4, i64 %72, i64 %76
  %96 = load double, ptr %95, align 8
  %97 = fdiv double %96, 3.100000e+01
  %98 = getelementptr [28 x double], ptr %4, i64 %72, i64 %76
  store double %97, ptr %98, align 8
  %99 = getelementptr [28 x double], ptr %4, i64 %76, i64 %72
  store double %97, ptr %99, align 8
  %100 = add i64 %76, 1
  br label %75

101:                                              ; preds = %75
  %102 = add i64 %72, 1
  br label %71

103:                                              ; preds = %71
  %104 = call double @rtclock()
  store double %104, ptr @polybench_t_end, align 8
  %105 = load double, ptr @polybench_t_start, align 8
  %106 = fsub double %104, %105
  %107 = call i32 (ptr, ...) @printf(ptr @str11, double %106)
  %108 = icmp sgt i32 %0, 42
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load ptr, ptr %1, align 8
  %111 = call i32 @strcmp(ptr %110, ptr @str0)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  call void @print_array(i32 28, ptr %4)
  br label %114

114:                                              ; preds = %113, %109
  br label %115

115:                                              ; preds = %114, %103
  call void @free(ptr %3)
  call void @free(ptr %4)
  call void @free(ptr %5)
  ret i32 0
}

define void @polybench_timer_start() #1 {
  %1 = call double @rtclock()
  store double %1, ptr @polybench_t_start, align 8
  ret void
}

define void @polybench_timer_stop() #1 {
  %1 = call double @rtclock()
  store double %1, ptr @polybench_t_end, align 8
  ret void
}

define void @polybench_timer_print() #1 {
  %1 = load double, ptr @polybench_t_end, align 8
  %2 = load double, ptr @polybench_t_start, align 8
  %3 = fsub double %1, %2
  %4 = call i32 (ptr, ...) @printf(ptr @str11, double %3)
  ret void
}

declare i32 @strcmp(ptr, ptr) #1

define internal void @print_array(i32 %0, ptr %1) #1 {
  %3 = load ptr, ptr @stderr, align 8
  %4 = call i32 (ptr, ptr, ...) @fprintf(ptr %3, ptr @str1)
  %5 = load ptr, ptr @stderr, align 8
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr %5, ptr @str2, ptr @str3)
  %7 = sext i32 %0 to i64
  br label %8

8:                                                ; preds = %31, %2
  %9 = phi i64 [ 0, %2 ], [ %32, %31 ]
  %10 = icmp slt i64 %9, %7
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = trunc i64 %9 to i32
  %13 = mul i32 %12, %0
  br label %14

14:                                               ; preds = %25, %11
  %15 = phi i64 [ 0, %11 ], [ %30, %25 ]
  %16 = icmp slt i64 %15, %7
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = trunc i64 %15 to i32
  %19 = add i32 %13, %18
  %20 = srem i32 %19, 20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr @stderr, align 8
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr %23, ptr @str4)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load ptr, ptr @stderr, align 8
  %27 = getelementptr [28 x double], ptr %1, i64 %9, i64 %15
  %28 = load double, ptr %27, align 8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr %26, ptr @str5, double %28)
  %30 = add i64 %15, 1
  br label %14

31:                                               ; preds = %14
  %32 = add i64 %9, 1
  br label %8

33:                                               ; preds = %8
  %34 = load ptr, ptr @stderr, align 8
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr %34, ptr @str6, ptr @str3)
  %36 = load ptr, ptr @stderr, align 8
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr %36, ptr @str7)
  ret void
}

define void @polybench_flush_cache() #1 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i64 [ 0, %0 ], [ %7, %5 ]
  %3 = phi double [ 0.000000e+00, %0 ], [ %6, %5 ]
  %4 = icmp slt i64 %2, 4194560
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = fadd double %3, 0.000000e+00
  %7 = add i64 %2, 1
  br label %1

8:                                                ; preds = %1
  %9 = fcmp ole double %3, 1.000000e+01
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  call void @__assert_fail(ptr @str8, ptr @str9, i32 125, ptr @str10)
  br label %12

12:                                               ; preds = %10, %11
  ret void
}

declare void @__assert_fail(ptr, ptr, i32, ptr) #1

define void @polybench_prepare_instruments() #1 {
  ret void
}

define internal double @rtclock() #1 {
  %1 = alloca [2 x i64], i64 1, align 8
  %2 = call i32 @gettimeofday(ptr %1, ptr null)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (ptr, ...) @printf(ptr @str12, i32 %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = getelementptr [2 x i64], ptr %1, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = sitofp i64 %8 to double
  %10 = getelementptr [2 x i64], ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = sitofp i64 %11 to double
  %13 = fmul double %12, 0x3EB0C6F7A0B5ED8D
  %14 = fadd double %9, %13
  ret double %14
}

declare i32 @gettimeofday(ptr, ptr) #1

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

