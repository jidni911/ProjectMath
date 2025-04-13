!Solve the boundary value problem
!-y''+p(x)y'+q(x)y+r(x)=0, a<=x<=b, y(a) = alpha, y(b) = beta
!endpoints a,b
!boundary conditions alpha,beta
!number of subintervals N
	dimension u(2,25),v(2,25)
    p(x) = -2/x
    q(x) = 2/x**2
    r(x) = sin(alog(x))/x**2
    print*,'This is the Linear Shooting Method'
    print*,'Input Left and Right endpoints seperated by a blank'
    read*,a,b
    print*,'Input y(',a,')'
    read*,alpha
    print*,'Input y(',b,')'
    read*,beta
    print*,'Input a positive integer for the number'
    print*,'of subintervals'
    read*,n
    h=(b-a)/n
    u1=alpha
    u2=0.0
    v1=0.0
    v2=1.0
    do 10 i=1,n
      x=a+(i-1)*h
    t=x+h/2
    xk11=h*u2
    xk12=h*(p(x)*u2+q(x)*u1+r(x))
    xk21=h*(u2+xk12/2)
    xk22=h*(p(t)*(u2+xk12/2)+q(t)*(u1+xk11/2)+r(t))
    xk31=h*(u2+xk22/2)
    xk32=h*(p(t)*(u2+xk22/2)+q(t)*(u1+xk21/2)+r(t))
    xk41=h*(u2+xk32)
    xk42=h*(p(x+h)*(u2+xk32)+q(x+h)*(u1+xk31)+r(x+h))
    u1=u1+(xk11+2*xk21+2*xk31+xk41)/6
    u2=u2+(xk12+2*xk22+2*xk32+xk42)/6
    xk11=h*v2
    xk12=h*(p(x)*v2+q(x)*v1)
    xk21=h*(v2+xk12/2)
    xk22=h*(p(t)*(v2+xk12/2)+q(t)*(v1+xk11/2))
    xk31=h*(v2+xk22/2)
    xk32=h*(p(t)*(v2+xk22/2)+q(t)*(v1+xk21/2))
    xk41=h*(v2+xk32)
    xk42=h*(p(x+h)*(v2+xk32)+q(x+h)*(v1+xk31))
    v1=v1+(xk11+2*xk21+2*xk31+xk41)/6
    v2=v2+(xk12+2*xk22+2*xk32+xk42)/6
    u(1,i)=u1
    u(2,i)=u2
    v(1,i)=v1
    v(2,i)=v2
10  continue
    write(6,1)
    w1=alpha
    z=(beta-u(1,n))/v(1,n)
    x=a
    i=0
    print 2,i,x,w1,z
    do 20 i=1,n
      x=a+i*h
      w1=u(1,i)+z*v(1,i)
      w2=u(2,i)+z*v(2,i)
20  print 2,i,x,w1,w2
1   format(1x,'Output:i,x(i),w(1,i),w(2,i)',/)
2   format(1x,i2,3(3x,f10.6))
    end
