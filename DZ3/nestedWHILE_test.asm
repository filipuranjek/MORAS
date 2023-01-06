@5
D=A
@i
M=D

@ret1
M=0

@j
M=0

$WHILE(i)
@i
M=M-1
@i
D=M
@m
M=D
    $WHILE(m)
    $SUM(ret1, m, ret1)
    @m
    M=M-1
    $END
$END

(END)
@END
0;JMP
