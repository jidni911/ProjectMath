     PROGRAM RK4
     INTEGER ITER
     ITER=0
     WRITE(*,*)"ENTER INITIAL VALUES OF X0,Y0 AND EXPECTED FUNCTION VALUE AT X1"
     READ(*,*)X0,Y0,X1
     WRITE(*,*)"ENTER THE NUMBER OF SUNINTERVALS"
     READ(*,*)N
     H=(X1-X0)/REAL(N)
     WRITE(*,30)
30   FORMAT(8X,"X",5X,"F(X)")
     WRITE(*,40)X0,Y0
40   FORMAT(1X,F10.4,F10.4)
50   S1=F(X0,Y0)
     S2=F(X0+H/2,Y0+S1*H/2)
     S3=F(X0+H/2,Y0+S2*H/2)
     S4=F(X0+H,Y0+S3*H)
     Y1=Y0+(S1+2*S2+2*S3+S4)*H/6
     X1=X0+H
     WRITE(*,40)X1,Y1
     ITER=ITER+1
     IF(ITER.LT.N)THEN
       X0=X1
       Y0=Y1
       GOTO 50
       ENDIF
     WRITE(*,60)X1,Y1
60   FORMAT(1X,"THE VALUE AT",F10.4,"IS :",F10.4)
     STOP
     END
     FUNCTION F(X,Y)
     F=X*Y+Y**2
     RETURN
     END