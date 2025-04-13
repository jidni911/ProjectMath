      program pfactors
      INTEGER M(50)
      CHARACTER C
      C="X"
      PRINT*,"ENTER ANY NUMBER"
      READ*,N
      DO J=2,N/2
        IF(MOD(N,J).EQ.0)GOTO 20
      ENDDO
      M(1)=1
      M(2)=N
      PRINT 10,N,M(1),C,M(2)
10    FORMAT(3X,I10,"=",I1,A1,I3)
      STOP
20    J=0
      K=2
      I=N
25    IF(MOD(N,K).EQ.0)THEN
30      J=J+1
        M(J)=K
        N=N/K
        IF(MOD(N,K).EQ.0)GOTO 30
      ENDIF
      K=K+1
      IF(K.LE.I/2)GOTO 25
      PRINT 40,I,M(1),(C,M(L),L=2,J)
40    FORMAT(3X,I10,"=",I1,12(A1,I2))
      END PROGRAM