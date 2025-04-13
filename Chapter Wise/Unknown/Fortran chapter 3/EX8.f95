!==EX-8
	PROGRAM PRIME
    PARAMETER(N=10)
    DIMENSION F(N)
    INTEGER F
    F(1)=1
    F(2)=1
    DO K=3,N
      F(K)=F(K-1)+F(K-2)
      ENDDO
      DO 20 M=1,N
        IF(F(M).LT.2) GOTO 10
          J=M/2
          DO I=2,J
            IF(MOD(F(M),I).EQ.0) GOTO 10
              ENDDO
              PRINT*,F(M)," IS A PRIME"
              GOTO 20
 10   PRINT*,F(M)," IS NOT A PRIME"
 20   CONTINUE
      END PROGRAM
