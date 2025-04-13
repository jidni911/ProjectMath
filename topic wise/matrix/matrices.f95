program matrix
    real A(3,3), A2(3,3),AT(3,3),I(3,3),ATA(3,3)
    data a/2,-1,1,-2,3,-2,-4,4,3/
    do ii=1,3
      do j=1,3
        A2(ii,j)=A(ii,1)*A(1,j)+A(ii,2)*A(2,j)+A(ii,3)*A(3,j)
        AT(ii,j)=A(j,ii)
        if(ii.eq.j)then
          I(ii,j)=1.0
        else
          i(ii,j)=0.0
        endif
      enddo
    enddo
    do ii=1,3
      do j=1,3
        ATA(ii,j)=AT(ii,1)*A(1,j)+AT(ii,2)*A(2,j)+AT(ii,3)*A(3,j)
      enddo
    enddo
    its=0
    its2=0
    its3=0
    do ii=1,3
      do j=1,3
        if(A2(ii,j).ne.A(ii,j))its=1
        if(ATA(ii,j).ne.I(ii,j))its2=1
        if(A2(ii,j).ne.I(ii,j))its3=1
      enddo
    enddo
    if(its.eq.0)then
      Print*,"A is Idempotent"
    else
      Print*,"A is not Idempotent"
    endif
    if(its2.eq.0)then
      Print*,"A is Orthogonal"
    else
      Print*,"A is not Orthogonal"
    endif
    if(its3.eq.0)then
      Print*,"A is Involuntory"
    else
      Print*,"A is not Involuntory"
    endif
    
    end
    
    
    