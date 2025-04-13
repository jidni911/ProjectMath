
      DO 100 K=1,25
        READ(5,10)ID
   10     FORMAT(I6)
        SUM=0
        DO 200 I=1,3
          READ*, SCORE
          SUM=SUM+SCORE
   200       CONTINUE
          AVE=REAL(SUM)/3.0
          WRITE(6,20)ID,AVE
   20       FORMAT(2X,I6,3X,F10.2)
   100       CONTINUE
          STOP
          END