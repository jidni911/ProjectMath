
         COMMON/BLOCK1/A(101),B(101),C(101),D(101),L
         COMMON/BLOCK2/U(0:101)
         REAL dt,dd
         DATA T,X1,X2,dd/0.0,0.0,1.0,1.0/
         P(T)=0.0
         Q(T)=0.0
         F(X)=100.0*SIN(PI*X)
         E(X,T)=100.0*EXP(-PI*PI*T)*SIN(PI*X)
         PRINT*,'ENTER TMAX, NO OF X-INTERVALS AND TIME STEP'
         READ*,TMAX,N,dt
         H=(X2-X1)/real(N)
         R=(dd*dt)/(H*H)
         PI=4.0*ATAN(1.0)
         !SET INITIAL CONDITION
         DO I=0,N
           X=X1+I*H
           U(I)=100.0*SIN(PI*X)!F(X)
         ENDDO
         !DEFINE TRIDIAGONAL LINEAR SYSTEM
         L=N-1
   15    DO I=1,L
         A(I)=-R
         B(I)=1.0+2.0*R
         C(I)=-R
         D(I)=U(I)-2.0*U(I)+U(I+1)
         ENDDO
         !CALL TRIDIAGONAL LINEAR EQUATION SOLVER
         CALL TRIDI
         !WRITE SOLUTION AT TIME T+K INTO THE U-ARRAY
         T=T+dt
         DO I=1,N-1
           U(I)=D(I)
          ENDDO
          U(0)=P(T)
          U(N)=Q(T)
          !IF T IS LESS THAN TMAX,TAKE A TIME STEP
          IF (ABS(TMAX-T).GT.dt/2.0)GOTO 15
            !OTHERWISE,PRINT RESULT
            DO I=0,N
           X=X1+I*H
           EXACT=100.0*EXP(-PI*PI*T)*SIN(PI*X)!E(X,T)
           ER=ABS(EXACT-U(I))
           WRITE(6,130)X,U(I),EXACT,ER
           ENDDO
   130     FORMAT(3x,F4.2,2x,3(F13.8,2x))
           STOP
           END
           !===============SUBROUTINE===============
           SUBROUTINE TRIDI
           COMMON/BLOCK1/A(101),B(101),C(101),D(101),L
           DO I=2,L
           RT=-A(I)/B(I-1)
           B(I)=B(I)+RT*C(I-1)
           D(I)=D(I)+RT*D(I-1)
           ENDDO
           !BACK SUBSTITUTION AND STORE THE SOLUTION IN D-ARRAY
           D(L)=D(L)/B(L)
           DO I=L-1,1,-1
           D(I)=(D(I)-C(I)*D(I+1))/B(I)
           ENDDO
           RETURN
           END

