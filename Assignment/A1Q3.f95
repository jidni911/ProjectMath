     DIMENSION A(3,3),AT(3,3),AAT(3,3)
     DATA A/1,3,6,-3,-5,-6,3,3,4/
     
     DO I=1,3
       DO J=1,3
         AT(I,J)=A(J,I)
       ENDDO
     ENDDO
     WRITE(*,10)((AT(I,J),J=1,3),I=1,3)
10   FORMAT(1X,3(F6.2,2X)/)
     
     DO I=1,3
     DO J=1,3
       AAT(I,J)=0.0
       DO K=1,3
       AAT(I,J)=AAT(I,J)+A(I,K)*A(K,J)
       ENDDO
     ENDDO
     ENDDO
     WRITE(*,10)((AAT(I,J),J=1,3),I=1,3)
     END