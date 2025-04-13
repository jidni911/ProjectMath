     DIMENSION M(500)
     J=0
     DO 10 N=2,1000
       DO K=2,N/2
         IF(MOD(N,K).EQ.0)GOTO 10
           ENDDO
           J=J+1
           M(J)=N
 10          CONTINUE
           PRINT*,"PRIME NUMBERS FROM 2 T0 999"
           PRINT 20, (M(I),I=1,J)
 20          FORMAT (3X,5I7/)
           STOP
           END
