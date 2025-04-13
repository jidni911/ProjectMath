   PROGRAM LAGRANGE
   DIMENSION X(7),Y(7)
   DATA X/1.0,3.0,4.0,4.5,5.0,7.0,9.0/
   DATA Y/1.0,9.0,16.0,20.25,25.0,49.0,81.0/
   X0=4.6
   Y0=0.0
   DO J=1,5
     P=1.0
     DO 10 K=1,5
       IF(J.EQ.K) GOTO 10
         P=P*(X0-X(K))/(X(J)-X(K))
 10 CONTINUE 
    Y0=Y0+P*Y(J)
    ENDDO
    WRITE(6,20)X0,Y0
 20 FORMAT(3X,"AT x=",F4.1,3X,"value OF y="F8.4)
    END PROGRAM            