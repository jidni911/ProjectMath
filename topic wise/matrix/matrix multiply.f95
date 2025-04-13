            PARAMETER(N=3)
            DIMENSION A(N,N),B(N,N),C(N,N)
            DATA A/1,2,-1,0,2,3,1,3,1/
            DATA B/2,0,-2,1,1,3,3,1,1/
            WRITE(*,*)"MATRIX C=AB" 
            DO I=1,N
            DO J=1,N
             C(I,J)=0
             DO K=1,N
               C(I,J)=C(I,J)+A(I,K)*B(K,J)
             ENDDO
            ENDDO
            ENDDO
            WRITE(6,10)((C(I,J),J=1,N),I=1,N)
   10       FORMAT(1X,3(I4,2X))
            STOP
            END
