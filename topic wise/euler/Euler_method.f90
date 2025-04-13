        real function f(p,q)
        f=pq
        return
        end
        external f
        print*,"x0"
        read*,x0
        print*,"y0"
        read*,y0
        print*,"xn"
        read*,xn
        print*,"Step length"
        read*,h
        n=((xn-x0)/h)+1
        write(*,5)
5       format(5x,"Iterations",15x,"X",18x,"Y",//1x,60('=')/)
        do 10 k=1,n
            y1=y0+h*f(x0,y0)
            y0=y1
            x0=x0+h
            write(*,8)k,x0,y0
8           format(5x,i5,15x,2f8.6)
10      continue
        stop
        end
