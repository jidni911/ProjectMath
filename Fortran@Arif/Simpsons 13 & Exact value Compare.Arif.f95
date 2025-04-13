      F(X)=1.0/(1.0+X**2)
      XN=ATAN(1.0)
      X0=0.0
      N=12
      H=(XN-X0)/REAL(N)
      S=F(X0)+F(XN)
      DO I=1,N-1,2
        S=S+4.0*F(X0+REAL(I)*H)
        ENDDO
        DO K=2,N-2,2
          S=S+2.0*F(X0+REAL(K)*H)
          ENDDO
          S13=S*H/3.0
          WRITE(6,30)S13
 30         FORMAT(2X,"Simpsons 1/3 Value ",F16.9)
          EXACT=ATAN(XN)-ATAN(X0)
          WRITE(6,20)EXACT
 20         FORMAT(1X," The exact value is ", F20.9)   
          DIFF=ABS(S13-EXACT)
          WRITE(6,10)DIFF
 10       FORMAT(1X,"The difference between Simpsons 1/3 & Exact value is ", F15.9)    
          STOP
          END
