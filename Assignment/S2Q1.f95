    FUNCTION FACT(N)
    FACT=1
    DO I=1,N
      FACT=FACT*I
    ENDDO
    RETURN
    END
      
    GAMMA(N)=FACT(N-1)
    PRINT*,GAMMA(12)
    END