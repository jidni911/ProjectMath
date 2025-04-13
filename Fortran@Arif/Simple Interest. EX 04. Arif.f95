       TK=500.0
       A=0.0
       PRINT*, "YEAR  AMOUNT "
       DO 10 N=1,10
         P=0.0
         DO K=1,12,1
           P=P+TK+TK*REAL(K)*0.1/12.0
           ENDDO
           A=A+P+A*0.1
           WRITE(6,20)N,A
  20         FORMAT(1X,I4,4X,F10.2/)
  10         CONTINUE
           STOP
           END