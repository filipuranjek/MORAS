//sp
@256
D=A
@SP
M=D
//call main.Main 0
@main.Main$ret0
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.Main
0;JMP
(main.Main$ret0)
//ep
($EP$)
@$EP$
0;JMP
//function Main 0
(main.Main)
//push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
//call mid.mid 3
@mid.mid$ret1
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.mid
0;JMP
(mid.mid$ret1)
//push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//call fibonnaci.fibonnaci 1
@fibonnaci.fibonnaci$ret2
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonnaci.fibonnaci
0;JMP
(fibonnaci.fibonnaci$ret2)
//push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//call div_mod.div 2
@div_mod.div$ret3
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@div_mod.div
0;JMP
(div_mod.div$ret3)
//push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//call div_mod.mod 2
@div_mod.mod$ret4
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@div_mod.mod
0;JMP
(div_mod.mod$ret4)
//push constant 100
@100
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//call bin_search.bin_search 3
@bin_search.bin_search$ret5
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@bin_search.bin_search
0;JMP
(bin_search.bin_search$ret5)
//label end
(main.Main$end)
//goto end
@main.Main$end
0;JMP
//function mid 3
(mid.mid)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB6
D;JGT
@LAB7
D=0;JMP
(LAB6)
D=-1
(LAB7)
@SP
A=M-1
M=D
//if-goto x_gt_y
@SP
AM=M-1
D=M+1
@mid.mid$x_gt_y
D;JEQ
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB8
D;JGT
@LAB9
D=0;JMP
(LAB8)
D=-1
(LAB9)
@SP
A=M-1
M=D
//if-goto y_gt_z
@SP
AM=M-1
D=M+1
@mid.mid$y_gt_z
D;JEQ
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label x_gt_y
(mid.mid$x_gt_y)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB10
D;JGT
@LAB11
D=0;JMP
(LAB10)
D=-1
(LAB11)
@SP
A=M-1
M=D
//if-goto x_gt_z
@SP
AM=M-1
D=M+1
@mid.mid$x_gt_z
D;JEQ
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label x_gt_z
(mid.mid$x_gt_z)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB12
D;JGT
@LAB13
D=0;JMP
(LAB12)
D=-1
(LAB13)
@SP
A=M-1
M=D
//if-goto ret_y
@SP
AM=M-1
D=M+1
@mid.mid$ret_y
D;JEQ
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label y_gt_z
(mid.mid$y_gt_z)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB14
D;JGT
@LAB15
D=0;JMP
(LAB14)
D=-1
(LAB15)
@SP
A=M-1
M=D
//if-goto ret_x
@SP
AM=M-1
D=M+1
@mid.mid$ret_x
D;JEQ
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label ret_y
(mid.mid$ret_y)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label ret_x
(mid.mid$ret_x)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//function fibonnaci 1
(fibonnaci.fibonnaci)
@SP
M=M+1
A=M-1
M=0
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB16
D;JLT
@LAB17
D=0;JMP
(LAB16)
D=-1
(LAB17)
@SP
A=M-1
M=D
//if-goto zero_or_one
@SP
AM=M-1
D=M+1
@fibonnaci.fibonnaci$zero_or_one
D;JEQ
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call fibonnaci.fibonnaci 1
@fibonnaci.fibonnaci$ret18
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonnaci.fibonnaci
0;JMP
(fibonnaci.fibonnaci$ret18)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call fibonnaci.fibonnaci 1
@fibonnaci.fibonnaci$ret19
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonnaci.fibonnaci
0;JMP
(fibonnaci.fibonnaci$ret19)
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label zero_or_one
(fibonnaci.fibonnaci$zero_or_one)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//function div 2
(div_mod.div)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//pop local 0
@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//pop local 1
@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//label while_div
(div_mod.div$while_div)
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB20
D;JLT
@LAB21
D=0;JMP
(LAB20)
D=-1
(LAB21)
@SP
A=M-1
M=D
//if-goto end_div
@SP
AM=M-1
D=M+1
@div_mod.div$end_div
D;JEQ
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//pop local 0
@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 1
@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//goto while_div
@div_mod.div$while_div
0;JMP
//label end_div
(div_mod.div$end_div)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//function mod 2
(div_mod.mod)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//pop local 0
@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//pop local 1
@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//label while_mod
(div_mod.mod$while_mod)
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB22
D;JLT
@LAB23
D=0;JMP
(LAB22)
D=-1
(LAB23)
@SP
A=M-1
M=D
//if-goto end_mod
@SP
AM=M-1
D=M+1
@div_mod.mod$end_mod
D;JEQ
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 1
@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//goto while_mod
@div_mod.mod$while_mod
0;JMP
//label end_mod
(div_mod.mod$end_mod)
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//function bin_search 3
(bin_search.bin_search)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//pop local 0
@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 1
@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//label while
(bin_search.bin_search$while)
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB24
D;JGT
@LAB25
D=0;JMP
(LAB24)
D=-1
(LAB25)
@SP
A=M-1
M=D
//if-goto end_while
@SP
AM=M-1
D=M+1
@bin_search.bin_search$end_while
D;JEQ
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//call div_mod.div 2
@div_mod.div$ret26
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@div_mod.div
0;JMP
(div_mod.div$ret26)
//pop local 2
@2
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB27
D;JEQ
@LAB28
D=0;JMP
(LAB27)
D=-1
(LAB28)
@SP
A=M-1
M=D
//if-goto found
@SP
AM=M-1
D=M+1
@bin_search.bin_search$found
D;JEQ
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB29
D;JGT
@LAB30
D=0;JMP
(LAB29)
D=-1
(LAB30)
@SP
A=M-1
M=D
//if-goto higher
@SP
AM=M-1
D=M+1
@bin_search.bin_search$higher
D;JEQ
//goto lower
@bin_search.bin_search$lower
0;JMP
//label end_while
(bin_search.bin_search$end_while)
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//neg
@SP
A=M-1
M=-M
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label found
(bin_search.bin_search$found)
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label higher
(bin_search.bin_search$higher)
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 1
@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//goto while
@bin_search.bin_search$while
0;JMP
//label lower
(bin_search.bin_search$lower)
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//pop local 0
@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//goto while
@bin_search.bin_search$while
0;JMP
