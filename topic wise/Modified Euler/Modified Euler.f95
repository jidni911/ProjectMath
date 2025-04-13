!== modified euler
    f(x,y)=1+x*y
    parameter(n=30)
    dimension y(0:n)
    x0=0.0
    y(0)=2.0
    x1=0.3
    h=(x1-x0)/float(n)
    do i=1,n
      y(i)=y(i-1)+h*f(x0+h*(i-1),y(i-1))
    enddo
    print*,y
    do k=1,5
    do j=1,n
    y(j)=y(j-1)+h/2.0*(f(x0+h*(j-1),y(j-1))+f(x0+h*j,y(j)))
    enddo
    print*,y
    enddo
    end