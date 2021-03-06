# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver1 -instruction-tables < %s | FileCheck %s

rdfsbase %eax
rdfsbase %rax

rdgsbase %eax
rdgsbase %rax

wrfsbase %edi
wrfsbase %rdi

wrgsbase %edi
wrgsbase %rdi

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      100   0.25    *      *      U     rdfsbasel	%eax
# CHECK-NEXT:  1      100   0.25    *      *      U     rdfsbaseq	%rax
# CHECK-NEXT:  1      100   0.25    *      *      U     rdgsbasel	%eax
# CHECK-NEXT:  1      100   0.25    *      *      U     rdgsbaseq	%rax
# CHECK-NEXT:  1      100   0.25    *      *      U     wrfsbasel	%edi
# CHECK-NEXT:  1      100   0.25    *      *      U     wrfsbaseq	%rdi
# CHECK-NEXT:  1      100   0.25    *      *      U     wrgsbasel	%edi
# CHECK-NEXT:  1      100   0.25    *      *      U     wrgsbaseq	%rdi

# CHECK:      Resources:
# CHECK-NEXT: [0]   - ZnAGU0
# CHECK-NEXT: [1]   - ZnAGU1
# CHECK-NEXT: [2]   - ZnALU0
# CHECK-NEXT: [3]   - ZnALU1
# CHECK-NEXT: [4]   - ZnALU2
# CHECK-NEXT: [5]   - ZnALU3
# CHECK-NEXT: [6]   - ZnDivider
# CHECK-NEXT: [7]   - ZnFPU0
# CHECK-NEXT: [8]   - ZnFPU1
# CHECK-NEXT: [9]   - ZnFPU2
# CHECK-NEXT: [10]  - ZnFPU3
# CHECK-NEXT: [11]  - ZnMultiplier

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     rdfsbasel	%eax
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     rdfsbaseq	%rax
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     rdgsbasel	%eax
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     rdgsbaseq	%rax
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     wrfsbasel	%edi
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     wrfsbaseq	%rdi
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     wrgsbasel	%edi
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     wrgsbaseq	%rdi
