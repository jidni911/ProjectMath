PROGRAM TRIANGLE
PRINT*,"ENTER THE VALUE OF A,B,C"
READ(*,*)A,B,C
IF(B+C.LE.A.OR.C+A.LE.B.OR.A+B.LE.C) GOTO 8
  P=A+B+C
  S=P/2.0
  AREA=SQRT(S*(S-A)*(S-B)*(S-C))
  WRITE(6,*)P,AREA
8 STOP
     END PROGRAM
