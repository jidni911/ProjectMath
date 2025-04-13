PROGRAM FIXEDPOINT
    IMPLICIT NONE
    INTEGER::N
    REAL*8::X_OLD,X_NEW,F,EPSILON
    EPSILON=0.1
    WRITE(*,*)'ENTER INITIAL GUESS:'
    READ(*,*)X_OLD

    DO N=1,100
        F=COS(X_OLD)-3.0*X_OLD+1.0
        X_NEW=X_OLD+EPSILON*F
        WRITE(*,'(I4,F12.6)')N,ABS(X_NEW-X_OLD)
        IF(ABS(X_NEW-X_OLD).LT.0.0001)THEN
            WRITE(*,'(/A,F12.7,A,F12.9)')'ROOT IS X=',X_NEW,',FUNCTION VALUE F=',F
            STOP
        END IF
        X_OLD=X_NEW
    END DO
    WRITE(*,'(A)')'NO CONVERGENCE'
    STOP
END PROGRAM

