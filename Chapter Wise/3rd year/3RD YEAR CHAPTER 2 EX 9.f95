       PROGRAM PIECEWISE
       REAL X,FX
       PRINT*,"X    FX" 
       X=-10.0
15     IF(X.LT.0.0)THEN
         FX=1.0+X/SQRT(1.0+X**2)
         ENDIF
         IF(X.EQ.0.0)THEN
           FX=0.0
           ENDIF
         IF(X.GT.0.0)THEN
           FX=1.0+X/SQRT(1.0+X**2)
           ENDIF
       WRITE(6,20)X,FX
       X=X+0.5
       IF(X.LE.10.0)GOTO 15
20      FORMAT(3X,2F10.3)
       END
           