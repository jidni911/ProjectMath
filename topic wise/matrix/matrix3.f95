program matrix3
    Integer A(3,3),A2(3,3),AT(3,3),ATA(3,3),C(3,3),D(3,3),Id(3,3)
    !matrx columnwise
    data A/0,-5,4,5,0,-3,-4,3,0/
    do i=1,3
      do j=1,3
        !Making A transpose
        AT(j,i)=A(i,j)
        !Making Identity
        If(i.eq.j)then
          Id(i,j)=1
        else
          Id(i,j)=0
        endif
      enddo
    enddo
    do i=1,3
      do j=1,3
        !Calculating transpose(A) * A as ATA and square(A) As A2
        ATA(i,j)=0
        A2(i,j)=0
        do k=1,3
          ATA(i,j)=ATA(i,j)+AT(i,k)*A(k,j)
          A2(i,j)=A2(i,j)+A(i,k)*A(k,j)
        enddo
      enddo
    enddo
    do i=1,3
      do j=1,3
        !Calculating C = A2 + A and D = A2 * A
        C(i,j)=A2(i,j)+A(i,j)
        D(i,j)=0
        do k=1,3
          D(i,j)=D(i,j)+A2(i,k)*A(k,j)
        enddo
      enddo
    enddo
    !For symmetric testing
    iTesting = 0
    !For anti-symmetric Testing
    iTesting2 = 0
    !For orthogonal testing
    iTesting3 = 0
    do i=1,3
      do j=1,3
        if(AT(j,i).ne.A(i,j))iTesting=1
        if(-AT(j,i).ne.A(i,j))iTesting2=1
        if(ATA(i,j).ne.Id(i,j))iTesting3=1
      enddo
    enddo
    if(iTesting.eq.0)then
      Print*,"A is symmetric"
    else 
      Print*,"A is not symmetric"
    endif
    if(iTesting2.eq.0)then
      Print*,"A is anti-symmetric"
    else 
      Print*,"A is not anti-symmetric"
    endif
    if(iTesting3.eq.0)then
      Print*,"A is Orthogonal"
    else 
      Print*,"A is not Orthogonal"
    endif
    print*,"C="
    print 10,((C(i,j),j=1,3),i=1,3)
    print*,""
     print*,"D="
    print 10,((D(i,j),j=1,3),i=1,3)
 10 format(3i5)
    end