*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:                  ; first instruction of program

* Put program code here
    MOVE.W	hexVal,D3
    MOVE.W	charCode,D4
    MOVE.W #$39,D5
    ADDI.W #$30,D4
    CMP.W	D3,D5
    BHI  TRU
    
TRU ADD.W #$07,D4

    
* Put variables and constants here

    ORG $9000
hexVal	DC.W	$42
charCode DC.W   $B

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
