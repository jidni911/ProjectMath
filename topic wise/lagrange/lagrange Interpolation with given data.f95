      REAL X(0:3),F(0:3)
      DATA X/150.0,152.0,154.0,156.0/
      DATA F/12.247,12.329,12.410,12.490/
      DO K=1,4
        Y=SQRT(155.0)
        S=0.0
        DO I=0,K-1
          P=1.0
          DO 10 J=0,K-1
            IF(I.EQ.J)GOTO 10
              P=P*(Y-X(J))/(X(I)-X(J))
10              CONTINUE
              S=S+P*F(I)
              ENDDO
              WRITE(6,20)K
20              FORMAT(3X,"FOR ",I3,"-POINT FORMULA")
              WRITE(6,30)Y,S
30              FORMAT(3X,"X=",F6.1,3X,"F(X)=",F12.8)
              ENDDO
              STOP
              END
              
        