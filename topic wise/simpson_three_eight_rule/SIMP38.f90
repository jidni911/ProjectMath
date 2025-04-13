DIMENSION Y(0:500)
F(X)=EXP(-X/2.0)
PRINT*,"ENTER THE LOWER LIMIT"
READ*,A
PRINT*,"ENTER THE LOWER LIMIT"
READ*,B
PRINT*,"ENTER THE NUMBER OF INTERVALS"
READ*,N
H=(B-A)/REAL(N)
DO 1=0,N
    Y(I)=F(A)
    A=A+H
ENDDO
P=Y(0)+Y(N)
S1=0.0
DO J=1,N-1,3
  S1=S1+Y(J)+Y(J+1)
ENDDO
DO K=3,N-3,3
    S2=S2+Y(K)
    ENDDO
SUM=(3.0*H)*(P+3.0*S1+2.0*S2)/8.0
PRINT*,SUM
STOP
END
