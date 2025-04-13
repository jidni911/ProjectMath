    f(x)=1/(1+x)
    print*,"Enter the lower limit ."
    read*,a
    print*,"Enter the upper limit ."
    read*,b
    print*,"Enter the number of intervals limit ."
    read*,n
    h=(b-a)/n
    p=(f(a)+f(b))
    m=4
    do 10 i=1,n-1
      x=a+i*h
      p=p+m*f(x)
      m=6-m
      print*,x,p
10  continue
    sum=h/3*p
    write(*,8)sum
8   format(/1x,"The result is = ",f12.8)
    stop
    end
