!==PROGRAM TO FIND THE SUM OF A SERIES USING WHILE STATEMENT
      PROGRAM SERIES
      INTEGER::I,SUM
      SUM=0
      I=3
      DO
        SUM=SUM+I
        I=I+2
        IF(I>99)EXIT
      ENDDO
      PRINT*,"3+5+.....+99=",SUM
      END PROGRAM

