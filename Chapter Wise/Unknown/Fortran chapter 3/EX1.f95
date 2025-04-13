!==Ex-1
   PROGRAM ROOTS
   PRINT*,"Input the value of A,B,C"
15 READ(5,*) A,B,C
   IF(A.EQ. 0.0) GOTO 15
     D=B**2-4.0*A*C
     P=-B/(2.0*A)
     Q=SQRT(ABS(D)/(2.0*A))
     IF(D.GE.0.0)THEN
       PRINT*," 1ST ROOT = ",P+Q
       PRINT*," 2ND ROOT = ",P-Q  
       ELSE
         PRINT*," 1ST ROOT = ",P,"+I",Q
         PRINT*," 2ND ROOT = ",P,"-I",Q
         ENDIF
         END PROGRAM