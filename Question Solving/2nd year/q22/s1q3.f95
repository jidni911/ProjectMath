!==Lagrange interpolation
!==0-4 point
parameter(n=4)
real x(0:4),y(0:4)
f(x)=sin(alog(x))
data x/1.0,1.3,1.5,1.9,2.2/
do i = 0,n
  y(i)=f(x(i))
enddo
xx = 1.1
!==time to apply formula
!==first multiply, then add
yy=0
do i=0,n
  p=1.0
  do j=0,n
    if(i.ne.j)then
	  p=p*(xx-x(j))/(x(i)-x(j))
    endif
  enddo
  yy=yy+p*y(i)
enddo
print*,yy
print*,f(xx)
print*,yy-f(xx)
end