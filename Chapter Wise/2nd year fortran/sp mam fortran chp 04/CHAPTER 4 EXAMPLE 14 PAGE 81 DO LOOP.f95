!==PROGRAM TO FIND THE SUM OF A SERIES USING DO LOOP
     PROGRAM SERIES
     IMPLICIT NONE
     INTEGER::I,SUM
     SUM=0
     DO I=3,99,2
       SUM=SUM+I
     ENDDO
     PRINT*,"3+5+.....+99=",SUM
     END PROGRAM
 