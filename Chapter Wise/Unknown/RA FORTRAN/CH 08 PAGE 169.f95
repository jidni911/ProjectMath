      T=500.0
      A=0.0
      PRINT*,"YEAR  AMOUNT "
      WRITE(*,*)
      DO 15 N=1,10
      P=0.0
      DO K=12,1,-1
        P=P+T+T*REAL(K)*0.1/12.0
        ENDDO
        A=A+P+A*0.1
        WRITE(6,20)N,A
  20      FORMAT(2X,I4,2X,F10.3)
  15      CONTINUE
        STOP
        END
