
        DIMENSION R1(4),R2(4),R3(4)
        DATA R1/1.0,1.0,2.0,4.0/
        DATA R2/3.0,1.0,-3.0,-4.0/
        DATA R3/2.0,-3.0,-5.0,-5.0/

        A=R1(1)
        B=R2(1)
        C=R3(1)
        PRINT 22,R1,R2,R3
22      FORMAT(2X,4F8.1)
        DO  I=1,4
          R1(I)=R1(I)/A
          R2(I)=R2(I)-B*R1(I)
          R3(I)=R3(I)-C*R1(I)
        ENDDO
          A=R1(2)
          B=R2(2)
          C=R3(2)
        DO  I=2,4
          R2(I)=R2(I)/B
          R1(I)=R1(I)-A*R2(I)
          R3(I)=R3(I)-C*R2(I)
        ENDDO
         A=R1(3)
         B=R2(3)
         C=R3(3)
        DO  I=3,4
          R3(I)=R3(I)/C
          R1(I)=R1(I)-A*R3(I)
          R2(I)=R2(I)-B*R3(I)
        ENDDO
        PRINT 11, R1(4),R2(4),R3(4)
11      FORMAT(/,"The answer is  ",//,'X=',F9.3,2X,//,'Y=',F9.3,2X,//,'Z=',F9.3)
        STOP
        END
