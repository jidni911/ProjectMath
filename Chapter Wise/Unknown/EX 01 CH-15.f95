       WRITE(*,*)"ENTER A,B,C"
       READ(*,*)A,B,C
       D=B**2-4.0*A*C
       IF(D.GT.0.0)THEN
         ROOT1=(-B/(2.0*A))+(SQRT(D))/(2.0*A)
         ROOT2=(-B/(2.0*A))-(SQRT(D))/(2.0*A)
         WRITE(*,*)ROOT1,ROOT2
         ELSE IF(D.EQ.0.0)THEN
           ROOT1=-B/2.0*A
           ROOT2=ROOT1
           WRITE(*,*)ROOT1,ROOT2
           ELSE
           ROOT1=(-B/(2.0*A))+(SQRT(-D))/(2.0*A)
           ROOT2=(-B/(2.0*A))-(SQRT(-D))/(2.0*A)
           A1=(ROOT1+ROOT2)/2.0
           B1=(ROOT1-ROOT2)/2.0
           WRITE(*,*)"REAL PART= ",A1,"COMPLEX PART= ",B1
           ENDIF
           STOP
           END


