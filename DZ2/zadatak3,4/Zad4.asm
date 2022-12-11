@SCREEN
D = A;

@address
M = D;

@i
M = 0;


(LOOP_START)
    // loop
    @i
    D = M;

    @130 
    D = A - D;
    @LOOP_END
    D; JEQ
    // end loop

    @0
    D = !A

    @32767 // bojanje kraja registra
    D = D - A

    @address
    A = M;
    M = D; // bojanje jednog piksela

    @i
    M = M + 1;

    @32
    D = A;

    @address
    M = M + D; // skakanje u novi red

    @LOOP_START
    0; JMP
(LOOP_END)

@i
M = 0;

@SCREEN
D = A;

@address
M = D;

@4096
D = A;

@address
M = M + D // pomicanje donje katete na pravo mjesto

(LOOP_START2)
    // loop
    @i
    D = M;

    @8 // 8 puta ponavljamo jer je duzina trokuta 128 (16*8)
    D = A - D;
    @LOOP_END2
    D; JEQ
    // end loop

    @33
    D = A;

    @address
    A = M + D;
    M = -1 // bojanje svih 16 piksela u registru

    @i
    M = M + 1;

    @address
    M = M + 1; // novi registar

    @LOOP_START2
    0; JMP
(LOOP_END2)

@SCREEN
D = A
@address
M = D

@1
D = A
@diagonal
M = D

@1
D = A
@shift
M = D

@16
D = A
@h
M = D


@i
M = 0

(LOOP3)
    // loop
    @128
    D = A
    @i
    D = M - D
    @END_LOOP3
    D; JGE
    // end loop

    @h
    D = M

    @CONTINUE
    D; JGT

    @1// shiftaj u desno
    D = A
    @diagonal
    M = D
    @16
    D = A
    @h
    M = D
    @shift
    M = M + 1

    (CONTINUE)
    @32
    D = A
    @shift
    D = M + D
    @address
    M = M + D
    @0
    D = A
    @shift
    M = D

    @diagonal
    D = M

    @address
    A = M
    M = D

    @diagonal
    M = M + D
    D = M


    @i //povecaj iterator za 1
    M = M + 1

    @h
    M = M - 1

    @LOOP3
    0; JMP
(END_LOOP3)


(END)
@END
0; JMP
