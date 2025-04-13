      INTEGER X,Y,R,YY,C
      PRINT*,"INPUT THE VALUE OF R SQURE"
      READ(*,*)R2
      R=SQRT(R2)
      C=0
      DO 11 X=-R,R
        YY=SQRT(R2-FLOAT(X**2))
        DO Y=-YY,YY
          C=C+1
          ENDDO
  11        CONTINUE
       PRINT*,"NUMBER OF INTEGER INSIDE CIRCLE",C
       END