   DO M=1900,2100
    IF(MOD(M,100).EQ.0)THEN
    IF(MOD(M,400).EQ.0)THEN
      PRINT*,M,"IS LEAP YEAR"
      ELSE
        PRINT*,M,"IS NOT LEAP YEAR"
        ENDIF
        ELSE
          IF(MOD(M,4).EQ.0)THEN
            PRINT*,M,"IS LEAP YEAR"
            ELSE
              PRINT*,YEAR,"IS NOT LEAP YEAR"
              ENDIF
              ENDIF
              ENDDO
              STOP
              END