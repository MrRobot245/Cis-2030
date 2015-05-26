*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:                  ; first instruction of program
    MOVE.W #40,D0
    MOVE.W #50,D1
    MOVE.W D1,D3
    LSR.W #1,D3
    BCS ODD
   

    
LOOP ASL.W #1,D0
    ASR.W #1,D1
    MOVE.W D1,D3
    LSR.W #1,D3
    BCS ODD
    CMP.W #1,D1
    BGT LOOP
    
ODD ADD.W D0,D2
  CMP.B #$1,D1
  BGT LOOP



EXIT    TRAP #14
* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
