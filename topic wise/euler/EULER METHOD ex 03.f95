    PRINT*,"X    F(X)"
    WRITE(*,*)"ENTER INITIAL POINT X0: "
    READ(*,*)X0
    WRITE(*,*)"ENTER THE VALUE AT WHICH RESULT IS TO BE FOUND: "
    READ(*,*)X1
    N=100
    Y=-4.0
    H=(X1-X0)/REAL(N)
    X=X0
    DO K=1,N
      Y=Y+H*F(X,Y)
      X=X+H
      ENDDO
      WRITE(*,*)"X WITH CORRESPOINDING VALUE OF Y"
      WRITE(*,*)X,Y
      STOP
      END
      FUNCTION F(X,Y)
      F=1.0+Y**2+X**3
      RETURN
      END

