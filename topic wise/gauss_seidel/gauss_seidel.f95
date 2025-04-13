           PARAMETER(K=11)
        DIMENSION X(0:K),Y(0:K),Z(0:K)
        N=0
        Y(0)=0.0
        Z(0)=0.0
        X(0)=(20.0+3.0*Y(0)-2.0*Z(0))/8.0
        WRITE(*,25)
25      FORMAT(3X,"ITERATION",4X,"X(N)",8X,"Y(N)",7X,"Z(N)",/,2X,45('-'))
        DO N=1,K
          X(N)=(20.0+3.0*Y(N-1)-2.0*Z(N-1))/8.0
          Y(N)=(33.0-4.0*X(N)+Z(N-1))/11.0
          Z(N)=(35.0-6.0*X(N)-3.0*Y(N))/12.0
        WRITE(*,12),N,X(N),Y(N),Z(N)
12      FORMAT(I5,4X(3F12.6))
        ENDDO
        WRITE(*,50)X(k),Y(K),Z(k)
50      FORMAT(2x,//"The answer is ",//,2x,"X=",f8.3,/,2x,"Y=",f8.3,/,2x,"Z=",f8.3)
        STOP
        END
