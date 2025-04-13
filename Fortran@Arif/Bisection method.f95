      F(X)=X**2-X-1.0
      TOL=0.00001
      PRINT*,"Enter x0 and xn"
 10     	READ*,X0,XN
 20       IF(F(X0)*F(XN).LT.0.0)THEN
          C=(XN+X0)/2
          ELSE
            WRITE(*,*)"Change for another x0 & xn"
            GOTO 10
            ENDIF
            IF(F(X0)*F(C).LT.0.0)THEN
              XN=C
              ELSE
                X0=C
                ENDIF
                IF(ABS(XN-X0).GT.TOL)GOTO 20
                  PRINT*,"THE ROOT IS ",C
                  END
