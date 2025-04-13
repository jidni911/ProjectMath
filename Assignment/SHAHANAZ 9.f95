    PROGRAM SUMMATION
    INTEGER FACT 
    PRINT*,"ENTER X"
    READ(*,*)X
    SUM=0.0
    DO I=0,10,2
      FACT=1
      DO J=1,I
        FACT=FACT*J
        ENDDO
      SUM=SUM+X**I/REAL(FACT)
      ENDDO
    WRITE(*,*)SUM
    STOP
    END  