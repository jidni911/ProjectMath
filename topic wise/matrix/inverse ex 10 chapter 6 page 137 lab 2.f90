    PROGRAM INVERSE
    PARAMETER (M=3,N=6)
    DIMENSION A(M,N),B(M,M)

    DATA B/1,2,4,2,1,-2,-3,0,5/
    PRINT*,"MATRIX A"
    PRINT 20,((B(I,J),J=1,M),I=1,M)
20  FORMAT(3X,3F8.2/)

    DO I=1,M
        DO J=1,M
            IF(J.LE.M)THEN
                A(I,J)=B(I,J)
            ELSE
                IF(I.EQ.J+M)THEN
                    A(I,J)=1.0
                ELSE
                    A(I,J)=0.0
                END IF
            END IF
        END DO
    END DO
    PRINT*,"      AUGMENTED MATRIX"

    PRINT 10,((A(I,J),J=1,N),I=1,M)
10  FORMAT(3X,6F8.2/)
    END PROGRAM
