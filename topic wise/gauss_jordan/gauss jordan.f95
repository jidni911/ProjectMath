DIMENSION A(3,4)
DATA A/1,1,1,3,4,3,8,3,4,4,-2,1/
DO I=1,3
  DO J=1,3
    IF (I.EQ.J)THEN
      P=A(I,I)
    DO M=1,4
    A(I,M)=A(I,M)/P
    END DO
  ENDIF
  IF (I.NE.J)THEN
    P=A(J,I)/A(I,I)
    DO M=1,4
    A(J,M)=A(J,M)-P*A(I,M)
    END DO
    ENDIF
    END DO
    END DO
    PRINT*,'X=',A(1,4)
    PRINT*,'Y=',A(2,4)
    PRINT*,'Z',A(3,4)
    STOP
    END