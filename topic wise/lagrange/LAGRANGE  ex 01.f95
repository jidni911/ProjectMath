    DIMENSION X(20),Y(20)
    PRINT*,"NUMBER OF FUNCTIONS:"
    READ*,N
    PRINT*, "ENTER VALUE OF X & FUNCTIONAL VALUES "
    DO 10 I=1,N
      READ*,X(I),Y(I)
 10     CONTINUE
      PRINT*,"ENTER THE VALUE OF X FOR WHICH FUNCTION VALUE TO BE FOUND:"
      READ*,A
      S=0
      DO 20 I=1,N
        P=1
        DO J=1,N
          IF(I.NE.J)P=P*(A-X(J))/(X(I)-X(J))
            ENDDO
            S=S+P*Y(I)
  20          CONTINUE
            WRITE(*,40) A,S
  40          FORMAT(1X,"THE FUNCTION VALUE AT X= ",F7.2," IS ",F9.3)
            STOP
            END


