    PROGRAM LAGRANGE
    REAL X(4),Y(4)
    DATA X/300.0,304.0,305.0,307.0/
    DATA Y/2.4771,2.4829,2.4843,2.4871/
    X0=301
    Y0=0.0
    DO J=1,4
      P=1.0
      DO 10 K=1,4
        IF(J.EQ.K)GOTO 10
        P=P*(X0-X(K))/(X(J)-X(K))
10    CONTINUE
      Y0=Y0+P*Y(J)
    ENDDO
    WRITE(6,20)X0,Y0
20  FORMAT(3X,"AT X=",F6.1,3X,"VALUE OF Y=",F8.4)
    END PROGRAM                              
                  
                   