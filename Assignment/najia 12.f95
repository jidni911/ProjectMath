      PROGRAM PRIME
      DIMENSION M(500)
      M(1)=2
      M(2)=3
      J=2
      DO 10 N=5,1000,2
        DO K=3,N/2,2
          IF(MOD(N,K).EQ.0.0)GOTO 10
        ENDDO
        J=J+1
        M(J)=N
10    CONTINUE
      PRINT 20,(M(I),I=1,J)
20    FORMAT(3X,10I7)
      END PROGRAM
