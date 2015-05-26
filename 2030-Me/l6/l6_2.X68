*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:                  ; first instruction of program

* Put program code here
    LEA String1,A0
    LEA String2,A1
    MOVE.B #$FF,D0
    
LOOP MOVE.B (A0)+,D1
    MOVE.B (A1)+,D2
    CMP.B '0d',D2
    BEQ EXIT
    CMP.B D1,D2
    BNE NEQ
    BRA LOOP
 

NEQ MOVE.B #$00,D0

EXIT TRAP #14

* Put variables and constants here

    ORG $9000
String1 DC.B 'bobX'
    ORG $9020
String2 DC.B 'bobY'



    END    START        ; last line of source
    
   
   


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
