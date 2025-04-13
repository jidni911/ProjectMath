    FUNCTION FACT(N)
    FACT=1
    DO I=1,N
      FACT=FACT*I
    ENDDO
    RETURN
      
    
    PRINT*, FACT(11)
    END