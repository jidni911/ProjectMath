dimension A(3,4)
data A/1,2,4,2,3,3,1,4,2,8,20,16/
do i = 1,3
  do j=1,3
    if(i.eq.j) then
      p=a(i,i)
      do m =1,4
        a(i,m)=a(i,m)/p
      end do
    endif
    if(i.ne.j)then
      p=A(j,i)/A(i,i)
      do m =1,4
        a(j,m)=a(j,m)-p*a(i,m)
      end do
    end if
    print 10,((a(ii,jj),jj=1,4),ii=1,3)
10  format(4f10.1)
    print*,""
  end do
end do
print*,'x=',a(1,4)
print*,'y=',a(2,4)
print*,'z=',a(3,4)
end
