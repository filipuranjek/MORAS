// R0 je baza, R1 je eksponent

// 0 na 0 zabranjeno
@R0
D=M
@R1
D=D+M
@END
D;JEQ


// 0 na bilo sto je 0
@R0
D = M
@END
D;JEQ

// bilo koji broj na 0 je 1
@R2
M = 1
@R1
D = M
@pow
D;JGT
@END
0;JMP

// potenciranje
(pow)
@R1
D = M
@i
M = D

$WHILE(i)
    @R0
    D = M
    @j
    M = D
    @temp
    M = 0
    $WHILE(j)
        $SUM(temp,R2,temp)
        @j
        M = M - 1
    $END
    $MV(temp,R2)
    @i
    M = M - 1
$END


(END)
@END
0;JMP

