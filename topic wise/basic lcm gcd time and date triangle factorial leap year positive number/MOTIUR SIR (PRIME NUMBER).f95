   PROGRAM PRIME
   INTEGER M(250)
   I=0
   DO 10 N=2, 500
     K=N/2
   DO J=2,K
     IF (MOD(N,J).EQ.0)GOTO 10
       ENDDO 
       I=I+1
       M(I)=N
   10  CONTINUE
       WRITE(6,20) (M(J),J=1,I)
   20  FORMAT(3X,5I8/) !5 NUMBERS IN EACH LINE
   END PROGRAM        