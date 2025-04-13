    REAL I
    P=100000
    N=12
    R=0.08

    DO K=1,N
      I=P*K*R
      WRITE(*,10)K,P+I
10    FORMAT("AT YEAR NUMBER",I2,", THE AMOUNT IS TAKA ",F10.2)
    ENDDO

    DO K=1,N
      S=P*(1+R)**K
      WRITE(*,10)K,S
    ENDDO

    PRINT*,"THE DIFFERENCE IS=",S-P
    END