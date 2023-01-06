@100
D = A
@start
M = D 

@R0
D = M //duljina polja
@100
D = D + A 
D = D - 1 // pomak na krajnji inedks polja
@end 
M = D 

@length
M = 1

$MV(R0,length)

@length
D = M
@i
M = D - 1

$WHILE(i)
    @length
    D = M
    @i
    D = D - M
    @j
    M = D
    $WHILE(j)
        @start
        D = M
        @j
        D = D + M
        @c
        M = D
        @p
        M = D - 1

        @p
        A = M
        D = M
        @c
        A = M
        D = D - M
        @SWAP // current je veci od previous sto znaci moramo ih zamjenit
        D;JGT

        (RESUME)
        @j
        M = M - 1
    $END
    @i
    M = M - 1
$END

(END)
@END
0 ; JMP

(SWAP)
@p
A = M 
D = M
@temp
M = D
@c
A = M
D = M
@p
A = M
M = D
@temp
D = M
@c
A = M
M = D

@RESUME
0;JMP

