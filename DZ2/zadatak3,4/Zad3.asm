@R0
D = M;

@R5
M = D; // set prvi na max  

@i
M = 0;
D = M;

@jumpTo
M = D + 1;


(LOOP_START)
    @i
    D = M;

    @5
    D = A - D;
    @LOOP_END
    D; JEQ

    @jumpTo
    D = M;

    A = D; // skoci na registar R[A]
    D = M; // uzmi njegovu vrijednost

    @R5
    D = D - M; // usporedi s max na R5
    @switch
    D; JGT // postavi novi max

    (ret)

        @i
        M = M + 1;

        @jumpTo
        M = M + 1;

        @LOOP_START
        0; JMP
(LOOP_END)
(END)
@END
0; JMP

(switch)
    @jumpTo
    D = M;

    A = D;
    D = M;

    @R5
    M = D;

    @ret
    0; JMP