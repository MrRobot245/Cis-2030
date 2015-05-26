*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:
    move.w n,-(sp) 
    jsr display
    lea 2(sp),sp
    trap #14
    
display   link A6,#-4
    CLR.L D2 
  * movem.l d0-d5/A0,-(sp) 
    
    MOVE.w 8(a6),D2
    
    CMPI.W #0,D2
    BEQ RTN
    
    divs #10,d2
    
    move.w d2,-4(a6)
    swap d2
    
    move.w d2,-2(a6)
    
    move.w -4(a6),-(sp)
    jsr display
    lea 2(sp),sp
 

   *movem.l (sp)+,d0-d5/A0
   
   
    move.W -2(a6),D1
    ADD.W #$30,D1
    move.b #6, d0 *FOR EASY68
     *TRAP #1
    TRAP #15
   * TRAP #14 
    
RTN
    unlk A6
    rts

    SIMHALT             ; halt simulator

* Put variables and constants here
    org $9000
n dc.w 12
z ds.l 1

    END  START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
