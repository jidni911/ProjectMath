     PROGRAM NEWTONS
     F(X)=COS(X)-X*EXP(X)
     FD(X)=-SIN(X)-EXP(X)-X*EXP(X)
     TOL=0.00001
     PRINT*,"ENTER X0"
10   READ(5,*)X0
     N=1
     PRINT*,"    N       X  "
20   A=F(X0)
     IF(A.EQ.0.0)GOTO 40
     B=FD(X0)
     IF(B.EQ.0.0)GOTO 10
     WRITE(6,30)N,X0
30   FORMAT(3X,I3,2X,F10.4)
     X1=X0-A/B
     IF(ABS(X0-X1).LT.TOL)GOTO 40
     N=N+1
     X0=X1
     GOTO 20
40   WRITE(6,50)X0
50   FORMAT(3X,"THE SOLUTIONN X=",F10.4)
     END PROGRAM    