       INTEGER YEAR
       TK=12000.0
       YEAR=1
       ACNT=1567
       PRINT*,"ACCONT NO = ",ACNT
       PRINT*,"  YEAR         AMOUNT"
  20     TK=TK+TK*0.05+12000.0
         WRITE(6,*)YEAR,TK
       YEAR=YEAR+1
       IF(YEAR.LE.10)GOTO 20

       END
