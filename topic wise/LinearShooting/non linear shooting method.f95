!Non-linear shooting with newton's method
!y''=f(x,y,y'), a<=x<=b, y(a) = alpha and y(b) = beta
!inputs
!endpoints a,b
!boundary conditions alpha,beta
!number of subintervals N>=2; TOL; maximum number of iterations M
	dimension w1(26),w2(26)
    f(x,y,z)=(32+2*x**3-y*z)/8
    fy(x,y,z)=-z/8
    fyp(x,y,z)=-y/8
    print*,'this is the nonlinear shooting method.'
    print*,'input left and right endpoints seperated by blank'
    read*,a,b
    print*,'input y(',a,')'
    read*,alpha
    print*,'input y(',b,')'
    read*,beta
12  print*,'input an integer>1 for the number'
    print*,'of subintervals'
    read*,n
    print*,'input tolerance'
    read*,tol
    print*,'input maximum number of iterations'
    read*,m
    print*,'non-linear shooting method'
    h=(b-a)/n
    k=1
    tk=(beta-alpha)/(b-a)
100 if(k.gt.m) goto 200
    w1(1)=alpha
    w2(1)=tk
    u1=0
    u2=1
    do 10 i=1,n
      x=a+(i-1)*h
      t=x+h/2
      xk11=h*w2(i)
      xk12=h*f(x,w1(i),w2(i))
      xk21=h*(w2(i)+xk12/2)
      xk22=h*f(t,w1(i)+xk11/2,w2(i)+xk12/2)
      xk31=h*(w2(i)+xk22/2)
      xk32=h*f(t,w1(i)+xk21/2,w2(i)+xk22/2)
      xk41=h*(w2(i)+xk32)
      xk42=h*f(x+h,w1(i)+xk31,w2(i)+xk32)
      w1(i+1)=w1(i)+(xk11+2*xk21+2*xk31+xk41)/6
      w2(i+1)=w2(i)+(xk12+2*xk22+2*xk32+xk42)/6
      yk11=h*u2
      yk12=h*(fy(x,w1(i),w2(i))*u1+fyp(x,w1(i),w2(i))*u2)
      yk21=h*(u2+yk12/2)
      yk22=h*(fy(t,w1(i),w2(i))*(u1+yk11/2)+fyp(t,w1(i),w2(i))*(u2+yk21/2))
      yk31=h*(u2+yk22/2)
      yk32=h*(fy(t,w1(i),w2(i))*(u1+yk21/2)+fyp(t,w1(i),w2(i))*(u2+yk22/2))
      yk41=h*(u2+yk32)
      yk42=h*(fy(x+h,w1(i),w2(i))*(u1+yk31)+fyp(x+h,w1(i),w2(i))*(u2+yk32))
      u1=u1+(yk11+2*yk21+2*yk31+yk41)/6
      u2=u2+(yk21+2*yk22+2*yk32+yk42)/6
10    continue
	  if(abs(w1(n+1)-beta).le.tol)then
      print 2,k
      print 1,a,w1(1),w2(1)
      do 20 i=1,n
        j=i+1
        x=a+i*h
20       print 1,x,w1(j),w2(j)
		stop
        end if
        tk = tk-(w1(n+1)-beta)/u1
        k=k+1
        go to 100
200     print 3,m
1       format(1x,3(f10.6,3x))
2       format(1x,'Order of output -x(i),w1(i),w2(i)',1x,i3,1x,'iterations')
3       format(1x,'Method failed after iteraton no.',i4)
		end
