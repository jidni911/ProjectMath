
            PARAMETER (M=3,N=3,L=2)
            DIMENSION A(M,N),B(N,L),C(M,L)
            WRITE(*,50)
 50           FORMAT(//1X,'ENTER A MATRIX VALUE ='/)
            READ*,((A(I,J),J=1,N),I=1,M)
                        WRITE(*,60)
 60           FORMAT(//1X,'ENTER B MATRIX VALUE ='/)
        READ*,((B(I,J),J=1,L),I=1,N)
            DO 5 I=1,M
            DO 5 J=1,L
                SUM=0.0
                DO 7 K=1,N
7                    SUM=SUM+A(I,K)*B(K,J)
                    C(I,J)=SUM
5                    CONTINUE
                    WRITE(*,55),((C(I,J),J=1,L),I=1,M)
55                     FORMAT(//2X,'THE PRODUCT OF A*B = ',//3(2X,F8.2)/)
                STOP
                END


