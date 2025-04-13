DIMENSION A(3,6)
DATA A/1,2,4,2,1,-2,-3,0,5,1,0,0,0,1,0,0,0,1/
DO I=1,3
  DO J=1,3
    IF (I.EQ.J)THEN
      P=A(I,I)
      DO M=1,6
        A(I,M)=A(I,M)/P
      END DO
    ENDIF
    IF (I.NE.J)THEN
      P=A(J,I)/A(I,I)
      DO M=1,6
        A(J,M)=A(J,M)-P*A(I,M)
      END DO
    ENDIF
    print 20, ((a(ii,jj),jj=1,6),ii=1,3)
    print*,""
  END DO
END DO
print 10, ((a(i,j),j=4,6),i=1,3)
10  format(3f10.2) 
20  format(6f10.2) 

END