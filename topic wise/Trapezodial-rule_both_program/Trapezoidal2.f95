      F(X)=1.0/(1.0+X**2)
      XN=6.0
      X0=0.0
      N=12
      H=(XN-X0)/REAL(N)
      S=F(X0)+F(XN)
      DO I=1,N-1
       S=S+2.0*F(X0+REAL(I)*H)
          ENDDO
          TRAP=S*(H/2.0)
          WRITE(6,30)TRAP
 30         FORMAT(2X,"VALUE=",F12.5)
          STOP
          END
