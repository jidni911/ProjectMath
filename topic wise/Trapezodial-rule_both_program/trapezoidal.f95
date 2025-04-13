      REAL FUNCTION F(X)
      F=1/(1+X)
      END
      EXTERNAL F
      PRINT *,'ENTER THE LOWER LIMIT'
      READ*,A
      PRINT*,'ENTER THE UPPER LIMIT'
      READ*,B
      PRINT*,'ENTER THE NUMBER OF SERIES'
      READ*,N
      H=(B-A)/N
      P=F(A)+F(B)
      DO 10 I=1,N-1
      P=P+F(A+I*H)
   10 CONTINUE
      S=H*P
      WRITE(1*,20)S
   20 FORMAT(1X,'INTEGRAL VALUE IS =,'F12.8)
      STOP
      END

