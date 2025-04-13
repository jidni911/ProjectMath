      REAL A,W,X0,Y0,PI
      WRITE(*,*)"ENTER CENTER OF THE SEARCH CIRCLE X0 AND Y0"
      READ*,X0,Y0
      WRITE(*,*)"ENTER RADIUS OF CIRCLE AND N0. OF EVALUATION POINTS QUADRANT"
      READ*,W,M
      IF(M>20)M=20
        CALL ROOTNUM(M,NN,A,W,X0,Y0)
        WRITE(*,50)NM
        IF(A.NE.0.0)THEN
          WRITE(*,60)A
          ELSE
            PRINT*,"RESIDUAL: 0"
            ENDIF
            STOP
            SUBROUTINE EVAL(X,Y,U,V)
            REAL X,Y U,V
            U=X**2-Y**2+1.0
            V=2.0*X*Y
            RETURN
            END
            SUBROUTINE ROOTNUM(M,NA,A,X0,Y0)
            INTEGER N(1.0)
            PI=4.0*DATAN(1.0)
            A=PI/(2.0*M)
            DO I=1,4*M
              X=W*DCOS(A*DFLOAT(I-1))+X0
              Y=W*DSIN(A*DFLOAT(I-1))+Y0
              CALL EVAL(X,Y,U,V)
              IF (U>=0)THEN
                IF(V>=0)N(I)=1
                ENDIF
                IF (U<0)THEN
                    IF(V>=0)N(I)=2
                    ENDIF
                      IF (U<0)THEN
                    IF(V<0)N(I)=3
                    ENDIF
                      IF (U>=0)THEN
                    IF(V<0)N(I)=4
                    ENDIF
                    ENDDO
                    NN=N(1);A=0.D0
                    DO I=2,4*M
                    IF(NN.EQ.N(I))GOTO 100
                    IF(NN.EQ.4)
                    IF(N(I).EQ.N(I)+1) A=A-1
                    ENDIF
                    IF(NN.EQ.4) THEN
                     IF(N(I).EQ.1) A=A+1
                     ENDIF
                     IF(NN.EQ.N(I)+1) A=A+1
                     NN=N(I)
                     100 ENDDO
                     IF(NN.NE.4)THEN
                        IF(NN.EQ.N(1)+1)A=A-1
                        ENDIF
                        IF(NN.EQ.1)THEN
                            IF (N(1).EQ.4)A=A-1
                            ENDIF
                            IF(NN.NE.4)THEN
                                IF (N(1).EQ.4)A=A+1
                                ENDIF
                                IF(NN+1.EQ.N(1))A=A+1
                                A=DABS(A)
                                NN=A/4
                                A=A-4.D0*A/4
                                RETURN
                                END
