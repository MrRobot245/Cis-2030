

	ORG	$8000

DUART	EQU	$C001
SRA	EQU	2
RBA	EQU	6

	LEA	DUART,A0
	MOVEA.L	#MESSAGE,A1

LOOP	MOVE.B	SRA(A0),D7
	ANDI.B	#1,D7
	BEQ	LOOP
	MOVE.B	RBA(A0),D0
	CMP.B	#13,D0
	BEQ	EXIT
	MOVE.B	D0,(A1)+
	BRA	LOOP

EXIT	TRAP #14


	ORG	$9000
MESSAGE	DS.B 10


	END	$8000








*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
