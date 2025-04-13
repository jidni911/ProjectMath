       PRINT*,"The required perfect numbers are:"
       DO 20 N=1,1000,1
         ISUM=0
         DO 10 K=1,N
           IF(MOD(N,K).EQ.0)THEN
             ISUM=ISUM+K
             ENDIF
 10            CONTINUE
             IF(ISUM.EQ.2*N)THEN
               PRINT*,N
               ENDIF
 20              CONTINUE
               STOP
               END
       