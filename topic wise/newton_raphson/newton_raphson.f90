
         f(x)=x**3-x-1.0
        df(x)=3.0*x**2-1.0
        print*,"Enter the initial value : "
        read*,x0
        n=0
        q=0.0001
        print*,"iteration           X(N)"
10      n=n+1
        y=f(x0)/df(x0)
        x0=x0-y
        write(*,20),n,x0
20      format(5x,i2,10x,f8.6)
        if(abs(y).gt.q) goto 10
        write(*,30)x0
30      format(1x,30('=')//1x,"Hence one of the real root is = ",f8.6)
        stop
        end

