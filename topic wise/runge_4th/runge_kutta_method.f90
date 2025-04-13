            real function f(p,q)
            f=3.0*p+q**2
            return
            end
            external f
            real k1,k2,k3,k4,k
            print*,"Enter the initial value x0: "
            read*,x0
            print*,"Enter the end values x1 :"
            read*,x1
            print*,"Enter the initial value y0: "
            read*,y0
            print*,"Step length "
            read*,h
            write(*,10)
10          format(13x,"X",20x,"Y",//13x,40('='))
15          write(*,12)x0,y0
12          format(10x,f10.6,10x,f10.6)
            k1=h*f(x0,y0)
            k2=h*f((x0+h/2.0),(y0+k1/2))
            k3=h*f((x0+h/2),(y0+k2/2))
            k4=h*f((x0+h),(y0+k3))
            k=(k1+2*k2+2*k3+k4)/6
            x0=x0+h
            y0=y0+k
            if(x0.le.x1) goto 15
            stop
            end
