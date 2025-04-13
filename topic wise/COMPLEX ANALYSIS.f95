		PROGRAM VALUE
        INTEGER J,K
        REAL X,Y,Z
        WRITE(6,20)
 20     FORMAT(2X,"X   Y   Z")
        X=-6.0
        DO J=1,25
          Y=-6.0
          DO K=1,25
            Z=X**3-3.0*X*Y**2+2.0*X*Y+Y-2.0*Y**3
        WRITE(6,30)X,Y,Z
        Y=Y+0.5
        ENDDO
        X=X+0.5
        ENDDO
 30     FORMAT(2X,F12.5,2X,F12.5,2X,F12.5)
        STOP
        END
        

            