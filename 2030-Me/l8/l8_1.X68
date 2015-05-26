*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:
    move.w x,-(sp)  
    jsr solveQuad
    lea 2(sp),sp
    trap #14

solveQuad   move.w 4(sp),d0
    move.w d0,d1
    muls #5,d1
    muls d0,d1

    move x,d2
    muls #2,d2
    sub.w d2,d1

    add.w #6,d1 
    rts             


    SIMHALT             ; halt simulator

* Put variables and constants here
    org $9000
x dc.w  4
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
