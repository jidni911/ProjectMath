                    f(x)=x**3-6*x+4.0
                    df(x)=3*x**2-6.0
                    s=0.1e-4
                    n=1
                    write(*,55)
 55                   format(//2x,'Please enter the initial roots :'//)
12                    read*,x0
                    if(df(x0).eq.0.0) goto 12
18                   print*,n,x0
                    x1=x0-f(x0)/df(X0)
                    if(abs(x0-x1).lt.s) goto 15
                    n=n+1
                    x0=x1
                    goto 18
15                write(6,50)x1
50                 format(//4x,'The root of give equation is = 0',f6.5)
                    stop
                    end
