      INTEGER YEAR
      ACNT=1567
      PRINT*,"ACCOUNT NO=",ACNT
      PRINT*,"      YEAR          AMOUNT"
      AMOUNT=12000.0
      DO 99 YEAR=1,10
        AMOUNT=AMOUNT*(1.0+0.05)
        WRITE(6,20)YEAR,AMOUNT
  20      FORMAT(1X,I10,3X,F20.2)
  99      CONTINUE
        STOP
        END
      