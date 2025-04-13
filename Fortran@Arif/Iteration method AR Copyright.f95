      f(x)=x**3-2.0*x-5.0
      print*,"Enter the initial value:"
      read*,x0
      n=0
      tol=0.00001
      print*,"iteration     x(N)"
 40     n=n+1
      x1=(2*x0+5.0)**(1.0/3.0)
      if(abs(x1-x0).lt.tol)goto 10
        write(*,20)n,x0
 20       format(5X,i5,10X,f8.4)
      x0=x1
      goto 40
 10     write(*,30)x0
 30   format(5X,"Hence one of the real root is=",f8.5)
      stop
      end
