
        PARAMETER (N=3)
        DIMENSION A(N,N+1),X(N)
        DATA A/1,2,3,2,4,2,3,1,9,6,7,14/
        PRINT 22,((A(I,J),J=1,N+1),I=1,3)
22      FORMAT(2X,4F12.6)
    DO M=1,N-1
       DO K=M+1,N
         P=A(K,M)/A(M,M)
         DO J=M+1,N+1
           A(K,J)=A(K,J)-P*A(M,J)
         ENDDO
       ENDDO
     ENDDO
      DO K=N,1,-1
        P=A(K,N+1)
        IF(K.EQ.N)GOTO 11
        DO J=K+1,N
        P=P-A(K,J)*X(J)
        ENDDO
11       X(K)=P/A(K,K)
      ENDDO
      PRINT*,'X=',X(1)
        PRINT*,'Y=',X(2)
         PRINT*,'Z=',X(3)
       STOP
       END
