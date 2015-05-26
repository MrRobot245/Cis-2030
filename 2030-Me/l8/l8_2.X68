*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:
    move.w x,-(sp)
    move.w y,-(sp) 
    move.w z,-(sp)
    lea w,A0
    move.l A0,-(sp)   
    jsr solveQuad
    lea 6(sp),sp
    trap #14

solveQuad   movem.l d0-d5/A0,-(sp) 
    move.w 40(sp),d0
    move.w 38(sp),d1
    move.w 36(sp),d2
    movea.l 32(sp),A0
    
    
    move.w d0,d3
    muls #5,d3
    muls d0,d3
    

    move.w d0,d4
    muls #2,d4
    muls d1,d4
    sub.w d4,d3
    
    muls d2,d2
    
    add.w d2,d3
    
    
    move.w d3,d5
    move.l d5,(A0)
    movem.l (sp)+,d0-d5/A0 
   
    rts             


    SIMHALT             ; halt simulator

* Put variables and constants here
    org $9000
x dc.w  -1
y dc.w  2
z dc.w  -3
w ds.w 1
    END  START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
