    INTEGER A(3,3),X0(1,3),AT(3,3),AX0(1,3),ATX0(1,3)
    DATA A/4,2,1,0,3,0,1,2,4/
    DATA X0/1,1,1/

    DO J=1,3
      AX0(1,J)=0
      DO K=1,3
        AX0(1,J)=AX0(1,J)+A(J,K)*X0(K,1)
      ENDDO
    ENDDO
    WRITE(*,*)(AX0(1,J),J=1,3)
    
    DO I=1,3
      DO J=1,3
        AT(I,J)=A(J,I)
      ENDDO
    ENDDO
    DO J=1,3
      ATX0(1,J)=0
      DO K=1,3
        ATX0(1,J)=ATX0(1,J)+AT(J,K)*X0(K,1)
      ENDDO
    ENDDO
    WRITE(*,*)(ATX0(1,J),J=1,3)
    DO J=1,3
    IF(AX0(1,J).NE.ATX0(1,J))PRINT*,"NA"
    ENDDO
    END