                    F(X)=1/(1+X)
                    A=0
                    B=1
                    N=6
                    H=(B-A)/FLOAT(N)
                    EXACT=2.0
                    SUM=3*H*(F(A)+F(B))/10
                    DO 19 I=1,5
                              GOTO(1,2,3,2,1),I
1                              SUM=SUM+15*H*F(A+FLOAT(I)*H)/10.0
                              GOTO 19
 2                             SUM=SUM+3*H*F(A+FLOAT(I)*H)/10.0
                                GOTO 19
 3                               SUM=SUM+18*H*F(A+FLOAT(I)*H)/10.0
                                GOTO 19

19                 CONTINUE
                WRITE(*,90)SUM,EXACT
90               FORMAT(/,5X,"WEDDLE",7X,"EXACT",/,3X,30('='),/,2X,F12.8,2X,F12.8)
                                STOP
                                END
