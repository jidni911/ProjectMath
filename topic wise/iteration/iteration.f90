        f(x)=x**3-x-1
        toll=0.00001
        print*,"Enter the initial value"
        read*,x0
        n=0
        print*,"iteration           X(N)"
10      n=n+1
        x1=(x0+1.0)**(1.0/3.0)
        if(abs(x1-x0).le.toll) goto 20
        x0=x1
        write(*,30),n,x0
30      format(5x,i2,10x,f8.5)
        goto 10
20      write(*,9)x1
9       format(1x,30('=')//1x,"Hence one of the real root is = ",f8.5)
        stop
        end

