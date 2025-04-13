      REAL NUMERIC,MIDPOINTRULE
      EXACT=0.31606
      A=0.0
      B=1.0
      WRITE(6,*)"N     Midpoint Rule     Exact "
      NX=1
      DO I=1,10
        NUMERIC=MIDPOINTRULE(A,B,NX)
        WRITE(6,*)NX,NUMERIC,EXACT
        NX=2*NX
        ENDDO
        STOP
        END
        FUNCTION F(X)
        F=X*EXP(-X**2)
        RETURN
        END
        REAL FUNCTION MIDPOINTRULE(A,B,NX)
        H=(B-A)/FLOAT(NX)
        SUM=0.0
        DO I=0,NX-1
          XA=A+(FLOAT(I)+0.5)*H
          FA=F(XA)
          SUM=SUM+FA
          ENDDO
          SUM=SUM*H
          MIDPOINTRULE=SUM
          RETURN
          END