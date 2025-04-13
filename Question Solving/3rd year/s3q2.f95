	parameter(n=50)
    dimension f(n)
    f(1)=0.0
    f(2)=1.0
    do i=3,n
      f(i)=f(i-1)+f(i-2)
    enddo
    write(*,10)f
10  format(3x,6(f12.0,",",2x))
    end
      