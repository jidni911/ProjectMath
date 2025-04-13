!==Assignment from ayub sir 2
     PROGRAM GAUSSJORDAN
     PARAMETER(N=3)
     DIMENSION A(N,N+1)
     PRINT*,"ENTER COEFFICIENT: 1ST,2ND COLUMN AND SO ON"
     READ(*,*)((A(I,J),J=1,N+1),I=1,N)
     DO 13 I=1,N
     DO 12 J=1,N
       IF(I.NE.J)THEN
       T=A(J,I)/A(I,I)
       DO K=1,N+1
         A(J,K)=A(J,K)-A(I,K)*T
       ENDDO
       ENDIF
12   CONTINUE
13   CONTINUE
     PRINT 20,((A(I,J),J=1,N+1),I=1,N)
20   FORMAT(3X,4F12.7)
     PRINT 30,(I,A(I,N+1)/A(I,I),I=1,N)
30   FORMAT(3X,"X(",I3,")=",F12.7)
     END PROGRAM