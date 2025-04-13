   INTEGER LCD,L(20),MHCF,HCF,PROD,LC(20)
   PRINT*,"N, ENTER HOW MANY NUMBERS"
   READ*, N
   PRINT*,"ENTER ALL NUMBERS"
   READ(5,*)(L(1),I=1,N)
   DO I=1,N
     LC(I)=L(I)
     ENDDO
     LCM=L(1)
     DO I=2,N
       PROD=LCM*L(I)
       LCM=PROD/MHCF(L(I-1),L(I))
       L(I)=PROD/LCM
       ENDDO
       HCF=L(N)
       LCM=LC(1)
       DO J=2,N
         PROD=LCM*LC(J)
         LCM=PROD/MHCF(LC(J-1),LC(J))
         LC(J)=LCM
         ENDDO
         PRINT*,"HCF=",HCF
         PRINT*,"LCM=",LCM
         END