     PARAMETER (N=6)
     REAL X(N),Y(N),D(N,N)
     DATA X/0.0,0.2,0.4,0.6,0.8,1.0/
     DATA Y/0.0,0.0547,0.1173,0.2160,0.2987,0.3333/
     DO I=1,N
       D(I,1)=Y(I)
       ENDDO
     DO J=2,N
       DO I=1,N
         IF(I.LT.N-J+2)THEN
           D(I,J)=D(I+1,J-1)-D(I,J-1)
           ELSE
             D(I,J)=0.0
           ENDIF
       ENDDO
     ENDDO
10   PRINT*,"ENTER THE VALUE OF X"  
     READ*,XX
     U=(XX-X(1))/0.2
     YX=Y(1)
     P=1.0
     DO I=2,N
       P=P*(U-I+2)/(I-1)
       YX=YX+P*D(1,I)
       ENDDO
     PRINT 40,XX,YX
40   FORMAT(3X,"y(",F5.3,")=",F9.7)
30     PRINT*,"ONE MORE? 1.YES 2.N0"
     READ*,NJ
     IF(NJ-2) 10,20,30
20     END
       