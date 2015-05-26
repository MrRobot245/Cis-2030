*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:                  ; first instruction of program

* Put program code here
    MOVEA.L #MATRIX,A0
    MOVE.B #4,D2
    MOVE.B #0,D4

    
INNER
    MOVE.B D0,D1
    ADD.B #1,D1
    
    MOVE.B (A0,D0.L),temp
    MOVE.B temp,D5 
    ADD.B #1,D0
    *BREAK STUFF
    BRA INNER
    

EXIT TRAP #14

* Put variables and constants here

    ORG $9000
    
MATRIX DC.B 1,2,3,4
    DC.B 5,6,7,8
    DC.B 9,10,11,12
    DC.B 13,14,15,16
temp DS.B 1



    END    START        ; last line of source
    
   
   


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
