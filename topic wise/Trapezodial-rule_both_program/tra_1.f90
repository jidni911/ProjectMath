        f(x)=1/(1+x)
        print*,"Enter the lower limit ."
        read*,a
        print*,"Enter the upper limit ."
        read*,b
        print*,"Enter the number of intervals limit ."
        read*,n
        h=(b-a)/real(n)
        p=(f(a)+f(b))/2
        do 100 i=1,n-1
            p=p+f(a+i*h)
            continue
100            sum=h*p
            write(*,8)sum
8        format(//1x,"The result is = ",f12.4,".")
        stop
        end
