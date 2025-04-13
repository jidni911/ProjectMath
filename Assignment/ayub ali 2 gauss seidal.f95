!==Assignment from ayub sir 1
     PROGRAM GAUSS_SEIDAL
     PARAMETER(K=20)
     DIMENSION X1(0:K),X2(0:K),X3(0:K)
     X2(0)=0.0
     X3(0)=0.0
     X1(0)=(3.0+5*X2(0)+2*X3(0))/10
     M=0
     PRINT*,"    X    Y       Z"
     PRINT 5,M,X1(M),X2(M),X3(M)
5    FORMAT(3X,I5,3F15.7/)
     DO N=1,K
       X1(N)=(3.0+5*X2(N-1)+2*X3(N-1))/10
       X2(N)=(-3.0-4*X1(N-1)-3*X3(n-1))/(-10)
       X3(N)=(-3-X1(N-1)-6*X2(N-1))/10
       PRINT 10,N,X1(N),X2(N),X3(N)
10     FORMAT(3X,I5,3F15.7/)
     ENDDO
     PRINT*,"APPROXIMATE SOLUTIONS"
     PRINT 20,"X1=",X1(K)
     PRINT 20,"X2=",X2(K)
     PRINT 20,"X3=",X3(K)
20   FORMAT(2X,A3,F15.7)
     END PROGRAM