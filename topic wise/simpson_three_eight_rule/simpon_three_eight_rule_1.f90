    f(x)=1/(1+x)
    print*,"Enter the lower limit ."
    read*,a
    print*,"Enter the upper limit ."
    read*,b
    print*,"Enter the number of intervals limit ."
    read*,n
    h=(b-a)/real(n)
    p=f(a)+f(b)
    p1=0
    p2=0
    i=1
10  if(mod(i,3).ne.0)then
        p1=p1+3*f(a+i*h)
    else
        p2=p2+2*f(a+i*h)
    endif
    i=i+1
    if(i.le.(n-1)) goto 10
    sum=((3*h)/8)*(p+p1+p2)
    write(*,8)sum
8   format(//2x,"The result is = ",f12.3,".")
    stop
    end
