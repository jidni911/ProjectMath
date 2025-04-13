        f(x)=x**3-x-1
10      print*,"Enter the left end point : "
        read*,a
        print*,"Enter the right end point : "
        read*,b
        if(f(a)*f(b).ge.0) goto 10
        write(*,12)
12      format("Iter",5x,"A",8x,"B",9x,"C",10x,"F(C)",/,50('='))
        n=1
        q=0.0001
        h=f(a)
20      c=(a+b)/2
        g=f(c)
        write(*,8)n,a,b,c,g
8       format(1x,i2,3x,f5.3,3x,f8.6,3x,f8.6,3x,f8.6)
        if(h*g.le.0) then
                b=c
                else
                    a=c
                    h=g
                    endif
                    if(abs(g).le.q) goto 40
                    n=n+1
                    goto 20
40                write(*,50)c
50                format(/1x,"One of the root is = ",f8.6)
        stop
        end
