      F(X)=EXP(-X**2)
      XN=6.0
      X0=0.0
      N=12
      H=(XN-X0)/REAL(N)
      S=F(X0)+F(XN)
      DO I=1,N-1
        IF(MOD(I,3).EQ.0)THEN
        S=S+2.0*F(X0+REAL(I)*H)
        ELSE
          S=S+3.0*F(X0+REAL(I)*H)
          ENDIF
          ENDDO
          S38=S*(3.0*H/8.0)
          WRITE(6,30)S38
 30         FORMAT(2X,"VALUE=",F12.5)
          STOP
          END
