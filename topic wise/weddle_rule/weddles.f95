     F(X)=1/(1+X)
     PRINT*,"ENTER VALUE OF A"
     READ*,A
     PRINT*,"ENTER VALUE OF B"
     READ*,B
     PRINT*,"ENTER VALUE OF N"
     READ*,N
     H=(B-A)/FLOAT(N)
     SUM=F(A)+F(B)
     DO I=1,N-1,6
       SUM=SUM+5.0*(F(A+FLOAT(I)*H)+F(A+FLOAT(I+4)*H))
     ENDDO
     DO J=2,N-1,6
       SUM=SUM+F(A+FLOAT(J)*H)+F(A+FLOAT(J+2)*H)
     ENDDO
     DO K=3,N-1,6
       SUM=SUM+6.0*F(A+FLOAT(K)*H)
     ENDDO
     DO L=6,N-1,6
       SUM=SUM+2.0*F(A+FLOAT(L)*H)
     ENDDO
     WEEDLE=SUM*H*3.0/10.0
     WRITE(*,9)WEEDLE
9    FORMAT(//,5X,"THE ANSWER IS =",F12.5)
     STOP
     END
