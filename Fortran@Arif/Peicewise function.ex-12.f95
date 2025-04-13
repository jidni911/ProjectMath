      REAL K
      F(X,Y)=(X*Y*(X**2-Y**2))/(X**2+Y**2)
      H=0.00001
      K=0.00001
      F0=0.00000
      Y=K
      FX=(F(H,Y)-F(0.0,Y))/H
      FXY=(FX-F0)/K
      PRINT*,"FXY=",FXY
      X=H
      FY=(F(X,K)-F(X,0.0))/K
      FYX=(FY-F0)/H
      PRINT*,"FYX=",FYX
      IF(FXY.EQ.FYX)PRINT*,"Fxy(0,0) equal Fyx(0,0)"
      STOP
      END
