T=0.5E-05
10 WRITE(6,*) 'Enter three non-zero positive numbers'
WRITE(6,*)
READ(5,*) A, B, C

IF(A.LE.0.0.OR.B.LE.0.0.OR.C.LE.0.0) GOTO 10
IF((A.LT. B + C.AND.B.LT.C+ A .AND. C.LT. A + B)) THEN
	IF(A.EQ. B .AND. B.EQ. C) THEN 
   
		PRINT*, 'An equilateral triangle'

	Else IF(A.EQ. B.OR. B.EQ. C.OR. C.EQ. A) THEN 
		PRINT*, 'An isosceles triangle'
	ELSE IF (ABS(A*A+B*B-C*C).LT.T.OR.ABS(B*B+C*C-A*A).LT.T.OR.ABS(C*C+A*A-B*B).LT.T) THEN
		PRINT*, 'A right angled-triangle'

	ENDIF
else
	PRINT*,'Does not form a triangle'
ENDIF 
STOP
END