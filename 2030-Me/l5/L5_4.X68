*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:                  ; first instruction of program

* Put program code here
    MOVE.L num1,D0
    MOVE.L num2,D1
    MOVE.L num3,D2
    
    CMP.L D0,D1
    BGE ELS1
    CMP.L D0,D2
    BGE ELSELS
    MOVE.L D0,D4
    BRA EXT
    
ELSELS MOVE.L D2,D4
    BRA EXT
  
ELS1 CMP.L D1,D2
    BGE ELSELS
    MOVE.L D1,D4
    BRA EXT
      
EXT
    MOVE.L D4,biggest
END TRAP #14

    
* Put variables and constants here

    ORG $9000
num1 DC.L 9
num2 DC.L 7
num3 DC.L 2
biggest DS.L 1

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
