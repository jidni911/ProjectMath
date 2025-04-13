      INTEGER YEAR
      PRINT*,"      YEAR        AMOUNT"
      AMOUNT=1000.0
      DO 99 YEAR=1,20
        AMOUNT=AMOUNT*(1.0+0.07)
        WRITE(6,20)YEAR,AMOUNT
  20      FORMAT(1X,I10,3X,F15.2)
  99      CONTINUE
        STOP
        END        