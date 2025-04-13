

   PROGRAM LAGRANGE
   REAL X(0:3),F(0:3)
   DATA X/1.0,4.0,9.0,16.0/
   DATA F/101.0,102.0,103.0,104.0/
   DO K=2,4
     Y=6.0
     S=0.0
     DO I=0,K-1
       P=1.0
       DO 10 J=0,K-1
       IF(I.EQ.J) GOTO 10
         P=P*(Y-X(J))/(X(I)-X(J))
 10 CONTINUE
    S=S+P*F(I)
    ENDDO
    WRITE(6,20)K
 20 FORMAT(3X,"FOR",I3,"-POINT FORMULA")
    WRITE(6,30)Y,S
 30 FORMAT(3X,"x=",F6.1,3X,"f(x)",F10.4)
    ENDDO
    END PROGRAM
