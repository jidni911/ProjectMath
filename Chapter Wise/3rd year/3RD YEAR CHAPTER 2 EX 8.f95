       PROGRAM PIECEWISE
       REAL X,FX
       PRINT*,"X    FX" 
       X=-10.0
15     IF(X.LT.0.0)THEN
        FX=1.0-X**2
         ENDIF
       IF((X.LT.0.0).AND.(X.LT.1.0))THEN
         FX=1.0+2.0*X
         ENDIF
         IF(X.GT.1.0)THEN
           FX=3.0+(1.0/X)
           ENDIF
       WRITE(6,20)X,FX
       X=X+5.0
       IF(X.LT.10.0)GOTO 15
20      FORMAT(3X,2F10.3)
       END
           