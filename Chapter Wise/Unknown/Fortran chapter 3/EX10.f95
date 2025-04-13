!==EX-10
	PROGRAM PRIME
    INTEGER M(500)
    J=0
    DO 11 N=100,999
      DO K=2,N/2
        IF(MOD(N,K)==0) GOTO 11
          ENDDO
          J=J+1
          M(J)=N
11  CONTINUE
    WRITE(6,*)
    PRINT*," PRIME NUMBERS FROM 100 TO 999" 
    WRITE(6,*)
    PRINT 20,(M(I),I=1,J)
20  FORMAT(3X,5I7/)
    WRITE(6,*)
    END PROGRAM             