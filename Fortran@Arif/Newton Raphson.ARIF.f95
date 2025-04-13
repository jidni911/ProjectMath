       f(x)=x**3-3*x-5.0
       df(x)=3*x**2-3.0
       print*,"Enter the initial value:"
       read*,x0
       n=0
       tol=0.000001
       print*,"iteration        x(N)"
 10      n=n+1
       y=f(x0)/df(x0)
       x0=x0-y
       write(*,20)n,x0
 20    format(5X,i5,10X,f8.5)
       if(abs(y).gt.tol)goto 10
       write(*,30)x0
 30    format(5X,"Hence one of the real root is=",f8.5)
       stop
       end