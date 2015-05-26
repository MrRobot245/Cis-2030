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
    lea z,A0
    move.l A0,-(sp) 
    
    jsr squared
    lea 6(sp),sp
    trap #14

squared  link A6,#-6 
    movem.l d0-d5/A0,-(sp) 
    
    move.w 14(A6),D0
    move.w 12(A6),D1
    move.l 8(A6),A0
    
    MOVE.W -2(a6),d3
    move.w -4(a6),d4
    move.w -6(a6),d5
    
    move.w d0,d3
    move.w d1,d4
    
    MULS D3,D3
    move.w d3,-2(a6)
    MULS D4,D4
    move.w d3,-4(a6)
    
    move.w #2,d5
    muls d0,d5
    muls d1,d5

    add.w d4,d5
    add.w d3,d5 

    move.l d5,(A0)
    movem.l (sp)+,d0-d5/A0 
    unlk A6
   
    rts             


    SIMHALT             ; halt simulator

* Put variables and constants here
    org $9000
x dc.w  80
y dc.w  -70
z ds.l 1
    END  START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
