     COMPLEX F, ROOTI,Z,DZ,SUMX,SUMC,SUMT
     DATA RADIUS,NX/3.0,1000/
     F(Z)=1/((Z**2+1.0)*(Z**2+4.0))
     PI=4.0*ATAN(1.0)
     ROOTI=CMPLX(0.0,1.0)
     THETAI=0.0
     THETAF=PI
     DTHETA=(THETAF-THETAI)/FLOAT(NX)
     X0=-RADIUS
     XF=RADIUS
     H=(XF-X0)/FLOAT(NX)
     SUMX=0.0
     PRINT*,"RADIUS,NX=",RADIUS,NX
     DO I=1,NX
        XI=0.0
       X=XI+H*FLOAT(I)
       Z=X
       DX=0.0
       DZ=DX
       SUMX=SUMX+(DZ/2.0)*(F(Z)+F(Z-DZ))
       ENDDO
       SUMC=0.0
       DO 12 I=1,NX
         THETA=THETAI+DTHETA*FLOAT(I)
         Z=RADIUS*EXP(ROOTI*THETA)
         DZ=RADIUS*EXP(ROOTI*THETA)*ROOTI*DTHETA
         SUMC=SUMC+(DZ/2.0)*(F(Z)+F(Z-DZ))
  12       CONTINUE
         SUMT=(1.0/2.0)*(SUMX+SUMC)
         PRINT 13,PI/12.0,REAL(SUMT),AIMAG(SUMT)
  13       FORMAT("PI/12.0,REAL,AIMAG=",3(3X,E12.5))
         STOP
         END
