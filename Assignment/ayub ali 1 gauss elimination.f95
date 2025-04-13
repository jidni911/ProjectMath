!==GAUS ELIMINATION OF AYUB SIR
    PROGRAM GAUSS_ELIMINATION
    PARAMETER(N=3)
    DIMENSION A(N,N),C(N),X(N)
    DATA A/1,1,1,3,4,3,8,3,4/
    DATA C/4,-2,1/
    PRINT 20,((A(I,J),J=1,3),C(I),I=1,3)
20  FORMAT(3X,3F8.3,3X,F8.3/)
    DO K=1,2
      P=A(K,K)
      DO I=K+1,3
        F=A(I,K)/P
        DO J=K,3
          A(I,J)=A(I,J)-F*A(K,J)
        ENDDO
        C(I)=C(I)-F*C(K)
      ENDDO
    ENDDO
    PRINT 20,((A(I,J),J=1,N),C(I),I=1,N)
    X(N)=C(N)/A(N,N)
    DO K=N-1,1,-1
      SUM=0.0
      DO J=K+1,N
        SUM=SUM+A(K,J)*X(J)
      ENDDO
      X(K)=(C(K)-SUM)/A(K,K)
    ENDDO
    WRITE(6,*)"SOLUTIONS"
    PRINT*,"X=",X(1)
    PRINT*,"Y=",X(2)
    PRINT*,"Z=",X(3)
    END PROGRAM 