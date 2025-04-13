    REAL K1,K2
    F(X,Y)=X-Y
    N=20
    X0=0.0
    Y0=1.0
    X=1.0
    H=(X-X0)/FLOAT(N)
    DO I=1,N
      K1=H*F(X0,Y0)
      K2=H*F(X0+H,Y0+K1)
      X1=X0+H
      Y1=Y0+(K1+K2)/2.0
      PRINT*,I,X1,Y1
      X0=X1
      Y0=Y1
      ENDDO
    END