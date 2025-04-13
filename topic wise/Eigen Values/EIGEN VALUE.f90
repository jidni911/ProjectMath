PROGRAM POWER
    DIMENSION A(3,3),V(3,1),C(3,1)
    DATA A/1,1,0,6,2,0,1,0,3/
    DATA V/1,0,0/
30  print*,"current v"
    DO I=1,3
        WRITE(6,11)V(I,1)
11      FORMAT(3X,F12.4/)
    ENDDO
    DO I=1,3
        DO J=1,1
        C(I,J)=0.0
            DO K=1,3
                C(I,J)=C(I,J)+A(I,K)*V(K,J)
            ENDDO
        ENDDO
    ENDDO
    PRINT*,"PRODUCT OF A & V "
    DO I=1,3
        WRITE(6,11)C(I,1)
    ENDDO
    print*,"lambda is ",c(1,1)
    IF (ABS(V(2,1)-C(2,1)/C(1,1))<0.00001)GOTO 40
    DO I=1,3
        DO J=1,1
            V(I,J)=C(I,J)/C(1,1)
        ENDDO
    ENDDO
    GOTO 30
40  print*,"Final eigen vector"
    DO I=1,3
        WRITE(6,11)V(I,1)
    ENDDO
    PRINT 50,C(1,1)
50  FORMAT(3X,"LARGEST EIGEN VLUE",F12.4/)
END PROGRAM
