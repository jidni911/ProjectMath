      DIMENSION A(10,11),X(10)
      WRITE(*,*)"ENTER THE DIMENSION OF THE SYSTEM"
      READ(*,*)N
      WRITE(*,*)"ENTER THE ELEMENTS OF THE SYSTEM (ROW-WISE)"
      DO I=1,N
        READ(*,*)(A(I,J),J=1,N+1)
        ENDDO
        DO 10 K=1,N-1
          PIVOT=A(K,K)
          DO 20 I=K+1,N
            FACTOR=A(I,K)/PIVOT
            DO 30 J=1,N+1
              A(I,J)=A(I,J)+FACTOR*A(K,J)
  30            CONTINUE
  20            CONTINUE
  10            CONTINUE
                X(N)=A(N,N+1)/A(N,N)
                DO 40 K=N-1,1,-1
                  SUM=0
                  DO 50 J=K+1,N
                    SUM=SUM+A(K,J)*X(J)
  50                  CONTINUE
                    X(K)=(A(K,N+1)-SUM)/A(K,K)
  40                  CONTINUE
                    WRITE(*,*)"The solution is: "
                    PRINT*,"X= ",X(1)
                    PRINT*,"Y= ",X(2)
                    PRINT*,"Z= ",X(3)
                    STOP
                    END
      